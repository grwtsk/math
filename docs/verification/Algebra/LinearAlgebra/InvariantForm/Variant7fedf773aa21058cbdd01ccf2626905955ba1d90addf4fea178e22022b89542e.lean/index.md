# Verification target: GRWTSK.Algebra.LinearAlgebra.InvariantForm.Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6bbb9cadb1f96e04f40bdb34266d5af1209c741",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6bbb9cadb1f96e04f40bdb34266d5af1209c741`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.LinearMap.BilinForm.lieInvariant](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/declarations/root-linearmap-bilinform-lieinvariant--87927ecbae96ee70d11bf3e7.md) | 54 | `declaration-track:87927ecbae96ee70d11bf3e78f5ce6d8fd46a7a0989f8c71092b94d9be04afab` |
| 2 | `lemma` | [_root_.LinearMap.BilinForm.lieInvariant_iff](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/declarations/root-linearmap-bilinform-lieinvariant-iff--58eb25c21b7d546585fda43a.md) | 57 | `result-track:58eb25c21b7d546585fda43a05829c0dabbddb66d0b8d580961d0e9ccff59605` |
| 3 | `def` | [orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/declarations/orthogonal--a928382a5010ae8bcfc49886.md) | 73 | `declaration-track:a928382a5010ae8bcfc498864614a671993c7a42c41e699d7ab35deb00245f92` |
| 4 | `lemma` | [orthogonal_toSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/declarations/orthogonal-tosubmodule--fff3bc2aac8b6e84d6bc85cf.md) | 87 | `result-track:fff3bc2aac8b6e84d6bc85cfdbeeeb6b95811f62aebdf5bd67a298c124f7cf70` |
| 5 | `lemma` | [mem_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/declarations/mem-orthogonal--42fc4fb4c41c338901950913.md) | 90 | `result-track:42fc4fb4c41c3389019509131461d852ffaf20d3dde201c17b7133f8aaddbc0d` |
| 6 | `lemma` | [orthogonal_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/declarations/orthogonal-disjoint--3c4d314bf0088fbca3db893d.md) | 96 | `result-track:3c4d314bf0088fbca3db893d17573b0610d70cd9611e2a40ebe175fe242f2925` |
| 7 | `lemma` | [orthogonal_isCompl_toSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/declarations/orthogonal-iscompl-tosubmodule--93339f91afdf55020af1c12e.md) | 131 | `result-track:93339f91afdf55020af1c12ed447b3d55c94fd17a421f78196b2c79ba83c4718` |
| 8 | `lemma` | [orthogonal_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/declarations/orthogonal-iscompl--07341d5fb7f0d9e51edf22e5.md) | 138 | `result-track:07341d5fb7f0d9e51edf22e5015090851ace35ce5df9ceb1a77270f31d2aefc8` |
| 9 | `lemma` | [restrict_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/declarations/restrict-nondegenerate--d71f393af764a09c1947a73b.md) | 145 | `result-track:d71f393af764a09c1947a73beec66f126abfba3fa7b29f7da10f1efb9c5bdf7b` |
| 10 | `lemma` | [restrict_orthogonal_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/declarations/restrict-orthogonal-nondegenerate--cbd879385fdcfe7db232d033.md) | 150 | `result-track:cbd879385fdcfe7db232d033164ac242e11eddf13f3d725cea6f195de5454999` |
| 11 | `lemma` | [atomistic](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/declarations/atomistic--5928808a33291cd91fdc66b1.md) | 158 | `result-track:5928808a33291cd91fdc66b11627383904610066d39d408b17f48727c213889f` |
| 12 | `theorem` | [isSemisimple_of_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/declarations/issemisimple-of-nondegenerate--b78f1b019adfdd39184acc59.md) | 194 | `result-track:b78f1b019adfdd39184acc59942b339e7c9def2ec63c486b2dc0293c575682d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
