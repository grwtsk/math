# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CountableShadowTowerExamples.Variant91b233d992e42e8af4891ea438a18c7a8bdc0a27b80f8696252c5e83685f5f9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `426eb5724eccbcdb046e0d93690b338e1a77cac4` · SHA-256 `4cd20df6f68dcbb7550d183d5d18498323a9f282dc534171d4c7432dfc25191f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CountableShadowTower.Variant1a112db2e9e05571abd085dcb8e3ce2311b5d3a39cd9ef0e1e5ddfce3425db93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a112db2e9e05571abd085dcb8e3ce2311b5d3a39cd9ef0e1e5ddfce3425db93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CountableShadowTower.Variant1a112db2e9e05571abd085dcb8e3ce2311b5d3a39cd9ef0e1e5ddfce3425db93","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1a112db2e9e05571abd085dcb8e3ce2311b5d3a39cd9ef0e1e5ddfce3425db93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/CountableShadowTowerExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.CountableShadowTower

/-!
# Countable shadow tower examples

Variable-based smoke examples for the Nat-indexed countable shadow tower. These
examples use only supplied finite verifier facts and an explicit analytic bridge;
they do not construct analytic authority from the tower.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CountableShadowTower.Variant1a112db2e9e05571abd085dcb8e3ce2311b5d3a39cd9ef0e1e5ddfce3425db93

namespace Boolean
namespace Cube

variable {A : RiemannHypothesisAuthority}
variable {V : RHFiniteShadowVerifier}
variable (T : RHCountableShadowTower A V)

example : ∀ n : Nat, V.accepts (T.shadowAt n) :=
  T.verifiedAt

example : ∀ n : Nat, T.PrefixVerified n :=
  T.prefixVerified

variable (B : RHCountableTowerAnalyticBridge A V T)

example
    (hExhaust : B.finiteShadowExhaustionSound)
    (hZero : B.zeroLocationOrRealRootSound) :
    A.riemannHypothesis :=
  B.riemannHypothesis hExhaust hZero

end Cube
end Boolean
```
