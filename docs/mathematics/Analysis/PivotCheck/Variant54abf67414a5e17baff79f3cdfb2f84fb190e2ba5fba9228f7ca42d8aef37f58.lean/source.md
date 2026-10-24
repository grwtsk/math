# Complete source: GRWTSK.Analysis.PivotCheck.Variant54abf67414a5e17baff79f3cdfb2f84fb190e2ba5fba9228f7ca42d8aef37f58

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eff2ad08667e7d29c4e5a01083a152cb7bc43c11` · SHA-256 `e83a1015dc246328ca43d54bd6e763e9e3892acefcbf6feb8ec67994de3c5988`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FiniteCauchyBinet.Variant121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FiniteCauchyBinet.Variant121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/scratch/PivotCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.InnerProductSpace.NormDet

namespace GRWTSK.Analysis.FiniteCauchyBinet.Variant121660634fb110aeaca61424cc07577358de982fccb44aeaf8474bc274a216b4

#synth Fintype (Fin 2 ↪o Fin 4)
#check StrictMono.range_inj
#check Equiv.Perm.sign_pow_two
#check Equiv.Perm.sign_sq
#check Int.cast_pow
#check Fintype.sum_subtype
#check Finset.sum_subset
#check Finset.sum_bij
#check Finset.sum_le_card_nsmul
#check Finset.exists_le_of_sum_le
#check Finset.exists_le_of_sum_le'
#check Finset.sum_lt_sum_of_nonempty
#check norm_one_le
#check norm_one_le_iff
#check Matrix.l2_opNorm_one
#check EuclideanSpace.norm_sq_eq
#check ContinuousLinearMap.opNorm_le_bound
#check Matrix.det_toEuclideanLin
#check Matrix.toEuclideanLin_det
#check LinearMap.det_toMatrix
#check Matrix.det_toLin
#check LinearMap.IsSymmetric.det_eq_prod_eigenvalues
```
