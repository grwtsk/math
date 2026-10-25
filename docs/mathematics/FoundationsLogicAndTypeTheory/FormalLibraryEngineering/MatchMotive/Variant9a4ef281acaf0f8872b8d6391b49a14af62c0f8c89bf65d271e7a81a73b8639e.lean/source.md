# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchMotive.Variant9a4ef281acaf0f8872b8d6391b49a14af62c0f8c89bf65d271e7a81a73b8639e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `300a23b43daae2462c2b443e9d631d4062c3f2b5` · SHA-256 `2c7c5b6b919f5953455d46674ae78b110f2f1354a6b6355334f84bb86db7479f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProvePositive.Variantfa9b12b46691c48cdacfedfdb9d4505859eb88cc7b71d49b169a4011c8309e5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa9b12b46691c48cdacfedfdb9d4505859eb88cc7b71d49b169a4011c8309e5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ProvePositive.Variantfa9b12b46691c48cdacfedfdb9d4505859eb88cc7b71d49b169a4011c8309e5c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fa9b12b46691c48cdacfedfdb9d4505859eb88cc7b71d49b169a4011c8309e5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/QqTest/matchMotive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Qq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProvePositive.Variantfa9b12b46691c48cdacfedfdb9d4505859eb88cc7b71d49b169a4011c8309e5c

open Qq Lean

open Elab Term in
elab tk:"showTerm" t:term : term <= expectedType => do
  let t' ← withSynthesize do elabTerm t expectedType
  logAt tk t' (severity := MessageSeverity.information)
  return t'

/--
info: failed to pretty print expression (use 'set_option pp.rawOnError true' for raw representation)
-/
#guard_msgs in
def provePositive (n : Q(Nat)) : MetaM Q(0 < $n) :=
  showTerm match n with
    | ~q($m + 1) => pure q(Nat.lt_of_le_of_lt (Nat.zero_le _) (Nat.lt_succ_self _))
    | ~q(1 + $m) => pure q(by
        show 0 < 1 + $m
        rw [Nat.add_comm]
        exact Nat.lt_of_le_of_lt (Nat.zero_le _) (Nat.lt_succ_self _))
    | _ => throwError "cannot prove positive: {n}"

/--
info: (((((Expr.const `Nat.lt_of_le_of_lt []).app
                  ((((Expr.const `OfNat.ofNat [Level.zero]).app (Expr.const `Nat [])).app
                        (Expr.lit (Literal.natVal 0))).app
                    ((Expr.const `instOfNatNat []).app (Expr.lit (Literal.natVal 0))))).app
              ((((Expr.const `OfNat.ofNat [Level.zero]).app (Expr.const `Nat [])).app
                    (Expr.lit (Literal.natVal 41))).app
                ((Expr.const `instOfNatNat []).app (Expr.lit (Literal.natVal 41))))).app
          ((((Expr.const `OfNat.ofNat [Level.zero]).app (Expr.const `Nat [])).app (Expr.lit (Literal.natVal 42))).app
            ((Expr.const `instOfNatNat []).app (Expr.lit (Literal.natVal 42))))).app
      ((Expr.const `Nat.zero_le []).app
        ((((Expr.const `OfNat.ofNat [Level.zero]).app (Expr.const `Nat [])).app (Expr.lit (Literal.natVal 41))).app
          ((Expr.const `instOfNatNat []).app (Expr.lit (Literal.natVal 41)))))).app
  ((Expr.const `Nat.lt_succ_self []).app
    ((((Expr.const `OfNat.ofNat [Level.zero]).app (Expr.const `Nat [])).app (Expr.lit (Literal.natVal 41))).app
      ((Expr.const `instOfNatNat []).app (Expr.lit (Literal.natVal 41)))))
-/
#guard_msgs in
#eval provePositive q(42) >>= fun proof => pure proof <* proof.check
```
