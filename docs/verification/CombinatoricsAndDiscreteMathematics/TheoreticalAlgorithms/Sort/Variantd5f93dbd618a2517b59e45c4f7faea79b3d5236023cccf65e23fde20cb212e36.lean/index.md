# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sort.Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "534536d0a471c965b9f9300e2ef21d5827d59d16",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `534536d0a471c965b9f9300e2ef21d5827d59d16`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Sort` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Range` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/sort--45b1c2a0724d15256b4ca2b7.md) | 35 | `declaration-track:45b1c2a0724d15256b4ca2b784e3745ca9dd9031416f87027e6d1f98ed2a7f4a` |
| 2 | `theorem` | [coe_sort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/coe-sort--2ae761bd71687771a8f9c8b6.md) | 44 | `result-track:2ae761bd71687771a8f9c8b6635f3967b944cd224629ebccacf89cac677c8d80` |
| 3 | `theorem` | [sort_sorted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/sort-sorted--776746366eeba63bc175b892.md) | 48 | `result-track:776746366eeba63bc175b8921669fe534d15b3e00b1043df1c5e70a9870efb55` |
| 4 | `theorem` | [sort_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/sort-eq--7f2520384f36106c8807011d.md) | 52 | `result-track:7f2520384f36106c8807011d9c2af51a45e55418f085f6712e770b2bea02355a` |
| 5 | `theorem` | [mem_sort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/mem-sort--ac2d871b8d430b29e231cf5a.md) | 56 | `result-track:ac2d871b8d430b29e231cf5a9913e8fb988a7d6cf2dbc0a248fd59d92f82861d` |
| 6 | `theorem` | [length_sort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/length-sort--5d4b2ef1b998123bafd5b94d.md) | 59 | `result-track:5d4b2ef1b998123bafd5b94d7d646878b39b7d8708738edb8ccb7f3b9dbdabb1` |
| 7 | `theorem` | [sort_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/sort-zero--85b0b99041c5089ef1573bbd.md) | 63 | `result-track:85b0b99041c5089ef1573bbd1744435a975b7193d5ae8610e3a9aa3ebdc382a7` |
| 8 | `theorem` | [sort_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/sort-singleton--89bfc85a50c3287c6eb1187b.md) | 67 | `result-track:89bfc85a50c3287c6eb1187b6fb84c53bf18a9cd3fd47fa4c49e2a3294a9baf7` |
| 9 | `theorem` | [map_sort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/map-sort--fb4146b1dd342ad6e886baf4.md) | 70 | `result-track:fb4146b1dd342ad6e886baf452e8d80e0036eb17249671f6d677b00fced7dd09` |
| 10 | `theorem` | [sort_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/sort-cons--68856b2f2fd80541f1ae80c6.md) | 76 | `result-track:68856b2f2fd80541f1ae80c6851cb0e15dcdff1d6bce2fc1ef0de8714c153dcf` |
| 11 | `theorem` | [sort_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/sort-range--86b98cf662b492bab5b7fd17.md) | 82 | `result-track:86b98cf662b492bab5b7fd17a1e946729aa3238343b0b5a06d340b55cb04418c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/instance--ff434368a725da1a70c3feb6.md) | 89 | `declaration-track:ff434368a725da1a70c3feb68854380db6d75217b8a2a7a523735d98eb745e50` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variantd5f93dbd618a2517b59e45c4f7faea79b3d5236023cccf65e23fde20cb212e36.lean/declarations/instance--55104d8be9895159a795593c.md) | 101 | `declaration-track:55104d8be9895159a795593c38370cdf7ea5962f2a5ccefa12eb257a95ae12c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
