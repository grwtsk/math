# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedPrimeNormalForm.Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c823771638eecc738dc2bd715ab64830d3251ee",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c823771638eecc738dc2bd715ab64830d3251ee`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.Irreducible` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OrderedPrimeCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/orderedprimecore--7abd10b3a4c64e66cff02e90.md) | 7 | `declaration-track:7abd10b3a4c64e66cff02e90f57baaca8e350e7333ebd82256258f2ab5b700a1` |
| 2 | `def` | [code](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/code--ce5509742f4d59bddc9b229f.md) | 13 | `declaration-track:ce5509742f4d59bddc9b229fd13d55537d1d3c949e8a3db1da1778144e93f791` |
| 3 | `theorem` | [code_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/code-injective--8a00d8af1cac8b3f860e6f2e.md) | 19 | `result-track:8a00d8af1cac8b3f860e6f2eecdd1dbc1d5d1dd9595eb760b4c42787d2dcab2b` |
| 4 | `structure` | [OrderedPrimeNormalForm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/orderedprimenormalform--3b424c7c7d76986f99cc68fd.md) | 54 | `declaration-track:3b424c7c7d76986f99cc68fd2a051eac4965931349172bb4235e44f9849a0511` |
| 5 | `def` | [topologyPrime](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/topologyprime--1534f2cf7382dd38f17c13d0.md) | 59 | `declaration-track:1534f2cf7382dd38f17c13d038cd1fef5718bf677a493480e99672ee8c15153a` |
| 6 | `theorem` | [orderedPrimeCore_code_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/orderedprimecore-code-injective--6fe268c9f3a66376f9743810.md) | 65 | `result-track:6fe268c9f3a66376f974381099bc4a7e6aec2320a452beb336b3a7a7e5718179` |
| 7 | `theorem` | [orderedPrimeCore_preserves_bracketing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/orderedprimecore-preserves-bracketing--2a298d8291768d727c6d2864.md) | 72 | `result-track:2a298d8291768d727c6d28644a6c8c16fc9bb48adb65f51f52077e9ce1af30c5` |
| 8 | `theorem` | [topologyPrime_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/topologyprime-injective--5e4bbe868848bad3ff4f76e7.md) | 79 | `result-track:5e4bbe868848bad3ff4f76e73e660f5a421637657318bcc358652a05fec13d77` |
| 9 | `theorem` | [same_topologyPrime_same_factorization](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/same-topologyprime-same-factorization--95ae8628d8ee0ddf6029a5b8.md) | 90 | `result-track:95ae8628d8ee0ddf6029a5b821aab4bf63b47cf43aa212483344cedb61bad601` |
| 10 | `structure` | [NormalizationRules](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/normalizationrules--eac6784f52125db7822e642a.md) | 100 | `declaration-track:eac6784f52125db7822e642a1601191d35a8b7e1d0db6746a7e00df5d9c708f4` |
| 11 | `def` | [normalizeCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/normalizecore--f4ff05781202a005414c8c28.md) | 109 | `declaration-track:f4ff05781202a005414c8c288b6b6241347ca3be55dff3f20c2ace802e1e8302` |
| 12 | `def` | [normalize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/normalize--51a634e35c90082eba34744f.md) | 119 | `declaration-track:51a634e35c90082eba34744f845e87f129df13147fa474f82a5ae5b1001674c5` |
| 13 | `theorem` | [orderedPrimeNormalForm_unique_factorization](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/orderedprimenormalform-unique-factorization--12376f6bfa4ed3618274d6ef.md) | 131 | `result-track:12376f6bfa4ed3618274d6ef5997a797cc8c09e4937c40bfaef35e8efa8a37e4` |
| 14 | `theorem` | [same_normalized_code_same_factorization](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/same-normalized-code-same-factorization--f0720c6acd84face783eb80b.md) | 142 | `result-track:f0720c6acd84face783eb80b88429f6141a996003705fdadbe127a8058891913` |
| 15 | `theorem` | [normalized_factorization_deterministic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/normalized-factorization-deterministic--7ff19cdd2947600fc4178670.md) | 149 | `result-track:7ff19cdd2947600fc4178670192f333c769bbcdc2a882f7bec97f1c6cf9ef8fa` |
| 16 | `theorem` | [normalized_topology_distinct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/normalized-topology-distinct--04d37cfab34194496ed3a098.md) | 160 | `result-track:04d37cfab34194496ed3a0988929b9fb82ddeba0475833d107fb411893b1511c` |
| 17 | `theorem` | [topologyPrime_distinguishes_composites](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/declarations/topologyprime-distinguishes-composites--a8125836c58a6d253d6c136b.md) | 172 | `result-track:a8125836c58a6d253d6c136b93f7d2c7a48f3e13641f62a5d46f96bbb46d5a54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
