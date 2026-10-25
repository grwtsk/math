# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Doc.Variant403f13d42f538fd8d4c4762e0622e264bb97296a082cb5ef425f6e0c8d8163ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89488ad7b55151a6b0203e16e72fb2096f0b5037` · SHA-256 `403f13d42f538fd8d4c4762e0622e264bb97296a082cb5ef425f6e0c8d8163ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Lean.Parser.Extension

public section

/-! Environment extension to register preferred spellings of notations in identifiers. -/

set_option linter.missingDocs true

namespace Lean.Parser.Term.Doc

/-- Information about how to spell a certain notation for an identifier in declaration names. -/
structure RecommendedSpelling where
  /-- The notation in question. -/
  «notation» : String
  /-- The recommended spelling of the notation in identifiers. -/
  recommendedSpelling : String
  /-- Additional information. -/
  additionalInformation? : Option String

/--
Recommended spellings for notations, stored in a way so that the recommended spellings for a given
declaration are easily accessible.
-/
builtin_initialize recommendedSpellingByNameExt
    : PersistentEnvExtension (Name × Array RecommendedSpelling) (RecommendedSpelling × Array Name)
        (NameMap (Array RecommendedSpelling)) ←
  registerPersistentEnvExtension {
    mkInitial := pure {},
    addImportedFn := fun _ => pure {},
    addEntryFn := fun es (rec, xs) => xs.foldl (init := es) fun es x => es.insert x (es.getD x #[] |>.push rec),
    exportEntriesFn := fun es =>
      es.foldl (fun a src tgt => a.push (src, tgt)) #[] |>.qsort (Name.quickLt ·.1 ·.1)
  }

/-- Recommended spellings for notations, stored in such a way that it is easy to generate a table
containing every recommended spelling exactly once. -/
builtin_initialize recommendedSpellingExt
    : PersistentEnvExtension RecommendedSpelling RecommendedSpelling (Array RecommendedSpelling) ←
  registerPersistentEnvExtension {
    mkInitial := pure {},
    addImportedFn := fun _ => pure {},
    addEntryFn := Array.push,
    exportEntriesFn := id
  }

/-- Adds a recommended spelling to the environment. -/
def addRecommendedSpelling (env : Environment) (rec : RecommendedSpelling) (names : Array Name) : Environment :=
  let env := recommendedSpellingExt.addEntry env rec
  recommendedSpellingByNameExt.addEntry env (rec, names)

/-- Returns the recommended spellings associated with the given declaration name. -/
def getRecommendedSpellingsForName (env : Environment) (declName : Name) :
    Array RecommendedSpelling := Id.run do
  let mut spellings := #[]
  for modArr in recommendedSpellingByNameExt.toEnvExtension.getState env |>.importedEntries do
    if let some (_, strs) := modArr.binSearch (declName, #[]) (Name.quickLt ·.1 ·.1) then
      spellings := spellings ++ strs
  if let some strs := recommendedSpellingByNameExt.getState env |>.find? declName then
    spellings := spellings ++ strs
  return spellings

/-- Renders the recommended spellings for the given declaration into a string for appending to
the docstring. -/
def getRecommendedSpellingString (env : Environment) (declName : Name) : String := Id.run do
  let spellings := getRecommendedSpellingsForName env declName
  if spellings.size == 0 then ""
  else "\n\nConventions for notations in identifiers:\n\n" ++ String.join (spellings.toList.map bullet) |>.trimAsciiEnd |>.copy
where
  indentLine (str : String) : String :=
    (if str.all Char.isWhitespace then str else "   " ++ str) ++ "\n"
  bullet (spelling : RecommendedSpelling) : String :=
    let firstLine := s!" * The recommended spelling of `{spelling.«notation»}` in identifiers is `{spelling.recommendedSpelling}`"
    let additionalInfoLines := spelling.additionalInformation?.map (·.split '\n' |>.toStringList)
    match additionalInfoLines with
    | none | some [] => firstLine ++ ".\n\n"
    | some [l] => firstLine ++ s!" ({l.trimAsciiEnd}).\n\n"
    | some ls => firstLine ++ ".\n\n" ++ String.join (ls.map indentLine) ++ "\n\n"

end Lean.Parser.Term.Doc
```
