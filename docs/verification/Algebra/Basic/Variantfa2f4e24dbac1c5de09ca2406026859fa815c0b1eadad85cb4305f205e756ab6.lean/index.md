# Verification target: GRWTSK.Algebra.Basic.Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b95883c8fde2d934cbcc20196417a511d1ed7c06",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b95883c8fde2d934cbcc20196417a511d1ed7c06`.

Source path: `GRWTSK/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TensorAlgebra.SymRel](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/tensoralgebra-symrel--9ee95dfe29222c927f75d81e.md) | 39 | `declaration-track:9ee95dfe29222c927f75d81e2f44004ad47be58a6b0a27490287abc4b8299bc7` |
| 2 | `abbrev` | [SymmetricAlgebra](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/symmetricalgebra--bb7b54e99189ec1b8d11d578.md) | 46 | `declaration-track:bb7b54e99189ec1b8d11d57829d1d6386631b31e0026221cf26a9d2ed41a3fa1` |
| 3 | `abbrev` | [algHom](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/alghom--6b8a5ac23ded1bf031e48c99.md) | 51 | `declaration-track:6b8a5ac23ded1bf031e48c99596870291439f3231142c55a420200d9915e68e3` |
| 4 | `lemma` | [algHom_surjective](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/alghom-surjective--52e9f61da8ae803de9a94eba.md) | 53 | `result-track:52e9f61da8ae803de9a94ebafdcf953a5e5439d75c3d16639546272a02642a33` |
| 5 | `def` | [ι](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/anonymous--19abaa8cce2086be95f2bb36.md) | 57 | `declaration-track:19abaa8cce2086be95f2bb3699640c0dd554fca5c29c163ff733cb1a64c76097` |
| 6 | `theorem` | [induction](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/induction--9bebc6f49fa54f7ab2ece8c1.md) | 60 | `result-track:9bebc6f49fa54f7ab2ece8c164ac99ff4d6a2962707807255366c272920b82b4` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/instance--90fd7fc1e43f1694cd33280d.md) | 73 | `declaration-track:90fd7fc1e43f1694cd33280df48b01c61ca3ca8667993c8acb0777d02bdfe8df` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/instance--9c4a04187ebc4861b2afe1fb.md) | 86 | `declaration-track:9c4a04187ebc4861b2afe1fbae0f093c69a15e8f8bf571afa49f88c9c88c2d6c` |
| 9 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/lift--7d640ee47a86652f82f52267.md) | 94 | `declaration-track:7d640ee47a86652f82f522678f2c618435e2af1edf476540e4f137a2ddd633c3` |
| 10 | `lemma` | [lift_ι_apply](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/lift-apply--6fba49bdae013c7b2ae5a3bc.md) | 104 | `result-track:6fba49bdae013c7b2ae5a3bc72c7daf6d4a8f3eeeb367552f6ed5f5eda5faea7` |
| 11 | `lemma` | [lift_comp_ι](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/lift-comp--3d8fbbecbd57196c957b309d.md) | 108 | `result-track:3d8fbbecbd57196c957b309d00cb484a7d15949be77a345e45d31eb889849a2b` |
| 12 | `theorem` | [algHom_ext](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/alghom-ext--756294914bc8d302b5b345a3.md) | 111 | `result-track:756294914bc8d302b5b345a307a70fb3cf3f01b5c404d934b150e6166586b727` |
| 13 | `lemma` | [lift_ι](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/lift--64b83296fc27db7f0051c3d3.md) | 117 | `result-track:64b83296fc27db7f0051c3d36ca80a6f3ac82b7bf1a91e4cad4d1005b01dd77f` |
| 14 | `def` | [algebraMapInv](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/algebramapinv--77e5452f2b7ce3c1ae314998.md) | 124 | `declaration-track:77e5452f2b7ce3c1ae314998c13bed4509b0c0d85cd6c3cc6599b0e91e6457f1` |
| 15 | `theorem` | [algebraMap_leftInverse](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/algebramap-leftinverse--9c8ff96a38a338fe6d44a9ee.md) | 129 | `result-track:9c8ff96a38a338fe6d44a9ee852afb0ef2631e399e9a024923865d3fc92ee83b` |
| 16 | `theorem` | [algebraMap_inj](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/algebramap-inj--5bb1ec3f56fded7170212220.md) | 134 | `result-track:5bb1ec3f56fded717021222021515a87050f3f4cd27d0ce9d2875ea7903bfb51` |
| 17 | `theorem` | [algebraMap_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/algebramap-eq-zero-iff--5be1b8176a44743263fa49ee.md) | 139 | `result-track:5be1b8176a44743263fa49ee761a1c6d49d733a80a072e2ab2967e3abc967a13` |
| 18 | `theorem` | [algebraMap_eq_one_iff](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/algebramap-eq-one-iff--d5fa98bcadd5088bd39b8e8f.md) | 143 | `result-track:d5fa98bcadd5088bd39b8e8f75cf3d2d6a08210548713bac10b1b09b6c23d9cc` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/declarations/instance--0b8948f6b375902a6391f4c6.md) | 147 | `declaration-track:0b8948f6b375902a6391f4c68b05734f4528e4c9db370433a400cc8c54eb3a7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
