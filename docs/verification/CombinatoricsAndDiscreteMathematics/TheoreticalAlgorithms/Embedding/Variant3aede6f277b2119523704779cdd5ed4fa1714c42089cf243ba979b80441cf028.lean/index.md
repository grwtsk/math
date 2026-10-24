# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Embedding.Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a7ef4636d4047f9eab6ee55ca6460d178ef9260",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a7ef4636d4047f9eab6ee55ca6460d178ef9260`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Disjoint` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/tail--51f559af368fdb97ba1d9f49.md) | 40 | `declaration-track:51f559af368fdb97ba1d9f495fbfcfd024ff20d6c2f15fedce3055fd604e5db8` |
| 2 | `theorem` | [coe_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/coe-tail--3e613fedf6dc2bb9ea4272a5.md) | 44 | `result-track:3e613fedf6dc2bb9ea4272a56bf97f2b150e2f493e5a97fb6588764ca3d1560c` |
| 3 | `def` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/cons--145752c5875f5431d36718a5.md) | 47 | `declaration-track:145752c5875f5431d36718a55d2e7d47ab56c5da1949942f1417cf7156750cf5` |
| 4 | `theorem` | [coe_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/coe-cons--f2c427bf1404d8d2789593b8.md) | 51 | `result-track:f2c427bf1404d8d2789593b8aaebb140374693583ccfef8a4f5132dffb3ca7b7` |
| 5 | `theorem` | [tail_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/tail-cons--621b11e491cc83b25017ebfb.md) | 54 | `result-track:621b11e491cc83b25017ebfb0a9d7a6c9cda9943db321ab87fc1dae2e1ee2df0` |
| 6 | `def` | [init](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/init--59c54e81af71c1570a79759c.md) | 58 | `declaration-track:59c54e81af71c1570a79759c67b98cfbe37af269136cb0debc042a0fd23f52ee` |
| 7 | `def` | [snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/snoc--787aa18f058f086be18f9f74.md) | 62 | `declaration-track:787aa18f058f086be18f9f748b500c3443d4dd306a0235b092119819bb7eea1c` |
| 8 | `theorem` | [coe_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/coe-snoc--8d84cfcc521c6941eaaf477a.md) | 67 | `result-track:8d84cfcc521c6941eaaf477ac1a5ea3090433c44cdebc21c9023024710240e6c` |
| 9 | `theorem` | [init_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/init-snoc--1090de5a3029129f0df70c6b.md) | 70 | `result-track:1090de5a3029129f0df70c6b47f16d3aa6fd5ef973e37a7a2453da500bfa3aef` |
| 10 | `theorem` | [snoc_castSucc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/snoc-castsucc--f3131685f177689ea9159fa3.md) | 74 | `result-track:f3131685f177689ea9159fa388e03aff8f9864b68dea66d8d2b5d71ce6024430` |
| 11 | `theorem` | [snoc_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/snoc-last--25884596a7baf6b886720b7d.md) | 78 | `result-track:25884596a7baf6b886720b7d5411150b6d288baa2df86810765879ec7c06b03b` |
| 12 | `def` | [append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/append--81f3ea1b510548b342f1ebb2.md) | 83 | `declaration-track:81f3ea1b510548b342f1ebb217d7f6ecffcd5e2227bba3d91843dbb0730b486e` |
| 13 | `theorem` | [coe_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/coe-append--752897415a3db8112b27c4ef.md) | 89 | `result-track:752897415a3db8112b27c4ef8cb7ddb73630142bb41e280d2b32c8a09ebcf1b3` |
| 14 | `def` | [twoEmbeddingEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/twoembeddingequiv--2251ff52c0828beec59128c2.md) | 100 | `declaration-track:2251ff52c0828beec59128c2ddf5ee519a0ec8e6f97c42f07c35363ed9fb0711` |
| 15 | `def` | [embFinTwo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/embfintwo--53642f9b1be2bff6c1a16ac6.md) | 124 | `declaration-track:53642f9b1be2bff6c1a16ac6cf01e8dd9909ff7efd7c6220df8f1a09ce41612d` |
| 16 | `theorem` | [embFinTwo_apply_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/embfintwo-apply-zero--12c2a3d61e3458173b886a16.md) | 127 | `result-track:12c2a3d61e3458173b886a162dc6ca2458ed13cda5c7561693d08e07c4d2e417` |
| 17 | `theorem` | [embFinTwo_apply_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/declarations/embfintwo-apply-one--d242feb241a2f84a62e18518.md) | 130 | `result-track:d242feb241a2f84a62e1851844e6dacaeb2582f231fbaa86b6dca3799966ba2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
