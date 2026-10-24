# Verification target: GRWTSK.Algebra.LinearAlgebra.Finsupp.Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1d29e7deae6d1b259a9749dd0bb9291a0da79b5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1d29e7deae6d1b259a9749dd0bb9291a0da79b5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finsupp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeAbelianGroup` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeAbelianGroup.toFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/freeabeliangroup-tofinsupp--7aa325612bf39b7beae4afd0.md) | 30 | `declaration-track:7aa325612bf39b7beae4afd0d071e51f3018f0e2e353156724d49f5a8d34cb24` |
| 2 | `def` | [Finsupp.toFreeAbelianGroup](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/finsupp-tofreeabeliangroup--17881387d47478b388b38086.md) | 34 | `declaration-track:17881387d47478b388b38086428b221e27b106d883bc66745cb8630d87c86748` |
| 3 | `theorem` | [Finsupp.toFreeAbelianGroup_comp_singleAddHom](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/finsupp-tofreeabeliangroup-comp-singleaddhom--ecb6093adcc1dc1036947ac4.md) | 40 | `result-track:ecb6093adcc1dc1036947ac45a0bc7f8ad02cdb708f5302a61521cde8cd65ba9` |
| 4 | `theorem` | [FreeAbelianGroup.toFinsupp_comp_toFreeAbelianGroup](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/freeabeliangroup-tofinsupp-comp-tofreeabeliangroup--6e51f4d24cf44a4b424a049a.md) | 48 | `result-track:6e51f4d24cf44a4b424a049ac1eb4c8043ebeff33323973926b0c52a70224363` |
| 5 | `theorem` | [Finsupp.toFreeAbelianGroup_comp_toFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/finsupp-tofreeabeliangroup-comp-tofinsupp--dc00e12d2bd9a1b8656449a2.md) | 56 | `result-track:dc00e12d2bd9a1b8656449a2def15ba58b68f90fcdc17d466e860816d9dbc3fa` |
| 6 | `theorem` | [Finsupp.toFreeAbelianGroup_toFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/finsupp-tofreeabeliangroup-tofinsupp--b5c94595852cacd326ce63fc.md) | 64 | `result-track:b5c94595852cacd326ce63fc332fce513a3283fe042700082f8bbbb3bdc2a72b` |
| 7 | `theorem` | [toFinsupp_of](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/tofinsupp-of--77dcc8a6eb28e32aaca58131.md) | 73 | `result-track:77dcc8a6eb28e32aaca58131becc75e3a4680da7c843c054d7e20405f7e50f43` |
| 8 | `theorem` | [toFinsupp_toFreeAbelianGroup](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/tofinsupp-tofreeabeliangroup--a151747f1f690ea23226e66e.md) | 77 | `result-track:a151747f1f690ea23226e66eee95c0b040b5fbf51c38f37f9a0f48f964e01abe` |
| 9 | `def` | [equivFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/equivfinsupp--f96885f3027c6dc3bddd0895.md) | 85 | `declaration-track:f96885f3027c6dc3bddd0895f7bd8277690f0807badb12243a92afeb15261b27` |
| 10 | `def` | [coeff](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/coeff--1a66aec8dad97ef7b88c3d61.md) | 96 | `declaration-track:1a66aec8dad97ef7b88c3d6194b309caa99ef1da31ef0be88dfff8c6c9b8a468` |
| 11 | `def` | [support](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/support--47b8a077366e39e6880d22ad.md) | 101 | `declaration-track:47b8a077366e39e6880d22ad7dc466a3f7af17cd700b85a21df8d5fd7c0205e4` |
| 12 | `theorem` | [mem_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/mem-support-iff--9fb0c71f0a085cd96187c681.md) | 104 | `result-track:9fb0c71f0a085cd96187c681da1d2a466d39144a457253773289e94fa33820e6` |
| 13 | `theorem` | [notMem_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/notmem-support-iff--283009bb7d309644b0d94be0.md) | 108 | `result-track:283009bb7d309644b0d94be0aefb7fedfa9a7c00d498fda9e92a9ce185143f28` |
| 14 | `theorem` | [support_zero](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/support-zero--4c9fd6a670cab6a66a59379b.md) | 115 | `result-track:4c9fd6a670cab6a66a59379b221bafd6839bdc653125290258c23b71b910ec29` |
| 15 | `theorem` | [support_of](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/support-of--1889e2925d36f1b653c557b6.md) | 119 | `result-track:1889e2925d36f1b653c557b6840bf8a0674a9625d0045619cd64232cfe4fec7f` |
| 16 | `theorem` | [support_neg](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/support-neg--871b4c91bc60b6270a33eb10.md) | 123 | `result-track:871b4c91bc60b6270a33eb1018e908109cc2446d629682df74405a879d6f1876` |
| 17 | `theorem` | [support_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/support-zsmul--140e5c788dc10ed87f5d5e51.md) | 127 | `result-track:140e5c788dc10ed87f5d5e51b70a099ace94c3e3fefabcbed68d3f3fd266380b` |
| 18 | `theorem` | [support_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/support-nsmul--b22460d24c86fa0f14f48c16.md) | 134 | `result-track:b22460d24c86fa0f14f48c16606cbf3bde90454645652069f5c2b04f2ff23e61` |
| 19 | `theorem` | [support_add](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/declarations/support-add--817c44570afc3f2301220192.md) | 140 | `result-track:817c44570afc3f23012201927892b50d347e3d8a1993b394ce58ab29f1921a4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
