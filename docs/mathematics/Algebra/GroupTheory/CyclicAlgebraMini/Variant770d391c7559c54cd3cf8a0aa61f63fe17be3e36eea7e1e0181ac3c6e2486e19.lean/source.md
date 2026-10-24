# Complete source: GRWTSK.Algebra.GroupTheory.CyclicAlgebraMini.Variant770d391c7559c54cd3cf8a0aa61f63fe17be3e36eea7e1e0181ac3c6e2486e19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `317e6b6b0ca447175e808df7fdfed8e6d41aed82` · SHA-256 `a2a10e97c42d941bcb83b27a8c50de191d81a1842fab10a8c13539a2eb969671`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MiniAlgebra.Variant629f3b249f8fbb0913830e59b7e099d341560a128ce599b29c31c02d13fb364b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"629f3b249f8fbb0913830e59b7e099d341560a128ce599b29c31c02d13fb364b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MiniAlgebra.Variant629f3b249f8fbb0913830e59b7e099d341560a128ce599b29c31c02d13fb364b","mathematical_subject":"Algebra.Groups","original_sha256":"629f3b249f8fbb0913830e59b7e099d341560a128ce599b29c31c02d13fb364b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/cyclic-algebra-mini.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.FiniteLatticeArithmetic.Congruence
import Mathlib.Data.Fin.VecNotation
import Mathlib.Algebra.Group.Defs

namespace GRWTSK.Algebra.GroupTheory.MiniAlgebra.Variant629f3b249f8fbb0913830e59b7e099d341560a128ce599b29c31c02d13fb364b

open OAI.FiniteCongruence
variable {G : Type} [AddGroup G]
def miniAlgebra : Algebra G where
  numOps := 3
  arity := ![2, 1, 0]
  op := Fin.cases (fun (inputs : Fin 2 → G) => inputs 0 + inputs 1)
    (Fin.cases (fun (inputs : Fin 1 → G) => -inputs 0)
      (Fin.cases (fun (_ : Fin 0 → G) => 0) (fun i => Fin.elim0 i)))
#check miniAlgebra
```
