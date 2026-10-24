# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetD.Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "696dcde06484318ded48923096d4ceca004e84b5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `696dcde06484318ded48923096d4ceca004e84b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [getD_eq_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/getd-eq-getelem--48fd7ca1c44c56e56e169e40.md) | 38 | `result-track:48fd7ca1c44c56e56e169e40ff7daa193cdb233ae45b989a5b85791718179d81` |
| 2 | `theorem` | [getD_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/getd-map--e6c74c80ca478dd6cbe08d24.md) | 46 | `result-track:e6c74c80ca478dd6cbe08d2495d559ddeff7b7c9ff0d925e9a6da9238893ef20` |
| 3 | `theorem` | [getD_eq_default](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/getd-eq-default--7060d9cc3356063315cfeb9e.md) | 48 | `result-track:7060d9cc3356063315cfeb9efa771c4aeccaa56faf4b7898d576569ebb35cfc3` |
| 4 | `theorem` | [getD_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/getd-reverse--67728924fab1689480f931c0.md) | 56 | `result-track:67728924fab1689480f931c03da04ff44be8e4a0990334f892a7fb1f32bef418` |
| 5 | `def` | [decidableGetDNilNe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/decidablegetdnilne--2400bdd22988e53819652054.md) | 63 | `declaration-track:2400bdd22988e53819652054ec72ebb57a7dd78af3666bde5d67580a8456594d` |
| 6 | `theorem` | [getElem?_getD_singleton_default_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/getelem-getd-singleton-default-eq--2fbdd467617df046cbc458da.md) | 67 | `result-track:2fbdd467617df046cbc458daab45ab9aa61cc75e523b6469d53b0c3170cd996a` |
| 7 | `theorem` | [getElem?_getD_replicate_default_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/getelem-getd-replicate-default-eq--b124ac77711f2c50b4344340.md) | 70 | `result-track:b124ac77711f2c50b434434042440dae54fdfde7e6e8354d7a89fd5e9a76b9e1` |
| 8 | `theorem` | [getD_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/getd-replicate--e60458dbfa677d68fc9ddbf7.md) | 75 | `result-track:e60458dbfa677d68fc9ddbf7bf73859ecf2638de8a82ef28157c279160fcb987` |
| 9 | `theorem` | [getD_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/getd-append--9ec0b3e7235538fce9bda8fa.md) | 80 | `result-track:9ec0b3e7235538fce9bda8fa3d26b125de2f04340482b6fb8f88b39996594725` |
| 10 | `theorem` | [getD_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/getd-append-right--9b78104dfcbb3036ae78a0cc.md) | 85 | `result-track:9b78104dfcbb3036ae78a0cc20dba95c842e9d9e68a6b7cc89fe47ab4d7df528` |
| 11 | `theorem` | [getD_eq_getD_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/getd-eq-getd-getelem--9e31c0a3321ad484bdda467e.md) | 94 | `result-track:9e31c0a3321ad484bdda467ed4b80f790c750665e1e09f08c5f1d3e15e1f2f2a` |
| 12 | `theorem` | [getI_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/geti-nil--696db44288b2108bfb649d0b.md) | 108 | `result-track:696db44288b2108bfb649d0b974cb790c69d6fd6a1850bc683faa3bfc9662f72` |
| 13 | `theorem` | [getI_cons_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/geti-cons-zero--52e21b18e08eca57b29d5342.md) | 112 | `result-track:52e21b18e08eca57b29d5342f269f9b35c3c7a53ac233fdad75a20eb127b7304` |
| 14 | `theorem` | [getI_cons_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/geti-cons-succ--d5cc12c5d8f98312f382bf53.md) | 116 | `result-track:d5cc12c5d8f98312f382bf5344a2e916c656b525888ee158c0969670a5c15ccc` |
| 15 | `theorem` | [getI_eq_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/geti-eq-getelem--4722975da54f758999ef8a3a.md) | 119 | `result-track:4722975da54f758999ef8a3a42434bc4ce3ff8e9d3f3fd5b798bd7508b15e1fa` |
| 16 | `theorem` | [getI_eq_default](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/geti-eq-default--44b3eb82826304f2802d8dc3.md) | 122 | `result-track:44b3eb82826304f2802d8dc3f66c966849a2563d8887bb5765b74f1d134bb3c1` |
| 17 | `theorem` | [getD_default_eq_getI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/getd-default-eq-geti--c559894cbf98ebd57abf6cdf.md) | 125 | `result-track:c559894cbf98ebd57abf6cdf9338e879da3fd4ba42e7039c5f8a8efe4866eeef` |
| 18 | `theorem` | [getI_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/geti-append--277b9bba6d8b641eef7705f3.md) | 128 | `result-track:277b9bba6d8b641eef7705f3a88f11559beb348ac0ca870631dc75823e26e333` |
| 19 | `theorem` | [getI_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/geti-append-right--ff2515b7af87895dfcf8b665.md) | 131 | `result-track:ff2515b7af87895dfcf8b665d5424eb41313a2f7deec31030fed3dc43ff2401f` |
| 20 | `theorem` | [getI_eq_iget_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/geti-eq-iget-getelem--fc160e82271bff5181af3002.md) | 135 | `result-track:fc160e82271bff5181af3002cd224491e6779511805e4a85bc06cd3688421a65` |
| 21 | `theorem` | [getI_zero_eq_headI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variant933e6fac467649af4a71896d82372f9ac423e29b00930f11ada0dee5fdc4d949.lean/declarations/geti-zero-eq-headi--6ab67163c3cc7e7d30515f98.md) | 140 | `result-track:6ab67163c3cc7e7d30515f98b37b6d97c9bc2b85ddda657f53005b7ae6c42d8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
