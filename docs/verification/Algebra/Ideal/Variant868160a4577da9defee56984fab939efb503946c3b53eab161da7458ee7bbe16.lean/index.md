# Verification target: GRWTSK.Algebra.Ideal.Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83e36cc75fd5495178c77fe2a591b5a4619a351f",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83e36cc75fd5495178c77fe2a591b5a4619a351f`.

Source path: `GRWTSK/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Operations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Ideal` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matricesOver](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matricesover--a616e87fd6bced64770acad3.md) | 36 | `declaration-track:a616e87fd6bced64770acad3b1fd0da9c17ea2cb53f61c95853601adc8fbc2ff` |
| 2 | `theorem` | [mem_matricesOver](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/mem-matricesover--e5ab917932b53c4a73c4458b.md) | 48 | `result-track:e5ab917932b53c4a73c4458b472694053e1161c3bcb7ef88b40a48a8c9c79755` |
| 3 | `theorem` | [matricesOver_monotone](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matricesover-monotone--0bb8a1fb5996b1266741779d.md) | 51 | `result-track:0bb8a1fb5996b1266741779d71cae5ffe4157fbdc79048aefb4c0949cfa955d0` |
| 4 | `theorem` | [matricesOver_strictMono_of_nonempty](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matricesover-strictmono-of-nonempty--a24edb6f3a806f9d94349360.md) | 54 | `result-track:a24edb6f3a806f9d943493605b31b149d1d3da254add12770e1c6c9768fd7013` |
| 5 | `theorem` | [matricesOver_bot](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matricesover-bot--89dec17d7e4b7f0208becae1.md) | 62 | `result-track:89dec17d7e4b7f0208becae12cf367697e1325f94beeb5dca1be93ef0f17f4d7` |
| 6 | `theorem` | [matricesOver_top](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matricesover-top--ccfa2e737acaa826c9c8dc92.md) | 70 | `result-track:ccfa2e737acaa826c9c8dc928ef6a46cfafa4ea922d4256758bf6f316fa1783e` |
| 7 | `theorem` | [single_mem_jacobson_matricesOver](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/single-mem-jacobson-matricesover--94f768ebdf600ecd78d07c42.md) | 84 | `result-track:94f768ebdf600ecd78d07c428ecbfa2e043e6f588cb54a0ade143ee5f44d303b` |
| 8 | `theorem` | [matricesOver_jacobson_le](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matricesover-jacobson-le--af069cf955dbc6cbb42d5157.md) | 106 | `result-track:af069cf955dbc6cbb42d51572ec575eef6d81e2288799ed3106c9439b78cb6b0` |
| 9 | `def` | [matrix](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matrix--1d0b1d2c3f3e36cc05b13d4c.md) | 128 | `declaration-track:1d0b1d2c3f3e36cc05b13d4cd4c64348c452fc689900ecbd4100d510bd2ef73a` |
| 10 | `theorem` | [matrix_apply](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matrix-apply--4625463e3568b9463ca36675.md) | 138 | `result-track:4625463e3568b9463ca36675094027693901bc169bae0e16b8a65b9ee8808a9b` |
| 11 | `theorem` | [matrix_apply_single](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matrix-apply-single--86483fec429f420c56d44925.md) | 143 | `result-track:86483fec429f420c56d44925668a8fa87749d7eab5291728db8a02091e7b4e2a` |
| 12 | `theorem` | [matrix_monotone](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matrix-monotone--005fd50f9e513efde9973341.md) | 154 | `result-track:005fd50f9e513efde9973341aed99073c5f5535b60615864a3de2eaffcd23c03` |
| 13 | `theorem` | [matrix_injective](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matrix-injective--38002bca750d79fbbfd41e9b.md) | 157 | `result-track:38002bca750d79fbbfd41e9b29529dfc945b064f2bb6364dd34a0553de51ed04` |
| 14 | `theorem` | [matrix_strictMono_of_nonempty](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matrix-strictmono-of-nonempty--9d26e48a2f2effa4daa66471.md) | 162 | `result-track:9d26e48a2f2effa4daa664717a3bfa1eabe2e80312b6298d1c46ed5baafb9ee4` |
| 15 | `theorem` | [matrix_bot](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matrix-bot--f3f55f85039f73591925fe2b.md) | 167 | `result-track:f3f55f85039f73591925fe2b2af88b2bfc03a1d9d19ace3a18bfa9ba2555d1b2` |
| 16 | `theorem` | [matrix_top](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matrix-top--7fca4717e1ba443ff966384e.md) | 171 | `result-track:7fca4717e1ba443ff966384e39d70e4bc5e691ad917d99171b324796977146cc` |
| 17 | `def` | [ofMatrix](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/ofmatrix--9585836b4c46ffa53665fa46.md) | 179 | `declaration-track:9585836b4c46ffa53665fa467f1fd9b4bb5212e8ce7887931598fac48a900b1d` |
| 18 | `theorem` | [ofMatrix_rel](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/ofmatrix-rel--090bb295ad11955de0bc886f.md) | 188 | `result-track:090bb295ad11955de0bc886f3b2055701e76b64d400d9fc92d70a855ef976e05` |
| 19 | `theorem` | [ofMatrix_matrix](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/ofmatrix-matrix--893736f159b6ef02b642e8e8.md) | 192 | `result-track:893736f159b6ef02b642e8e8eca69fe05707a4831b852fb129b5fa458328b694` |
| 20 | `theorem` | [matrix_ofMatrix](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matrix-ofmatrix--fd5a65cbcb1645a68b1332e1.md) | 213 | `result-track:fd5a65cbcb1645a68b1332e13141e8a1df6134dfc7718878b519e24c204f39f1` |
| 21 | `theorem` | [ofMatrix_rel'](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/ofmatrix-rel--69c28da817dde529adf3279f.md) | 225 | `result-track:69c28da817dde529adf3279f596f400b7a47f4e93ad8b68a074322d9e2df4df3` |
| 22 | `theorem` | [coe_ofMatrix_eq_relationMap](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/coe-ofmatrix-eq-relationmap--cd546e2dbb74c7620e9e03e5.md) | 230 | `result-track:cd546e2dbb74c7620e9e03e5ba3dad21bee165d07ecc5c09ef8ecb3c0d225d96` |
| 23 | `def` | [matricesOver](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matricesover--8fdd4b2dd8476af4c4912a39.md) | 254 | `declaration-track:8fdd4b2dd8476af4c4912a3973cc483afa636e1685eafa8f41a9f06cb91b6864` |
| 24 | `lemma` | [mem_matricesOver](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/mem-matricesover--15505eca1bc8882b8bb5e3ee.md) | 258 | `result-track:15505eca1bc8882b8bb5e3eea2b8868c64d4ab9e90ed1f164c977b2213042a02` |
| 25 | `theorem` | [matricesOver_monotone](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matricesover-monotone--7486465d64eadda5adf3810c.md) | 261 | `result-track:7486465d64eadda5adf3810c27bba353491c58709f193c1e3a1add2bc57bd2ab` |
| 26 | `theorem` | [matricesOver_strictMono_of_nonempty](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matricesover-strictmono-of-nonempty--1efcf0f2a556006aa4701551.md) | 264 | `result-track:1efcf0f2a556006aa47015515591dc71101131e08239c09e40bdbfc81aae1fdd` |
| 27 | `theorem` | [matricesOver_bot](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matricesover-bot--40858121144184261562ce7f.md) | 270 | `result-track:40858121144184261562ce7fd951be721f09ee7d181bbc0eb2725301c130727c` |
| 28 | `theorem` | [matricesOver_top](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matricesover-top--25d8630b7c4a04518b1e64d7.md) | 274 | `result-track:25d8630b7c4a04518b1e64d7423d5751e54ef2605f2b1441cf3062b6c705d83a` |
| 29 | `def` | [equivMatricesOver](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/equivmatricesover--0353d3f0095129c98caa373c.md) | 290 | `declaration-track:0353d3f0095129c98caa373c952fcaa7f06cfed47420c52eed130cf28c199246` |
| 30 | `theorem` | [coe_equivMatricesOver_symm_apply](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/coe-equivmatricesover-symm-apply--a19acacaeabdeeda29a759bc.md) | 297 | `result-track:a19acacaeabdeeda29a759bc23c562d3d436c78fa8e0eb1e7fa1d514a0560e18` |
| 31 | `def` | [orderIsoMatricesOver](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/orderisomatricesover--64b85f069dc8adc89e85520e.md) | 313 | `declaration-track:64b85f069dc8adc89e85520e07f337e3282979dc61bda7d47b1fe1fa75d34f4b` |
| 32 | `theorem` | [asIdeal_matricesOver](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/asideal-matricesover--a9b141987522b5d9635406d4.md) | 329 | `result-track:a9b141987522b5d9635406d454eea0bb2d236d0b30524b43043e666f60b75e20` |
| 33 | `lemma` | [jacobson_matricesOver_le](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/jacobson-matricesover-le--370474d81e440bb854b9e421.md) | 344 | `result-track:370474d81e440bb854b9e4215a20f472fdb9d5d390417f20de5b80cb4433512d` |
| 34 | `theorem` | [jacobson_matricesOver](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/jacobson-matricesover--69b0a9c197f9d0afb2cfbd7e.md) | 360 | `result-track:69b0a9c197f9d0afb2cfbd7e4d4b552849beb715deab275c3da06a2789a020e1` |
| 35 | `theorem` | [matricesOver_jacobson_bot](../../../../mathematics/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/declarations/matricesover-jacobson-bot--24ae9ccbf4a7c73cfabd34df.md) | 367 | `result-track:24ae9ccbf4a7c73cfabd34df5226cd2b51fb917ef4bb94996d7639e389a9566a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
