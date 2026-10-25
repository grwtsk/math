# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetterApp.Variant4c68dac46050a6397bb8cf24e417f225ab7f254ac7c4335862715e3c2201635b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afb8f267d3661cd6b376a0c38ed338407519d6e1` · SHA-256 `b05359574afe41fe7ac92a9902eecc6283ec1c7d19e6e8ba63a3c3a299a2f22c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetterApp.Variante0de5ee46a79c6087fcbf708de1e276b593e08cf6d5675ef2cf25cd235598b58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0de5ee46a79c6087fcbf708de1e276b593e08cf6d5675ef2cf25cd235598b58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BetterApp.Variante0de5ee46a79c6087fcbf708de1e276b593e08cf6d5675ef2cf25cd235598b58","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e0de5ee46a79c6087fcbf708de1e276b593e08cf6d5675ef2cf25cd235598b58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/QqTest/betterApp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Qq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetterApp.Variante0de5ee46a79c6087fcbf708de1e276b593e08cf6d5675ef2cf25cd235598b58

open Qq

-- set_option trace.compiler.ir.result true in

-- Note: `betterApp` actually has two additional parameters
-- `{u v : Lean.Level}` auto-generated due to option
-- `autoBoundImplicitLocal`.

def betterApp {α : Q(Sort $u)} {β : Q($α → Sort $v)}
    (f : Q((a : $α) → $β a)) (a : Q($α)) : Q($β $a) :=
  q($f $a)

/--
info: (Lean.Expr.const `Int.toNat []).app
  ((((Lean.Expr.const `OfNat.ofNat [Lean.Level.zero]).app (Lean.Expr.const `Int [])).app
        (Lean.Expr.lit (Lean.Literal.natVal 42))).app
    ((Lean.Expr.const `instOfNat []).app (Lean.Expr.lit (Lean.Literal.natVal 42))))
-/
#guard_msgs in
#eval betterApp q(Int.toNat) q(42)
/--
info: betterApp q(fun a => ⟨a, ⋯⟩) q(42) : Q(Fin (42 + 1))
-/
#guard_msgs in
#check betterApp (β := q(fun n : Nat => Fin (n+1))) q(fun a => ⟨a, Nat.lt_succ_self _⟩) q(42)
```
