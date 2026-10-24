# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Polish.Variant326f7dde4d3a5e3c31c40e138b71407b413575fb35748466d01fcb95756c3a9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26ba18397eff1c3a59f405db87f5f36188640aeb` · SHA-256 `734bc1c44795eb1baa30213f99d4fdd57fdddbbb331a918a34a06566483b6f35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrefixLukasiewiczSymbol.Variantf7a324a2cb688549b0860b4b0fa863983195adddd1df5e07ba72316750f9057b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7a324a2cb688549b0860b4b0fa863983195adddd1df5e07ba72316750f9057b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PrefixLukasiewiczSymbol.Variantf7a324a2cb688549b0860b4b0fa863983195adddd1df5e07ba72316750f9057b","mathematical_subject":"Computation.DataStructures","original_sha256":"f7a324a2cb688549b0860b4b0fa863983195adddd1df5e07ba72316750f9057b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/Polish.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Tree


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrefixLukasiewiczSymbol.Variantf7a324a2cb688549b0860b4b0fa863983195adddd1df5e07ba72316750f9057b

namespace Boolean

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
def Tree.toStrictPolish : Tree α → List (Prefix.StrictToken α)
  | .var a => [.atom a]
  | .falsum => [.zero]
  | .truth => [.one]
  | .neg p => .op .N :: Tree.toStrictPolish p
  | .conj p q =>
      .op .K :: (Tree.toStrictPolish p ++ Tree.toStrictPolish q)
  | .disj p q =>
      .op .A :: (Tree.toStrictPolish p ++ Tree.toStrictPolish q)
  | .impl p q =>
      .op .C :: (Tree.toStrictPolish p ++ Tree.toStrictPolish q)
  | .eqv p q =>
      .op .E :: (Tree.toStrictPolish p ++ Tree.toStrictPolish q)
  | .nand p q =>
      .op .D :: (Tree.toStrictPolish p ++ Tree.toStrictPolish q)

/--
Fuel-bounded parser for strict Polish notation.

The fuel prevents non-termination on malformed streams. Use `fromStrictPolish?`
for the public parser.
-/
def Tree.parseStrictPolishFuel :
    Nat →
    List (Prefix.StrictToken α) →
    Option (Tree α × List (Prefix.StrictToken α))
  | 0, _ => none
  | _ + 1, [] => none
  | _ + 1, .atom a :: rest => some (.var a, rest)
  | _ + 1, .zero :: rest => some (.falsum, rest)
  | _ + 1, .one :: rest => some (.truth, rest)
  | fuel + 1, .op .N :: rest => do
      let (p, rest') ← Tree.parseStrictPolishFuel fuel rest
      some (.neg p, rest')
  | fuel + 1, .op .K :: rest => do
      let (p, rest₁) ← Tree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← Tree.parseStrictPolishFuel fuel rest₁
      some (.conj p q, rest₂)
  | fuel + 1, .op .A :: rest => do
      let (p, rest₁) ← Tree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← Tree.parseStrictPolishFuel fuel rest₁
      some (.disj p q, rest₂)
  | fuel + 1, .op .C :: rest => do
      let (p, rest₁) ← Tree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← Tree.parseStrictPolishFuel fuel rest₁
      some (.impl p q, rest₂)
  | fuel + 1, .op .E :: rest => do
      let (p, rest₁) ← Tree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← Tree.parseStrictPolishFuel fuel rest₁
      some (.eqv p q, rest₂)
  | fuel + 1, .op .D :: rest => do
      let (p, rest₁) ← Tree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← Tree.parseStrictPolishFuel fuel rest₁
      some (.nand p q, rest₂)

/--
Parse a complete strict Polish token stream.

Returns `none` if the stream is malformed or has trailing tokens.
-/
def Tree.fromStrictPolish?
    (tokens : List (Prefix.StrictToken α)) :
    Option (Tree α) :=
  match Tree.parseStrictPolishFuel (tokens.length + 1) tokens with
  | some (p, []) => some p
  | _ => none

end Boolean
```
