# Verification target: GRWTSK.Analysis.MeasureTheory.FunProp.Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44e5e8c4a2ab539522f856f65543de37c8233ad4",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44e5e8c4a2ab539522f856f65543de37c8233ad4`.

Source path: `GRWTSK/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Trigonometric` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foo](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/foo--2c9c4894b355b3871260e570.md) | 19 | `declaration-track:2c9c4894b355b3871260e570258451d85c55bd6df2aa452ffca48a90f9bd5ca8` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--a4d8781b2a0f9dddffb764f6.md) | 21 | `declaration-track:a4d8781b2a0f9dddffb764f65443a18f9e8cd23f24554addcb8fae06b4921275` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--077886a9210ddfa12dced322.md) | 24 | `declaration-track:077886a9210ddfa12dced3224e2ac4abfbaf7c7c2bbc5fdd877c8bd3a27631f3` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--b8b278b4041b41a2ae648ae1.md) | 28 | `declaration-track:b8b278b4041b41a2ae648ae1e1e100d9bf1e12dec3fe38169c3eef1352015f68` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--356e01913584f1cce224e58a.md) | 31 | `declaration-track:356e01913584f1cce224e58a6e822ba60f8bf7ba841e9346fa95b01a0375deb9` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--8ef36fab0b86ce68dca624db.md) | 34 | `declaration-track:8ef36fab0b86ce68dca624db28aa00c35440e93c8a0b215bd94af800205c2c27` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--4fe438480f83fa3f75f65735.md) | 37 | `declaration-track:4fe438480f83fa3f75f657358775fd017ec0f09bc5160fc419bec150d6c290d3` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--00baa94f7d4577e6696b8264.md) | 41 | `declaration-track:00baa94f7d4577e6696b8264000ecf37e611eb4112dd222e3717d189f51e7345` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--ffdee48dc8b44f67bbc6d17a.md) | 42 | `declaration-track:ffdee48dc8b44f67bbc6d17af3ea03381aca7a8cda6919e8c4d8400a6e3c598e` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--ba1ec56176b78e3df89e9dc0.md) | 43 | `declaration-track:ba1ec56176b78e3df89e9dc001eb0ccda2f98626bb12079bc8baa331a5cfe8f9` |
| 11 | `theorem` | [ContinuousOn.log'](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/continuouson-log--e599851cb7e47ab451f4d06d.md) | 48 | `result-track:e599851cb7e47ab451f4d06d67957edb1b09d4f4df6083609cad032951fa8987` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--d84e8c54be505ac3a83d4ccd.md) | 51 | `declaration-track:d84e8c54be505ac3a83d4ccd69005d1fbb23eed3d56f04bd596ea2fbd76c525b` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--8275cf5e55732d53985f1519.md) | 55 | `declaration-track:8275cf5e55732d53985f151988abd683ac52864f341b8abea282aae3e07c3d79` |
| 14 | `def` | [S](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/s--3efce083ffd2878db0d86882.md) | 60 | `declaration-track:3efce083ffd2878db0d86882c839726e715000444d99fe29315d52ec0f70c79c` |
| 15 | `def` | [T](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/t--80d318be95233db27202aab3.md) | 64 | `declaration-track:80d318be95233db27202aab388144a8ba321fd6ae3d7354d85c2f400d002385c` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--54e66aee1b7f2e18017d01b3.md) | 66 | `declaration-track:54e66aee1b7f2e18017d01b341e24cf9e7e159f6c401aa53eb319a99bc1741d9` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--4eca9c518e2af9e42b862b00.md) | 71 | `declaration-track:4eca9c518e2af9e42b862b005473962d97cb9f4de2dee1774cd74a84c95237b4` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--dacdef577bd1d299b8f4b1c9.md) | 75 | `declaration-track:dacdef577bd1d299b8f4b1c9d63d981d276ed15444ee9e1a1d820d13274c37ab` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--cdf7866a4b78f2a9c5a9539c.md) | 79 | `declaration-track:cdf7866a4b78f2a9c5a9539c8aed2dfaface01b6162b85328d6e17c61b9e6ea3` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--c3897f102ff0636bf10d0998.md) | 83 | `declaration-track:c3897f102ff0636bf10d099857e56f565ad8f4b570a3ab64a7caf26e77d2e53f` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--9e746d383af774ed413c2243.md) | 87 | `declaration-track:9e746d383af774ed413c2243f467dc71eec304d4d496cd274745885deba1526a` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--1b608d3d59f6e077c4a2a69b.md) | 90 | `declaration-track:1b608d3d59f6e077c4a2a69b33b29834e1e012ddbe48254615c9a48fdce57f3a` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--6a44c029ee49640c43faa0b5.md) | 99 | `declaration-track:6a44c029ee49640c43faa0b55ee606b05c0860d4447ecfb343c96c4dd9e1e899` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--2a978fac17637202c4e4e63c.md) | 101 | `declaration-track:2a978fac17637202c4e4e63c100563694978742dadafe9857c1a01265e81b352` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--942aa2d664aa2083de975667.md) | 104 | `declaration-track:942aa2d664aa2083de975667001fff6d8510da691b1373f85a02fc45a1c70efc` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--1d7163031aa2ffc66a55f16b.md) | 108 | `declaration-track:1d7163031aa2ffc66a55f16b60376841ee3277708fc5d134bce7b171854e456f` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--9e09bfc857a815a165ae5033.md) | 110 | `declaration-track:9e09bfc857a815a165ae50335c13a5571dc1e382a3e5d1fd77b43cb12e11a7bc` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--f729c8e9c26147a1ede593fa.md) | 113 | `declaration-track:f729c8e9c26147a1ede593faf1fe9a9184890a6ac156db72845b1bd7a498df0d` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--7e32139fb52067746db1a7aa.md) | 115 | `declaration-track:7e32139fb52067746db1a7aa91bc057357a2973d723f150ef8d9137e7098269c` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--7fb9f80aff9d7a59bc4dbff5.md) | 118 | `declaration-track:7fb9f80aff9d7a59bc4dbff5a78a6e8846c6552ac74572cd66fa43b55a2bebb5` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--9499ec091800a0ea05271d24.md) | 121 | `declaration-track:9499ec091800a0ea05271d24bed6530a0b75989afc37ba8ef5b02ff7ecec15c7` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--4b204058492e72859aa3f1ec.md) | 123 | `declaration-track:4b204058492e72859aa3f1ec9d1fc48ddfe1a0be24f8e07c6421c78d65fdf688` |
| 33 | `theorem` | [t1](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/t1--3f3a707e281d75825acab41d.md) | 127 | `result-track:3f3a707e281d75825acab41dbbbff9062a4249581f4f265795dd6306b098deb1` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--d95b408cffd66a798238277b.md) | 129 | `declaration-track:d95b408cffd66a798238277b621f788ab89b83163c125a2a20f0edd8ee67e42f` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--16c5d93c495cd9888b55264e.md) | 142 | `declaration-track:16c5d93c495cd9888b55264e30bcf12a86edb9a8ec80ff90cb143b675873e815` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--9f5d7bad5f41477947af414f.md) | 152 | `declaration-track:9f5d7bad5f41477947af414f9105df4e7ac986f109b2fde0b20a71ee23f0bc00` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant993d98c6472124393cc7f2239f8b49798d29ccbc51a3522bce4f62b52a9638a0.lean/declarations/example--f859758d5fb6089f60ca7815.md) | 156 | `declaration-track:f859758d5fb6089f60ca7815445e25dd19d8913fc85cfe0484b0505f681048ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
