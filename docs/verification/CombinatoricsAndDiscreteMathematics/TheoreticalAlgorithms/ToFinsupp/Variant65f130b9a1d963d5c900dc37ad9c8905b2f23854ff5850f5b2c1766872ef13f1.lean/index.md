# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToFinsupp.Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "240366dd62e6f162a5b1f016c4e27838711672a4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `240366dd62e6f162a5b1f016c4e27838711672a4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Embedding` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Single` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.GetD` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/tofinsupp--46686ac6d4a6d6928ca21abf.md) | 55 | `declaration-track:46686ac6d4a6d6928ca21abf0b886eb2e269b267a1b4ed790996f13467a3c54e` |
| 2 | `theorem` | [coe_toFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/coe-tofinsupp--021e9365db34978055e06904.md) | 64 | `result-track:021e9365db34978055e069042ab598e4510c2261596afafd2a34a3a74a0b1c61` |
| 3 | `theorem` | [toFinsupp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/tofinsupp-apply--3890683213815146ce4e617d.md) | 68 | `result-track:3890683213815146ce4e617d538d4b8e18363ad967ad16efc26ab3fbf49ce6da` |
| 4 | `theorem` | [toFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/tofinsupp-support--519b459fc6ade18c87f80b59.md) | 71 | `result-track:519b459fc6ade18c87f80b5916a1dc72fb2d59c62296927a403e80b4c5f29a66` |
| 5 | `theorem` | [toFinsupp_apply_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/tofinsupp-apply-lt--b02672b7f7e6531fe0cdba6d.md) | 75 | `result-track:b02672b7f7e6531fe0cdba6dcbe6be4cb4f247e8e3ac5fa43755808ea9ea8bc8` |
| 6 | `theorem` | [toFinsupp_apply_fin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/tofinsupp-apply-fin--42d53b75763e270dc7c057d0.md) | 78 | `result-track:42d53b75763e270dc7c057d0613ebc5cf343c8b55c248fe3f13d55c422b533ff` |
| 7 | `theorem` | [toFinsupp_apply_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/tofinsupp-apply-le--ea954d4bc73b6f44a3fe36d8.md) | 81 | `result-track:ea954d4bc73b6f44a3fe36d8d2ab5bedf821353a05af95f7a887f869b1af0edd` |
| 8 | `theorem` | [toFinsupp_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/tofinsupp-nil--8f74acc0d8d1f8c98f39fd7c.md) | 85 | `result-track:8f74acc0d8d1f8c98f39fd7c3a556cbc1a95442a3ce8131abf474a6572f279cb` |
| 9 | `theorem` | [toFinsupp_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/tofinsupp-singleton--985f590046c815af44e41633.md) | 90 | `result-track:985f590046c815af44e41633ec1558443db734e7224bb756eec370ff705682e8` |
| 10 | `theorem` | [toFinsupp_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/tofinsupp-append--197ec1ccb049007d085d58af.md) | 94 | `result-track:197ec1ccb049007d085d58afa1e99706ad98d3d5c5ee6c04e4c9b315b1a88772` |
| 11 | `theorem` | [toFinsupp_cons_eq_single_add_embDomain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/tofinsupp-cons-eq-single-add-embdomain--e798692e66f82af1337b1d04.md) | 111 | `result-track:e798692e66f82af1337b1d04623808197033fb53c87104084f34287bdde960f2` |
| 12 | `theorem` | [toFinsupp_concat_eq_toFinsupp_add_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/tofinsupp-concat-eq-tofinsupp-add-single--9a2256d5bdd214da759d4dfc.md) | 121 | `result-track:9a2256d5bdd214da759d4dfcb503f15afdc3678c370918116a0a73bd0a2d8827` |
| 13 | `theorem` | [toFinsupp_eq_sum_mapIdx_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variant65f130b9a1d963d5c900dc37ad9c8905b2f23854ff5850f5b2c1766872ef13f1.lean/declarations/tofinsupp-eq-sum-mapidx-single--d634eed54c821128df2eacc2.md) | 128 | `result-track:d634eed54c821128df2eacc26c497a459e6f7c61d5f8dbe7d870588507bf0d4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
