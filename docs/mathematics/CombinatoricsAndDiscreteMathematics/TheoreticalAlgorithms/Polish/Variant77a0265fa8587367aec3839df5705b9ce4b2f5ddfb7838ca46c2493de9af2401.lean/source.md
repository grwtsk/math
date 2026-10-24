# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Polish.Variant77a0265fa8587367aec3839df5705b9ce4b2f5ddfb7838ca46c2493de9af2401

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba616b567391633b8fc5f575af3a8e5e02657f7c` · SHA-256 `6f8da493f6e837719eda804e592dababfedd41093dc18f5378cea6bd184e3041`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrefixLukasiewiczSymbol.Variant8766cf9ce5d5b6f5590ac3323d0db0494d1900ba6822b419663c26fa7b761a01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8766cf9ce5d5b6f5590ac3323d0db0494d1900ba6822b419663c26fa7b761a01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PrefixLukasiewiczSymbol.Variant8766cf9ce5d5b6f5590ac3323d0db0494d1900ba6822b419663c26fa7b761a01","mathematical_subject":"Computation.DataStructures","original_sha256":"8766cf9ce5d5b6f5590ac3323d0db0494d1900ba6822b419663c26fa7b761a01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Syntax/Polish.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Syntax.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrefixLukasiewiczSymbol.Variant8766cf9ce5d5b6f5590ac3323d0db0494d1900ba6822b419663c26fa7b761a01

namespace Surface.Boolean

universe u

/--
Łukasiewicz-style operator symbols for strict Polish notation.

`N` is unary. All other operators here are binary.
-/
inductive Prefix.LukasiewiczSymbol where
  | N
  | K
  | A
  | C
  | E
  | D
deriving Repr, DecidableEq

/-- Operator arity in strict Polish notation. -/
def Prefix.LukasiewiczSymbol.arity : Prefix.LukasiewiczSymbol → Nat
  | .N => 1
  | .K => 2
  | .A => 2
  | .C => 2
  | .E => 2
  | .D => 2

/-- Printable prefix code for each Łukasiewicz-style operator. -/
def Prefix.LukasiewiczSymbol.code : Prefix.LukasiewiczSymbol → String
  | .N => "N"
  | .K => "K"
  | .A => "A"
  | .C => "C"
  | .E => "E"
  | .D => "D"

/-- Human-readable meaning of each operator symbol. -/
def Prefix.LukasiewiczSymbol.meaning : Prefix.LukasiewiczSymbol → String
  | .N => "negation / NOT"
  | .K => "conjunction / AND"
  | .A => "disjunction / OR"
  | .C => "condition / implication"
  | .E => "equivalence"
  | .D => "NAND"

/-- The Łukasiewicz symbol map. -/
def Prefix.LukasiewiczSymbol.symbolMap :
    List (Prefix.LukasiewiczSymbol × String × Nat × String) :=
  [ (.N, "N p = ¬p", 1, "negation / NOT")
  , (.K, "K p q = p ∧ q", 2, "conjunction / AND")
  , (.A, "A p q = p ∨ q", 2, "disjunction / OR")
  , (.C, "C p q = p → q", 2, "condition / implication")
  , (.E, "E p q = p ↔ q", 2, "equivalence")
  , (.D, "D p q = ¬(p ∧ q)", 2, "NAND")
  ]

/--
A strict Polish token.

No parentheses are needed: operator arity determines exactly how many later
tokens are consumed as children.
-/
inductive Prefix.StrictToken (α : Type u) : Type u where
  | op : Prefix.LukasiewiczSymbol → Prefix.StrictToken α
  | atom : α → Prefix.StrictToken α
  | zero : Prefix.StrictToken α
  | one : Prefix.StrictToken α
deriving Repr, DecidableEq

/--
Strict binary Polish serialization.

This preserves exact compiler-chosen tree shape.
-/
def FormulaTree.toStrictPolish : FormulaTree α → List (Prefix.StrictToken α)
  | .var a => [.atom a]
  | .falsum => [.zero]
  | .truth => [.one]
  | .neg p => .op .N :: FormulaTree.toStrictPolish p
  | .conj p q =>
      .op .K :: (FormulaTree.toStrictPolish p ++ FormulaTree.toStrictPolish q)
  | .disj p q =>
      .op .A :: (FormulaTree.toStrictPolish p ++ FormulaTree.toStrictPolish q)
  | .impl p q =>
      .op .C :: (FormulaTree.toStrictPolish p ++ FormulaTree.toStrictPolish q)
  | .eqv p q =>
      .op .E :: (FormulaTree.toStrictPolish p ++ FormulaTree.toStrictPolish q)
  | .nand p q =>
      .op .D :: (FormulaTree.toStrictPolish p ++ FormulaTree.toStrictPolish q)

/--
Fuel-bounded parser for strict Polish notation.

The fuel prevents non-termination on malformed streams. Use `fromStrictPolish?`
for the public parser.
-/
def FormulaTree.parseStrictPolishFuel :
    Nat →
    List (Prefix.StrictToken α) →
    Option (FormulaTree α × List (Prefix.StrictToken α))
  | 0, _ => none
  | _ + 1, [] => none
  | _ + 1, .atom a :: rest => some (.var a, rest)
  | _ + 1, .zero :: rest => some (.falsum, rest)
  | _ + 1, .one :: rest => some (.truth, rest)
  | fuel + 1, .op .N :: rest => do
      let (p, rest') ← FormulaTree.parseStrictPolishFuel fuel rest
      some (.neg p, rest')
  | fuel + 1, .op .K :: rest => do
      let (p, rest₁) ← FormulaTree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← FormulaTree.parseStrictPolishFuel fuel rest₁
      some (.conj p q, rest₂)
  | fuel + 1, .op .A :: rest => do
      let (p, rest₁) ← FormulaTree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← FormulaTree.parseStrictPolishFuel fuel rest₁
      some (.disj p q, rest₂)
  | fuel + 1, .op .C :: rest => do
      let (p, rest₁) ← FormulaTree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← FormulaTree.parseStrictPolishFuel fuel rest₁
      some (.impl p q, rest₂)
  | fuel + 1, .op .E :: rest => do
      let (p, rest₁) ← FormulaTree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← FormulaTree.parseStrictPolishFuel fuel rest₁
      some (.eqv p q, rest₂)
  | fuel + 1, .op .D :: rest => do
      let (p, rest₁) ← FormulaTree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← FormulaTree.parseStrictPolishFuel fuel rest₁
      some (.nand p q, rest₂)

/--
Parse a complete strict Polish token stream.

Returns `none` if the stream is malformed or has trailing tokens.
-/
def FormulaTree.fromStrictPolish?
    (tokens : List (Prefix.StrictToken α)) :
    Option (FormulaTree α) :=
  match FormulaTree.parseStrictPolishFuel (tokens.length + 1) tokens with
  | some (p, []) => some p
  | _ => none

end Surface.Boolean
```
