# Verification target: GRWTSK.Geometry.DifferentialGeometry.Basic.Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba2001d70aecd37f77d8576635be665896eff63e",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba2001d70aecd37f77d8576635be665896eff63e`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsCovariantDerivativeOn](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/iscovariantderivativeon--8c46122eff3c31b0bb052307.md) | 100 | `declaration-track:8c46122eff3c31b0bb0523073917a4b7e0ced5ca38d2bd30dc861812ef66fba7` |
| 2 | `class` | [ContMDiffCovariantDerivativeOn](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/contmdiffcovariantderivativeon--4b39e74fc2efd2c67f951e05.md) | 116 | `declaration-track:4b39e74fc2efd2c67f951e05b283bcf2f27f6ec757828de2874924a79b847bee` |
| 3 | `lemma` | [mono](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/mono--2ca8233a5cd7cbb7be7d6795.md) | 136 | `result-track:2ca8233a5cd7cbb7be7d6795b59f127c4251b9c55b81037ee4c03e9a8714e04c` |
| 4 | `lemma` | [iUnion](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/iunion--3f85737e0787448588fe0e52.md) | 142 | `result-track:3f85737e0787448588fe0e520d8f5ebd345289f8ceaf028f77f3ad4ceb3727be` |
| 5 | `lemma` | [congr_of_eqOn](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/congr-of-eqon--71245262bf34c4fea79862e3.md) | 161 | `result-track:71245262bf34c4fea79862e3e7f40b587d50a3c4196f6f3bdbb320427ded705c` |
| 6 | `lemma` | [congr_of_eventuallyEq](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/congr-of-eventuallyeq--8689f785c87a4ef041e0a877.md) | 196 | `result-track:8689f785c87a4ef041e0a8778557bd9b6c1be77a3d18c842736d78e340ff0f28` |
| 7 | `lemma` | [zero](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/zero--5a77f79e6c020ad9861afc3e.md) | 213 | `result-track:5a77f79e6c020ad9861afc3e6a8c3cc8246a76fc0e42ac38dd261fe9d6b37600` |
| 8 | `theorem` | [smul_const](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/smul-const--d2618645d831f8248fdf454e.md) | 219 | `result-track:d2618645d831f8248fdf454ef23f72e3a43533f474fab8ea8babbb69cb59d930` |
| 9 | `lemma` | [affine_combination](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/affine-combination--4c3b98003cbef5bf19bdf459.md) | 246 | `result-track:4c3b98003cbef5bf19bdf459b577c45ef650dcaa7cfd5d8a1a8f8e905241bcad` |
| 10 | `lemma` | [_root_.GRWTSK.Geometry.DifferentialGeometry.IsCovariantDerivativeOn.Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.ContMDiffCovariantDerivativeOn.affine_combination](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/root-grwtsk-geometry-differentialgeometry-iscovariantderivativeon-varian--2cc0cadc31f045e58b8415a2.md) | 258 | `result-track:2cc0cadc31f045e58b8415a22e1b2dccb741d63f3344658fe9d48fc2fd240aa8` |
| 11 | `lemma` | [finite_affine_combination](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/finite-affine-combination--8b4ed5f456b1864ae4320999.md) | 271 | `result-track:8b4ed5f456b1864ae4320999619e4a35818bc17311c28b596508d84be25226b8` |
| 12 | `lemma` | [_root_.GRWTSK.Geometry.DifferentialGeometry.IsCovariantDerivativeOn.Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.ContMDiffCovariantDerivativeOn.finite_affine_combination](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/root-grwtsk-geometry-differentialgeometry-iscovariantderivativeon-varian--cfa3604cb0c83af4e4ad2b04.md) | 292 | `result-track:cfa3604cb0c83af4e4ad2b0449b185c7514440ff7bab16a6e7a74d718a7864c3` |
| 13 | `lemma` | [add_one_form](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/add-one-form--0638f8a65aa13cbb45de2e35.md) | 304 | `result-track:0638f8a65aa13cbb45de2e35e6e8aa9cbe48769469c3819c326747f658e863a1` |
| 14 | `def` | [differenceAux](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/differenceaux--634ae0a9a47c1bdb8e81d599.md) | 318 | `declaration-track:634ae0a9a47c1bdb8e81d59952cb9a3d38868c94c69b9760093708d8656daeea` |
| 15 | `theorem` | [differenceAux_tensorial](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/differenceaux-tensorial--0ced28efbbb82cac85f00e09.md) | 329 | `result-track:0ced28efbbb82cac85f00e094b3919f5975b710e7931abd663c5433b737b0867` |
| 16 | `def` | [difference](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/difference--5d995819da1b9a2b6652c50c.md) | 347 | `declaration-track:5d995819da1b9a2b6652c50c2e6800977d114c5cf390edf92502af04d152b567` |
| 17 | `lemma` | [difference_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/difference-apply--52d44d05e94afd399acdf8c0.md) | 354 | `result-track:52d44d05e94afd399acdf8c00d6b03e771800dd9be5f822ec2a17e87471fb7b1` |
| 18 | `structure` | [CovariantDerivative](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/covariantderivative--a1b93c533e7c5f70dd68f4b4.md) | 374 | `declaration-track:a1b93c533e7c5f70dd68f4b436be2519aa6f8eaef4af2cbe7d8b9910a1b50c14` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/instance--2ab687e12897067308b1c876.md) | 384 | `declaration-track:2ab687e12897067308b1c876236e383d9290cbffaff98045a4f25012be69c05c` |
| 20 | `lemma` | [isCovariantDerivativeOn](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/iscovariantderivativeon--3d583ef7c25ce49c2ff7d0c5.md) | 388 | `result-track:3d583ef7c25ce49c2ff7d0c543f20f2ad072934d1bf4450d5f7390f8b6e3017a` |
| 21 | `lemma` | [zero](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/zero--ebb2f3ea526bda605258fe14.md) | 393 | `result-track:ebb2f3ea526bda605258fe145b821d67df20ea8305e77f4d013b364e70703bbd` |
| 22 | `def` | [ofIsCovariantDerivativeOnOfOpenCover](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/ofiscovariantderivativeonofopencover--22c3e775ee4cedf466fc9f2a.md) | 399 | `declaration-track:22c3e775ee4cedf466fc9f2abb200f5b78e83844b09427214f638f162900e8f7` |
| 23 | `lemma` | [of_isCovariantDerivativeOn_of_open_cover_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/of-iscovariantderivativeon-of-open-cover-coe--f15d939b9d508ddbcb85af8a.md) | 409 | `result-track:f15d939b9d508ddbcb85af8adbd61d7104e8ef4d8a60fc7333793f0b942d1f64` |
| 24 | `class` | [ContMDiffCovariantDerivative](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/contmdiffcovariantderivative--499e70c403c356f487b0ac63.md) | 420 | `declaration-track:499e70c403c356f487b0ac634d427b6c2c8c917c72d0ac09d199855237b5330f` |
| 25 | `lemma` | [contMDiffCovariantDerivativeOn_univ_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/contmdiffcovariantderivativeon-univ-iff--487205152094e92d50241911.md) | 425 | `result-track:487205152094e92d50241911b3d8f923f30d6509a9c78ff2e11131e9c499856c` |
| 26 | `def` | [affineCombination](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/affinecombination--7fbab69edc4270e795e688f2.md) | 448 | `declaration-track:7fbab69edc4270e795e688f243972c9dda00b17f7be1bcf3fe78dace1c774962` |
| 27 | `def` | [finiteAffineCombination](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/finiteaffinecombination--77793c6f8e8161af6600995d.md) | 457 | `declaration-track:77793c6f8e8161af6600995d824b34e02e8738d50f04bc11ab3157ff1d5f9e51` |
| 28 | `lemma` | [ContMDiffCovariantDerivative.affineCombination](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/contmdiffcovariantderivative-affinecombination--748bdac75ef16556220bbd1f.md) | 467 | `result-track:748bdac75ef16556220bbd1fb665d2107f16b531381e61711810b522ca7dac3e` |
| 29 | `lemma` | [ContMDiffCovariantDerivative.finiteAffineCombination](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/contmdiffcovariantderivative-finiteaffinecombination--63b337be65036ba483e0eed7.md) | 480 | `result-track:63b337be65036ba483e0eed7234f132a6d40fb93a1f192b0513bdd20088c576b` |
| 30 | `def` | [addOneForm](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/addoneform--b0207d165123cc4653ea2683.md) | 498 | `declaration-track:b0207d165123cc4653ea2683f4699ca10d5ceeaca02c6271f62802bf6e857cb1` |
| 31 | `def` | [difference](../../../../../mathematics/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/declarations/difference--fe40a70ef32c0ddefebf1b1b.md) | 512 | `declaration-track:fe40a70ef32c0ddefebf1b1bfd37d239ab9c6dd96e3639367423ad27afd2bacb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
