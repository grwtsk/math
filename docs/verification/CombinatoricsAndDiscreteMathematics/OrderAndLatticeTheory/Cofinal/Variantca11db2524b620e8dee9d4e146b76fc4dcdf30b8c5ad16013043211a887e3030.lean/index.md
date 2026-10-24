# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Cofinal.Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad9aff6631d190138e10f8c0e5aec48089e49c50",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad9aff6631d190138e10f8c0e5aec48089e49c50`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.GaloisConnection.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsCofinal.of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/iscofinal-of-isempty--d962cb4d4bd942a7cc6e656d.md) | 37 | `result-track:d962cb4d4bd942a7cc6e656d0ea3c36b7e451c1a40db5eb6f4084f3d7f37b5f6` |
| 2 | `theorem` | [isCofinal_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/iscofinal-empty-iff--978b5c90b9fe0a24d71d20bf.md) | 40 | `result-track:978b5c90b9fe0a24d71d20bf26f474f9cc109652ecbab81730c80f529d582308` |
| 3 | `theorem` | [IsCofinal.singleton_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/iscofinal-singleton-top--79064de059edf484512dab3e.md) | 44 | `result-track:79064de059edf484512dab3e35730327cbfa1032e1e5642b17f4ca85ff17b396` |
| 4 | `theorem` | [IsCofinal.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/iscofinal-mono--68caca18c5414f736ae5ee43.md) | 47 | `result-track:68caca18c5414f736ae5ee4382c563f39570c3b8b65c672b91fb46877f0bb8b2` |
| 5 | `theorem` | [IsCofinal.univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/iscofinal-univ--5206e64357e2533565d99517.md) | 57 | `result-track:5206e64357e2533565d99517683a621b6d7810246729f98858d8207d5e103e19` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/instance--6c379529325d393e283c68ba.md) | 60 | `declaration-track:6c379529325d393e283c68ba716da5c3c73906c81e6c7dfcb9ed03e5068b9c1a` |
| 7 | `theorem` | [IsCofinal.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/iscofinal-trans--f1511a273214020876e9f58e.md) | 64 | `result-track:f1511a273214020876e9f58ef3989f02b1979c0cac2c5b79e89c43c17202610e` |
| 8 | `theorem` | [GaloisConnection.map_cofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/galoisconnection-map-cofinal--aac8ea05fbb06d3d34ac63b8.md) | 71 | `result-track:aac8ea05fbb06d3d34ac63b8d0c003c49447ec7b66de30c62e0c196428778a8e` |
| 9 | `theorem` | [OrderIso.map_cofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/orderiso-map-cofinal--fd6a7ee7f6e9dece593130ae.md) | 77 | `result-track:fd6a7ee7f6e9dece593130ae7512452056f9ac38154a0d417b41a82ab1ed564f` |
| 10 | `theorem` | [IsCofinal.mem_of_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/iscofinal-mem-of-ismax--839d80ab7ad4b9ff767634a4.md) | 86 | `result-track:839d80ab7ad4b9ff767634a4130944c914c2276aafd3d6fa4309838af92fe389` |
| 11 | `theorem` | [IsCofinal.top_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/iscofinal-top-mem--d5047029faa14acf7f2ec6f0.md) | 90 | `result-track:d5047029faa14acf7f2ec6f0bf4ceaddedeaae3a06d8631f36be4707017f92d4` |
| 12 | `theorem` | [isCofinal_iff_top_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/iscofinal-iff-top-mem--95e6b77a6c22134c20182084.md) | 94 | `result-track:95e6b77a6c22134c20182084cf2849165a3969120292367de6bb764358f8ddf1` |
| 13 | `theorem` | [not_isCofinal_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/not-iscofinal-iff--f90450ba8f0037b5cfeeb577.md) | 102 | `result-track:f90450ba8f0037b5cfeeb577effdcc9b212da1cca11f748c840ebc47f0a99923` |
| 14 | `theorem` | [BddAbove.of_not_isCofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/bddabove-of-not-iscofinal--df7276bc37179a37759bbb08.md) | 105 | `result-track:df7276bc37179a37759bbb089f0206749b8e3d2916f13bf286ecc9325220c193` |
| 15 | `theorem` | [IsCofinal.of_not_bddAbove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/iscofinal-of-not-bddabove--85a901b136869910a8d9ad57.md) | 110 | `result-track:85a901b136869910a8d9ad5781667ef8b37e007d0a065cce62c1ef463f4437f7` |
| 16 | `theorem` | [not_isCofinal_iff_bddAbove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/not-iscofinal-iff-bddabove--082452df7f783e67aa33e7e4.md) | 115 | `result-track:082452df7f783e67aa33e7e462df338770d809b3188422b9d3242bbf10ef5154` |
| 17 | `theorem` | [not_bddAbove_iff_isCofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/not-bddabove-iff-iscofinal--2433519ec54d2c847b44c149.md) | 123 | `result-track:2433519ec54d2c847b44c14965b64f4fd9e9fd854782a70d071b6e5f5d6fdced` |
| 18 | `theorem` | [isCofinal_setOf_imp_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantca11db2524b620e8dee9d4e146b76fc4dcdf30b8c5ad16013043211a887e3030.lean/declarations/iscofinal-setof-imp-lt--08397e6551f17055397777b3.md) | 128 | `result-track:08397e6551f17055397777b3e78702c39ccf5f0257474a530bb1ae3e0a1dc2ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
