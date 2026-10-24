# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cb656b7fefaff79b689922cdf0c672b648a98a9",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cb656b7fefaff79b689922cdf0c672b648a98a9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.Independent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/affinebasis--1594fb7b0a8cc4a946a5e192.md) | 59 | `declaration-track:1594fb7b0a8cc4a946a5e192a4dd8743fe3e58669d8b102987caecdce839c95e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/instance--977c0a1243e7081e1e8491b9.md) | 75 | `declaration-track:977c0a1243e7081e1e8491b9d34d4729270e6ae1875c5e4d2637c984acf71741` |
| 3 | `instance` | [funLike](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/funlike--52853e274952c98eba1ff223.md) | 78 | `declaration-track:52853e274952c98eba1ff223a8872d8f2df53c2cf5809c24e68cc77559af8a9c` |
| 4 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/ext--663227d25eae9c48aeaab68c.md) | 84 | `result-track:663227d25eae9c48aeaab68c379ca6fd86d175b2df89369355e9acbe018590cd` |
| 5 | `theorem` | [ind](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/ind--79d80aed82e80fe4ee27b8b6.md) | 88 | `result-track:79d80aed82e80fe4ee27b8b62daad97c7be4bdc7c0ce3180694e97114786e679` |
| 6 | `theorem` | [tot](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/tot--f4a9f0f251e2a389561891a6.md) | 92 | `result-track:f4a9f0f251e2a389561891a68b39a091617ae09d4245ef0a3f8df19c75aab3b4` |
| 7 | `theorem` | [nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/nonempty--c7cf5a01c30da8e865ce8234.md) | 96 | `result-track:c7cf5a01c30da8e865ce8234658625a9a3befc8a43dd77075f30ebb990a5a557` |
| 8 | `def` | [reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/reindex--f93d734c6644b7748ef7364b.md) | 102 | `declaration-track:f93d734c6644b7748ef7364b373b34189af493427ce96f344d28fab2fdd53468` |
| 9 | `theorem` | [coe_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/coe-reindex--1420821ece19a2fd3ab62b63.md) | 109 | `result-track:1420821ece19a2fd3ab62b63196ddd42192ea825acf60a5b49464e7970512308` |
| 10 | `theorem` | [reindex_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/reindex-apply--b07f852be52da1c6a465e171.md) | 114 | `result-track:b07f852be52da1c6a465e171a2b7cf76d29faf4560f6d44f5fd3bdcd4c511dce` |
| 11 | `theorem` | [reindex_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/reindex-refl--ceb89233ac1eef42b1145017.md) | 119 | `result-track:ceb89233ac1eef42b114501771fdad9d8c626f4ea6d6fff3390dd1cbd155d191` |
| 12 | `def` | [basisOf](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/basisof--c887e4e0273f20c878605d7f.md) | 128 | `declaration-track:c887e4e0273f20c878605d7f903d340586d055c916a213f3d3429ff237e02c09` |
| 13 | `theorem` | [basisOf_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/basisof-apply--e385c915a97a8e0627f26d98.md) | 142 | `result-track:e385c915a97a8e0627f26d985a0e5db6e9eddc35a13ceccea0e9045b45436fd6` |
| 14 | `theorem` | [basisOf_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/basisof-reindex--2fbdcc9db0d2c70e2bcc5072.md) | 147 | `result-track:2fbdcc9db0d2c70e2bcc50729c14851af9b1cbe095fa168ccb3fa14846c03bd2` |
| 15 | `def` | [coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/coord--fc0cb57780d0f878df849896.md) | 155 | `declaration-track:fc0cb57780d0f878df84989606db8965f9c39ab971db654a14c7350c7ba96e6e` |
| 16 | `theorem` | [linear_eq_sumCoords](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/linear-eq-sumcoords--5eeec93a04dda3075ba8da38.md) | 165 | `result-track:5eeec93a04dda3075ba8da38b5a385cf85468180a2fc2531847f3891e2f0de1f` |
| 17 | `theorem` | [coord_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/coord-reindex--67dc1dfd86f14f3711800515.md) | 170 | `result-track:67dc1dfd86f14f3711800515a5cad19662ee2e8844bbbefceb7cf081e7edbce0` |
| 18 | `theorem` | [coord_apply_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/coord-apply-eq--16ca5950d7d0090bbf6f6692.md) | 176 | `result-track:16ca5950d7d0090bbf6f6692d51cdfe367059aca6082d62299c359c44336c166` |
| 19 | `theorem` | [coord_apply_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/coord-apply-ne--46d9c9e7a936fc610d75ec8c.md) | 182 | `result-track:46d9c9e7a936fc610d75ec8cdd28ee2ce892ddc701cd4fbcc2f8de1583bb1025` |
| 20 | `theorem` | [coord_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/coord-apply--7405c57523ebb95568d3df1d.md) | 190 | `result-track:7405c57523ebb95568d3df1dcf8d8d16ae4658db4dd0f6a88d3674c73f1456d3` |
| 21 | `theorem` | [coord_apply_combination_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/coord-apply-combination-of-mem--39a5139b44531bef06b045a9.md) | 195 | `result-track:39a5139b44531bef06b045a9e0cbacdaadc085b22e31ce209778a4d93bf22aae` |
| 22 | `theorem` | [coord_apply_combination_of_not_mem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/coord-apply-combination-of-not-mem--39a962fc7919058ea7c21645.md) | 203 | `result-track:39a962fc7919058ea7c21645f5d2d11cdd508f9941633006103b087b9b68cf73` |
| 23 | `theorem` | [sum_coord_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/sum-coord-apply-eq-one--b87340c9953e12b91ccfcf7a.md) | 211 | `result-track:b87340c9953e12b91ccfcf7a555a3e11b59ae1f1c4efa17b683cd51994fa9323` |
| 24 | `theorem` | [affineCombination_coord_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/affinecombination-coord-eq-self--f9057c5975ef83829959504d.md) | 221 | `result-track:f9057c5975ef83829959504d0fc632efb983f7d80ab6df857ff238724e9643e0` |
| 25 | `theorem` | [linear_combination_coord_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/linear-combination-coord-eq-self--8fc1563412782681be7b08bd.md) | 235 | `result-track:8fc1563412782681be7b08bdd4763d9840e90a34e4e0e837ad06999f9d274b7d` |
| 26 | `theorem` | [ext_elem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/ext-elem--a589f141408f34ad29e934fe.md) | 241 | `result-track:a589f141408f34ad29e934fea61fc13a562da8da1faf6c2b031842274fcaf483` |
| 27 | `theorem` | [coe_coord_of_subsingleton_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/coe-coord-of-subsingleton-eq-one--456b20d84757461654700667.md) | 248 | `result-track:456b20d847574616547006675426508e9c2a45aafc883ed11ff71cf7f1ac25c2` |
| 28 | `theorem` | [surjective_coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/surjective-coord--026e95738734efca17a8389a.md) | 262 | `result-track:026e95738734efca17a8389af9cdcf25eb3ed37af92f2ef8e7a0cbd7c17f72ff` |
| 29 | `def` | [coords](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/coords--a8a3cbbc9e197ccfdcb0da12.md) | 282 | `declaration-track:a8a3cbbc9e197ccfdcb0da12fbd56e5571e3cdb777c36c59bb5254cdc15947a6` |
| 30 | `theorem` | [coords_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/coords-apply--f2f8171af02c88443b3c2b37.md) | 307 | `result-track:f2f8171af02c88443b3c2b37387c783ab80d8acb1418b2a1791aba901b61419b` |
| 31 | `theorem` | [coord_apply_centroid](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/coord-apply-centroid--c6d1bbcf3092d6e4d23870f4.md) | 318 | `result-track:c6d1bbcf3092d6e4d23870f49499ee8e9c9f415797b4d6bd00bc056e2300714a` |
| 32 | `theorem` | [exists_affine_subbasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/exists-affine-subbasis--af624bd3f6600e7ce3545d4b.md) | 325 | `result-track:af624bd3f6600e7ce3545d4bda4ecc4f05daba062ba323bd1be888602f554336` |
| 33 | `theorem` | [exists_affineBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/declarations/exists-affinebasis--45e4293c837b72244e401b29.md) | 334 | `result-track:45e4293c837b72244e401b29d90aa83251620e9bd62452fce8ae32d6dace8afb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
