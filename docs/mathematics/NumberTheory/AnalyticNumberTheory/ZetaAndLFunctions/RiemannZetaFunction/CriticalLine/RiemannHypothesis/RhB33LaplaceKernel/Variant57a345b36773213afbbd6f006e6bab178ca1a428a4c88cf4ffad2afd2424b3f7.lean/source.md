# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RhB33LaplaceKernel.Variant57a345b36773213afbbd6f006e6bab178ca1a428a4c88cf4ffad2afd2424b3f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00f7261beaf3a6055b67ccf81ed42a9310ccdfeb` · SHA-256 `fb7420dd7d7d5c48a1421a73a817a47f84fbd53de994c31602c9b3ef6d45aa07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Kernel.Variant2d94ff9c405b6d365a81dfc1c3e765585bc905c4d8271d184414d69492ab94ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d94ff9c405b6d365a81dfc1c3e765585bc905c4d8271d184414d69492ab94ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Kernel.Variant2d94ff9c405b6d365a81dfc1c3e765585bc905c4d8271d184414d69492ab94ac","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2d94ff9c405b6d365a81dfc1c3e765585bc905c4d8271d184414d69492ab94ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/tests/rh_b3_3_laplace_kernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Laplace.Kernel


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Kernel.Variant2d94ff9c405b6d365a81dfc1c3e765585bc905c4d8271d184414d69492ab94ac

#print axioms FormalResearch.RiemannHypothesis.Laplace.Kernel.j_integral_obligation
#print axioms FormalResearch.RiemannHypothesis.Laplace.Kernel.j_regular_part_obligation
#print axioms FormalResearch.RiemannHypothesis.Laplace.Kernel.J_cleared_tendsto
#print axioms FormalResearch.RiemannHypothesis.Laplace.Kernel.kernel_checkpoint

example :
    FormalResearch.RiemannHypothesis.Laplace.Algebra.JIntegralObligation :=
  FormalResearch.RiemannHypothesis.Laplace.Kernel.j_integral_obligation

example :
    FormalResearch.RiemannHypothesis.Laplace.Algebra.JRegularPartObligation :=
  FormalResearch.RiemannHypothesis.Laplace.Kernel.j_regular_part_obligation

example :
    FormalResearch.RiemannHypothesis.Laplace.Algebra.KernelCheckpoint :=
  FormalResearch.RiemannHypothesis.Laplace.Kernel.kernel_checkpoint
```
