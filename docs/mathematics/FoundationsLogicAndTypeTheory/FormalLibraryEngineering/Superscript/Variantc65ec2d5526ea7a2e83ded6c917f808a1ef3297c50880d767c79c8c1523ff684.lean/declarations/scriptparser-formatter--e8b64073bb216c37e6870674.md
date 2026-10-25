# scriptParser.formatter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e404da567020ea1620c4bfa5406b4037881289a5cf2863d7e73eb4d34ec32a7",
  "kind": "def",
  "lexical_name": "scriptParser.formatter",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "scriptparser-formatter--e8b64073bb216c37e6870674",
  "source": {
    "blob": "dff7155caf8ce49bc615073aa197eeddbabe3256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variantc65ec2d5526ea7a2e83ded6c917f808a1ef3297c50880d767c79c8c1523ff684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8b64073bb216c37e6870674ffce8ef0f4f44c2c0b31f7999c05bb9489a9888f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variantc65ec2d5526ea7a2e83ded6c917f808a1ef3297c50880d767c79c8c1523ff684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e404da567020ea1620c4bfa5406b4037881289a5cf2863d7e73eb4d34ec32a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def scriptParser.formatter (name : String) (m : Mapping) (k : SyntaxNodeKind) (p : Formatter) :
    Formatter := do
  let stack ← modifyGet fun s => (s.stack, {s with stack := #[]})
  Formatter.node.formatter k p
  let st ← get
  let transformed : Except String _ := st.stack.mapM (·.mapStringsM fun s => do
    let .some s := s.toList.mapM (m.toSpecial.insert ' ' ' ').get? | .error s
    .ok ⟨s⟩)
  match transformed with
  | .error err =>
    -- TODO: this only appears if the caller explicitly calls the pretty-printer
    Lean.logErrorAt (← get).stxTrav.cur s!"Not a {name}: '{err}'"
    set { st with stack := stack ++ st.stack }
  | .ok newStack =>
    set { st with stack := stack ++ newStack }

end Superscript

/--
The parser `superscript(term)` parses a superscript. Basic usage is:
```
local syntax:arg term:max superscript(term) : term
local macro_rules | `($a:term $b:superscript) => `($a ^ $b)
```
Given a notation like this, the expression `2⁶⁴` parses and expands to `2 ^ 64`.

Note that because of Unicode limitations, not many characters can actually be typed inside the
superscript, so this should not be used for complex expressions. Legal superscript characters:
```
⁰¹²³⁴⁵⁶⁷⁸⁹ᵃᵇᶜᵈᵉᶠᵍʰⁱʲᵏˡᵐⁿᵒᵖ𐞥ʳˢᵗᵘᵛʷˣʸᶻᴬᴮᴰᴱᴳᴴᴵᴶᴷᴸᴹᴺᴼᴾꟴᴿᵀᵁⱽᵂᵝᵞᵟᵋᶿᶥᶹᵠᵡ⁺⁻⁼⁽⁾
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variantc65ec2d5526ea7a2e83ded6c917f808a1ef3297c50880d767c79c8c1523ff684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variantc65ec2d5526ea7a2e83ded6c917f808a1ef3297c50880d767c79c8c1523ff684.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dff7155caf8ce49bc615073aa197eeddbabe3256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
