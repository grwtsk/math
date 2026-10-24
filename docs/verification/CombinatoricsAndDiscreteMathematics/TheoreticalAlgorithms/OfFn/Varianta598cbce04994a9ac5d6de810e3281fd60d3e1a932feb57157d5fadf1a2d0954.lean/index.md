# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfFn.Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "896954e0297150b2eebf387f334223a125193a59",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `896954e0297150b2eebf387f334223a125193a59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Monadic` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.FinRange` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofFn_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offn-zero--9278e053b6d6f7d7692865d8.md) | 39 | `result-track:9278e053b6d6f7d7692865d8a0a78918ba26baf3bbf62d0d4c5051ccb5bb6ff6` |
| 2 | `theorem` | [ofFn_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offn-succ--95a901cce6f23285d75b7fd8.md) | 42 | `result-track:95a901cce6f23285d75b7fd83a2643252b0808350b15bfa54e42647b1d669b57` |
| 3 | `theorem` | [ofFn_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offn-add--c197ace185aba3710b90c7ad.md) | 52 | `result-track:c197ace185aba3710b90c7adccfcd67011c5a4d2d707b32739343fa7bd066bdd` |
| 4 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfFnSucc.Variant6d2a4858482842fc4d408c93f275c67b9a20bc7149db0caceff318f37b42d30a.List.toArray_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-of--b9357d0c0c99155aee5c51f0.md) | 58 | `result-track:b9357d0c0c99155aee5c51f0ed3da481d621f7df5b5b1f238b8bf850d0d961fa` |
| 5 | `theorem` | [toList_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/tolist-offn--7dd0b3a799348115bb28bbeb.md) | 61 | `result-track:7dd0b3a799348115bb28bbeb5ecc062f955043987d7792ba99f13e1449fc6bba` |
| 6 | `theorem` | [ofFn_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offn-succ--4707406e8740852568ba4c80.md) | 64 | `result-track:4707406e8740852568ba4c80048febd6204c29bcfd353b5aef2d9a1d629e09e0` |
| 7 | `theorem` | [ofFn_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offn-getelem--50facd63591f27364e37922e.md) | 70 | `result-track:50facd63591f27364e37922e3eab89bd065123550e207c1010adeee6afeae61a` |
| 8 | `theorem` | [ofFn_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offn-eq-empty-iff--b0c3ee826b19415677e4ca77.md) | 75 | `result-track:b0c3ee826b19415677e4ca77022048d7aed0df08fb7825f12d6d4546550b53a6` |
| 9 | `theorem` | [mem_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/mem-offn--361755acfd1b4ccc969d93f8.md) | 80 | `result-track:361755acfd1b4ccc969d93f852d965256ab9d01d65b4a5a46e010809b94c183d` |
| 10 | `theorem` | [map_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/map-offn--693354bd2bebdb0b2d2dbea0.md) | 89 | `result-track:693354bd2bebdb0b2d2dbea0a234b20cbf7caae783f1e4b5f8bf8f257b5fa79a` |
| 11 | `def` | [ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offnm--37ed42890cd1edd6ccd78cf9.md) | 97 | `declaration-track:37ed42890cd1edd6ccd78cf9d988b57f5e084bc08ad50e6a02b27a79a6166d37` |
| 12 | `theorem` | [ofFnM_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offnm-zero--fa92fb89680fa84c6b0ed180.md) | 101 | `result-track:fa92fb89680fa84c6b0ed180a1989f7d6bdeb6ffa95f3a532fd309439ec5676c` |
| 13 | `theorem` | [ofFnM_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offnm-succ--4938e3656db556d2d0732b55.md) | 104 | `result-track:4938e3656db556d2d0732b5519cace9d0d4d12d2d67c0072f8939b3f71214687` |
| 14 | `theorem` | [ofFnM_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offnm-succ--6d97ff8736c1dcfa6e99c229.md) | 111 | `result-track:6d97ff8736c1dcfa6e99c22909661727fb6dee28dd9f8853d25ae7f5d8794ffd` |
| 15 | `theorem` | [ofFnM_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offnm-add--4491567777267c1f190a1916.md) | 118 | `result-track:4491567777267c1f190a19165593bcef8965c5c29d2ec2560b503e589c705376` |
| 16 | `theorem` | [toList_ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/tolist-offnm--7c21c8712de12845680e7552.md) | 136 | `result-track:7c21c8712de12845680e755262466f5bc0baeb4aff47295bc7d20344b8c01981` |
| 17 | `theorem` | [ofFnM_pure_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offnm-pure-comp--04c275f96d07a68bf1eb8926.md) | 143 | `result-track:04c275f96d07a68bf1eb892647c895839d4b0ab37565cd7a02c9ec7f8a7e5e47` |
| 18 | `theorem` | [ofFnM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/offnm-pure--e4495dd0cb7c636e1c7796a0.md) | 150 | `result-track:e4495dd0cb7c636e1c7796a05a2f10e7fca8cc3eb9677c51ecab79555e877c8c` |
| 19 | `theorem` | [idRun_ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Varianta598cbce04994a9ac5d6de810e3281fd60d3e1a932feb57157d5fadf1a2d0954.lean/declarations/idrun-offnm--d149190c55e8dfba85e1fffa.md) | 154 | `result-track:d149190c55e8dfba85e1fffa9635947ce416b6e75e9b1d6adc85bec139f59deb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
