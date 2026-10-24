# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Iterate.Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "779f1f6ef543a84bb87d559f98472dfdf5627450",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `779f1f6ef543a84bb87d559f98472dfdf5627450`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Iterate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [seq_le_seq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/seq-le-seq--cc6b7b041e40e15808369bb8.md) | 48 | `result-track:cc6b7b041e40e15808369bb8300e303ed1d943040c761b848a7fac38a03c6c1f` |
| 2 | `theorem` | [seq_pos_lt_seq_of_lt_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/seq-pos-lt-seq-of-lt-of-le--9c0677fcca2de898207fe325.md) | 57 | `result-track:9c0677fcca2de898207fe325556f684fbf6c41de2745b045a81e4ac109b00f12` |
| 3 | `theorem` | [seq_pos_lt_seq_of_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/seq-pos-lt-seq-of-le-of-lt--c6f7b639a45f826df403c5c6.md) | 69 | `result-track:c6f7b639a45f826df403c5c668e2a6e49cba079240f01b3a4eb30af18e5a4910` |
| 4 | `theorem` | [seq_lt_seq_of_lt_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/seq-lt-seq-of-lt-of-le--8851644ad45996796c00c03b.md) | 73 | `result-track:8851644ad45996796c00c03b5c25074e10ff21138e84935884a33ad6eecb3117` |
| 5 | `theorem` | [seq_lt_seq_of_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/seq-lt-seq-of-le-of-lt--da165d77fb7de595a60f1183.md) | 78 | `result-track:da165d77fb7de595a60f1183d85b1c6e2a114bb04a4d17843ce724b877080922` |
| 6 | `theorem` | [le_iterate_comp_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/le-iterate-comp-of-le--300477c6d34a6b9b87d59994.md) | 97 | `result-track:300477c6d34a6b9b87d599941cfc49075bc0256b28ab6ce9f548f23a7162aaad` |
| 7 | `theorem` | [iterate_comp_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/iterate-comp-le-of-le--b6a6b4e0ae015d886db3912e.md) | 103 | `result-track:b6a6b4e0ae015d886db3912e049ab044133f14bdb1f3d7b5053d12b978e564d9` |
| 8 | `theorem` | [iterate_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/iterate-le-of-le--74c5ba573410a9439adc65a6.md) | 108 | `result-track:74c5ba573410a9439adc65a644d33d06e8e8e8bb812952aa4a3661ea79ca6efb` |
| 9 | `theorem` | [le_iterate_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/le-iterate-of-le--62ccb6cedc511a88119313af.md) | 112 | `result-track:62ccb6cedc511a88119313af2bd723be58c74f239d393b98d6bb1f9b8033e37e` |
| 10 | `theorem` | [id_le_iterate_of_id_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/id-le-iterate-of-id-le--5a494624936a30ebde685073.md) | 133 | `result-track:5a494624936a30ebde685073ae9fc8bd9660c775236970a4a6f47c8ce5649e19` |
| 11 | `theorem` | [iterate_le_id_of_le_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/iterate-le-id-of-le-id--dd697756f4b2f885a146a6e8.md) | 136 | `result-track:dd697756f4b2f885a146a6e87f2136da5bc7ce43770f625c298c829cec37c284` |
| 12 | `theorem` | [monotone_iterate_of_id_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/monotone-iterate-of-id-le--5824843235f5770f97a24b55.md) | 139 | `result-track:5824843235f5770f97a24b55f554739ad50cf6460e2a5aacdbd249d6bf5e836e` |
| 13 | `theorem` | [antitone_iterate_of_le_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/antitone-iterate-of-le-id--7bdd030fe9e392aadd100632.md) | 144 | `result-track:7bdd030fe9e392aadd1006325f9d633a714104397d76e42f93d69f46f665fa93` |
| 14 | `theorem` | [iterate_le_of_map_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/iterate-le-of-map-le--c4c890abfb1e59e47ddca2a9.md) | 164 | `result-track:c4c890abfb1e59e47ddca2a9b426f707941c7e6eebf0c0e95e13cd30df9c428c` |
| 15 | `theorem` | [iterate_pos_lt_of_map_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/iterate-pos-lt-of-map-lt--a592fc6f4c1c3c6d32e0a42d.md) | 171 | `result-track:a592fc6f4c1c3c6d32e0a42dabac01ca05f27d0740f710d50649654d9aa85e3c` |
| 16 | `theorem` | [iterate_pos_lt_of_map_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/iterate-pos-lt-of-map-lt--dbb900d9e00d0055c4dbb6a6.md) | 178 | `result-track:dbb900d9e00d0055c4dbb6a610a1ba5e66a58a2ed2e021748793c660fd740ea4` |
| 17 | `theorem` | [iterate_pos_lt_iff_map_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/iterate-pos-lt-iff-map-lt--1098b10f2939bf5b2f510446.md) | 186 | `result-track:1098b10f2939bf5b2f51044639e9b2e75c14e6bb13078bec47861c2d9e18bf3a` |
| 18 | `theorem` | [iterate_pos_lt_iff_map_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/iterate-pos-lt-iff-map-lt--7909ed23b96a5fb89536587e.md) | 193 | `result-track:7909ed23b96a5fb89536587e2e87d30d203ae843e9e984db2abd929cf667bb3f` |
| 19 | `theorem` | [iterate_pos_le_iff_map_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/iterate-pos-le-iff-map-le--4c600549558e225117e4b620.md) | 197 | `result-track:4c600549558e225117e4b62050d49ee81593c19d7d96173d4eeb5cc457f64c8c` |
| 20 | `theorem` | [iterate_pos_le_iff_map_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/iterate-pos-le-iff-map-le--ed1e99f7a2c73f8090922fea.md) | 201 | `result-track:ed1e99f7a2c73f8090922fea38855e4786d035b149ce1715d5334e7804987786` |
| 21 | `theorem` | [iterate_pos_eq_iff_map_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/iterate-pos-eq-iff-map-eq--43c2ef7a7e974516f1c1c544.md) | 205 | `result-track:43c2ef7a7e974516f1c1c5447183919977509fc9ec7f89a6ac93246f97c64d12` |
| 22 | `theorem` | [monotone_iterate_of_le_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/monotone-iterate-of-le-map--dc77f54e39db871773f295a3.md) | 220 | `result-track:dc77f54e39db871773f295a3da28bc0994049bbdf21b04814d4b606cd69c41a0` |
| 23 | `theorem` | [antitone_iterate_of_map_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/antitone-iterate-of-map-le--afe891ad222bfc1ebeeb31bd.md) | 227 | `result-track:afe891ad222bfc1ebeeb31bdcad302e6da8588439e66a27df8527f64ce445f9d` |
| 24 | `theorem` | [strictMono_iterate_of_lt_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/strictmono-iterate-of-lt-map--d95ae432459b66a10203e8db.md) | 238 | `result-track:d95ae432459b66a10203e8dbadfc06f0887d2d7e480dc81b6b28ecb419f4e382` |
| 25 | `theorem` | [strictAnti_iterate_of_map_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Iterate/Variantb727a0c0cd6aa46e6a776b13bfb5c5eb05a50298d48a2758f247dc27729d9836.lean/declarations/strictanti-iterate-of-map-lt--394bda80a2d0ca1f862366a9.md) | 246 | `result-track:394bda80a2d0ca1f862366a939a1efa109083c23b55e59f4cc9915fc03ef7549` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
