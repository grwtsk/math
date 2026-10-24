# Verification target: GRWTSK.Algebra.Inequalities.Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5091082914e43ff8638443cf8f516c459cb4e3cd",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5091082914e43ff8638443cf8f516c459cb4e3cd`.

Source path: `GRWTSK/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuccessIfFailWithMsg` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.OfScientific` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/test-sorry--d55b056e43c451a6a3a53443.md) | 24 | `declaration-track:d55b056e43c451a6a3a5344312f9cec63a94c34afd2eb8d71c5e408ebf025976` |
| 2 | `axiom` | [Real](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/real--e7ef45919644cb77369d82b2.md) | 30 | `declaration-track:e7ef45919644cb77369d82b27b02c4c8851b1e491b3dfa1fedbaeac037231525` |
| 3 | `axiom` | [Real.field](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/real-field--1b4d8ccc49bde539371529bd.md) | 32 | `declaration-track:1b4d8ccc49bde539371529bda0ce4852a8bfc7e98d87842ba107f88fa2c0aa42` |
| 4 | `axiom` | [Real.linearOrder](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/real-linearorder--5a1cb96570108a5d8326bf2c.md) | 33 | `declaration-track:5a1cb96570108a5d8326bf2cb5fd4fe5aaa7ea6835dfe29811eafc58c5710b8c` |
| 5 | `axiom` | [Real.isStrictOrderedRing](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/real-isstrictorderedring--99ebacaa6a856454235bf780.md) | 34 | `declaration-track:99ebacaa6a856454235bf780c6b63096286ba0c0b78c87764f69f243272d6bf0` |
| 6 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--d646ce83d2abfee2d7656ce4.md) | 38 | `declaration-track:d646ce83d2abfee2d7656ce47962352f64a843c54950c79da4479d4c76b7e445` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--9bcb34421ab95c8c45e7fe83.md) | 40 | `declaration-track:9bcb34421ab95c8c45e7fe83a7bfb94ea6925763d809df986bb5a33afddf2a88` |
| 8 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--b8aefade6a5baaa5f86129d7.md) | 41 | `declaration-track:b8aefade6a5baaa5f86129d75df415ba1e83b0b3a2ad128aed653b76cfe103d7` |
| 9 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--02d3674fa414cf6a86a8ec9c.md) | 43 | `declaration-track:02d3674fa414cf6a86a8ec9c1187dbb316f6d82bcd5ca441888b09110a26a367` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--189642d72bb21ad72b97b890.md) | 45 | `declaration-track:189642d72bb21ad72b97b890cfb422b90b146566921b8fb4aad9ca5a4d73ce3a` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--2907ec7d797438ac4999b0e4.md) | 48 | `declaration-track:2907ec7d797438ac4999b0e49dd9b1bb195171f5fdacc4f546239f0cd67ff73b` |
| 12 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--37be117a541afbc67f52eeb9.md) | 50 | `declaration-track:37be117a541afbc67f52eeb94e960999793c3fc69324cf7405939155440538c9` |
| 13 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--ecfe405ba0148491ae859781.md) | 51 | `declaration-track:ecfe405ba0148491ae8597816f924da309ea741bf8f7b7dbdef189f2ac6fefe0` |
| 14 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--048d1c598c2398e2f5fe0726.md) | 53 | `declaration-track:048d1c598c2398e2f5fe072660b4d593b77faa7e3c49865784b3c27076c0d9db` |
| 15 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--e1fe6be576d937a457b21a06.md) | 55 | `declaration-track:e1fe6be576d937a457b21a066d4eac62e9f3378e3b053076a1ea8637808c5ef4` |
| 16 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--791724ad5dd3565649076a0f.md) | 57 | `declaration-track:791724ad5dd3565649076a0f891c05fd3f79ebc5bb55f637bca2f6300d112ecf` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--4c03e48f3c14d8e74f90eef4.md) | 61 | `declaration-track:4c03e48f3c14d8e74f90eef45bebee501c740fe56103bc2fc0faad28e935b787` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--cef193ad0e2ff3159fd6acd7.md) | 65 | `declaration-track:cef193ad0e2ff3159fd6acd7328ed5977b3ad779448ea12d24c118fbed5144c8` |
| 19 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--4d2cd825c09e020ca994b5ca.md) | 67 | `declaration-track:4d2cd825c09e020ca994b5cac2f569a3f61068924aaed95d0fad80587fe835e1` |
| 20 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--d354830c1afa638f445dde95.md) | 69 | `declaration-track:d354830c1afa638f445dde9511be8372923e73ec76404067d5ca474cf3f5c831` |
| 21 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--fa41b346dc35ebb9ef5da52c.md) | 71 | `declaration-track:fa41b346dc35ebb9ef5da52cb6488f5c16e63aba7b4672917c53269f8ae37206` |
| 22 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--415600fb6ddbeaa5627216dd.md) | 73 | `declaration-track:415600fb6ddbeaa5627216dd3df2db04e287ab7e85c54116b6ed05f1b21f35fb` |
| 23 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--24720c7ab4d721b04d6f2e6e.md) | 75 | `declaration-track:24720c7ab4d721b04d6f2e6e01fdf9026849207b6a7ba19b6fdb09a953d9fc86` |
| 24 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--2a49ab0ec03b5fa746e926dd.md) | 77 | `declaration-track:2a49ab0ec03b5fa746e926ddbc6bdb3dd1908a2ecac633ea41bfec0917978aef` |
| 25 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--4323c8d95eb732730424be44.md) | 81 | `declaration-track:4323c8d95eb732730424be44605425ef60c1816077778c0f139390d5480ec88a` |
| 26 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--f77443ef05615ca199689c3c.md) | 84 | `declaration-track:f77443ef05615ca199689c3c1440b89f0e3cdad28e0a65bbb8a80fdd7b777b2f` |
| 27 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--a7209b02a1042d9d86e3be59.md) | 87 | `declaration-track:a7209b02a1042d9d86e3be59ba2dd4e99b49711a1489f7ac6351b7e88e5fb9c3` |
| 28 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--c4b43f6b266548a3d8234b5d.md) | 89 | `declaration-track:c4b43f6b266548a3d8234b5ddbd5a598da17275cfef44d540720046a9ec17879` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--9595bcfc05602a9a3feaa24a.md) | 91 | `declaration-track:9595bcfc05602a9a3feaa24acaf6eb7f405527efb96418627cf919e8a633b58e` |
| 30 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--ed54a891befc61e1780ca725.md) | 93 | `declaration-track:ed54a891befc61e1780ca725a07bfc29a4c62e0c0ec7b48e5916f312e59e3560` |
| 31 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--ada75cb7393ecaf74c45be13.md) | 95 | `declaration-track:ada75cb7393ecaf74c45be1361df7bf6bea61808b2e4dce00720e634922890b3` |
| 32 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--27a461ed68225d09b50e2d80.md) | 97 | `declaration-track:27a461ed68225d09b50e2d80c422087611a37b76bbb73943c4f523a6b7fee6cd` |
| 33 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--62691a2a9452cb12a3ac85d0.md) | 99 | `declaration-track:62691a2a9452cb12a3ac85d079743304dc4f2f2463e91c4945ce8236e1a5eeff` |
| 34 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--0255f1f3d8b4a841e03692a8.md) | 103 | `declaration-track:0255f1f3d8b4a841e03692a8ad74e1e1377de97a082aecf41e29117851739f8a` |
| 35 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--9f589f13ca91f59de57df975.md) | 105 | `declaration-track:9f589f13ca91f59de57df975af47b9d0f15e8882af05411d1d42215ba3654c2d` |
| 36 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--d0edbcdc3074fc6c4faad1f0.md) | 107 | `declaration-track:d0edbcdc3074fc6c4faad1f04361a30edb67bd517857214f54cb367c095660ac` |
| 37 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--de7313db930b6610d0590fc7.md) | 110 | `declaration-track:de7313db930b6610d0590fc72b219c25d3157d2ac31efd015867da7e65437a53` |
| 38 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--435ffc05710fc2c4f4efa097.md) | 113 | `declaration-track:435ffc05710fc2c4f4efa097a10617aa30a2c85cbec9e27c6e987f0c645fb1a2` |
| 39 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--af58d38a3cc6f84ef49949d1.md) | 120 | `declaration-track:af58d38a3cc6f84ef49949d15a296cf03cb14285a1713163e6bda7315c77ceab` |
| 40 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--2c11d6b415dcd5c641181d63.md) | 124 | `declaration-track:2c11d6b415dcd5c641181d63b6af60e95f0842a71390ff06f029d358ab5401af` |
| 41 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--14de6eade157e1602d43dfff.md) | 133 | `declaration-track:14de6eade157e1602d43dfff54b10ab1d203385a0eba01fec4aa236d3fee6de0` |
| 42 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--8274d52a59cde1dc91dab109.md) | 141 | `declaration-track:8274d52a59cde1dc91dab1099bd7d72178a877aa36f5fc92a49f5841c26efcb4` |
| 43 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--a95fd00d9c6a5d08044118b3.md) | 145 | `declaration-track:a95fd00d9c6a5d08044118b355d7ae77f5bec5bf2544fe688e68e3a9e1372753` |
| 44 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--8b0e85f48c0e1f4a487f66be.md) | 150 | `declaration-track:8b0e85f48c0e1f4a487f66be73fdf026fae08db64207fbb2f32dc6877c63915d` |
| 45 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--f26a6201ec406dc2b11d36d3.md) | 152 | `declaration-track:f26a6201ec406dc2b11d36d3d4f91096defaff5046668ee1c39d14bb976f4b9e` |
| 46 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--f80b7749b26c416fc49233e3.md) | 153 | `declaration-track:f80b7749b26c416fc49233e378982a22064945e2b293fae1948052fa44c8872f` |
| 47 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--f43ac8f7bcc31a746568a2e8.md) | 154 | `declaration-track:f43ac8f7bcc31a746568a2e8a2689f5f80282615c20c635bc96b84406a1ef653` |
| 48 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--8d8f6b20c0df15490677f732.md) | 156 | `declaration-track:8d8f6b20c0df15490677f732d2f381f68d5c86e0e30fd1050a338cb72600289b` |
| 49 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--fb9b66d6de169fd827bf56c0.md) | 162 | `declaration-track:fb9b66d6de169fd827bf56c0ea9079c934cee3e33728b453c749eeb837141ab3` |
| 50 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--9b953678ef2af7caf1e49f01.md) | 167 | `declaration-track:9b953678ef2af7caf1e49f014bc399e21a231eb948e827b05d846cc5b80e4b11` |
| 51 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--be437f058593abf07c066d05.md) | 174 | `declaration-track:be437f058593abf07c066d0581d6cb1e1ddc5df39951e5460d0a31c5ddb4a5b6` |
| 52 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--fa188ff0a90fe8ae3fe7ee66.md) | 184 | `declaration-track:fa188ff0a90fe8ae3fe7ee662850e29c1f7d5e085d74793fc56fb1e73a0f7acc` |
| 53 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--227d19592b6194b2fc83ed3f.md) | 191 | `declaration-track:227d19592b6194b2fc83ed3f36ffddb9d43307392a3c604f8b3743209478f0b6` |
| 54 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--4331ee1ece99a2ec7bc05b43.md) | 197 | `declaration-track:4331ee1ece99a2ec7bc05b43d3408c58253ab6b237cd4ac150cc9e47186ecf64` |
| 55 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--0c9f94bcaf6d6c23c5558bf6.md) | 203 | `declaration-track:0c9f94bcaf6d6c23c5558bf6e88097ff39e0f59ec856b076359fbcfdd431502c` |
| 56 | `axiom` | [f](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/f--29ec20aff2662d6b2e1f42f6.md) | 208 | `declaration-track:29ec20aff2662d6b2e1f42f63c46f9d5e2c05a8ff863510883c77f650877695b` |
| 57 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--a30650937842342563f81ce9.md) | 210 | `declaration-track:a30650937842342563f81ce93563e097d94214bb69fa35e24959c4cbb58b3ab8` |
| 58 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--008e8ca7658695f5e4fb8f58.md) | 216 | `declaration-track:008e8ca7658695f5e4fb8f5885249885a78b14ce9d611ae2e5f12db3d6a2ef2f` |
| 59 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--24bb6c271a2ead892526a79e.md) | 222 | `declaration-track:24bb6c271a2ead892526a79ede79890898935cd86881c3d1a6a595a487d0a380` |
| 60 | `def` | [dontUnfoldMe](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/dontunfoldme--7dcf18d25a2a6fcbde24ccec.md) | 227 | `declaration-track:7dcf18d25a2a6fcbde24ccecfb4cdcaed77bf4ad21e6016d0f787bf19881cd98` |
| 61 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--209fa6a78ab2f31deffaba98.md) | 232 | `declaration-track:209fa6a78ab2f31deffaba988c2cf4aa47d565f63cd67a0dd829535894501f0e` |
| 62 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--c476081cc3f054e13b76131a.md) | 239 | `declaration-track:c476081cc3f054e13b76131a49ca98cd8568ed83a657a70d0f50de6fa280410d` |
| 63 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--cbc490302214dc0014e43933.md) | 244 | `declaration-track:cbc490302214dc0014e43933f207744347c32202c7d38044d04202c28ccdd3ec` |
| 64 | `example` | [(anonymous)](../../../../mathematics/Algebra/Inequalities/Variant5702220b3150828a36c5007de5b833d5c5b13a4834aa086f69e921a39b086e3b.lean/declarations/example--bce6a29a9ca4be20293c175c.md) | 252 | `declaration-track:bce6a29a9ca4be20293c175ca60871d966d01bad6112f9597b84ca39b3f6b5bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
