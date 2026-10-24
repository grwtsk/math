# Verification target: GRWTSK.Algebra.Cotangent.Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42a8d8e5698d6b6f5fd223d90318594ea9fcf570",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/index.md) · [Full source](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42a8d8e5698d6b6f5fd223d90318594ea9fcf570`.

Source path: `GRWTSK/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Idempotent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Filtration` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nakayama` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cotangent](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangent--6c0c4f13732f7ae082b13b19.md) | 37 | `declaration-track:6c0c4f13732f7ae082b13b19ea8fcc306a06b1431e381ee4a8e24526d5061faf` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/instance--cbce56c19836edcf7d0657bc.md) | 42 | `declaration-track:cbce56c19836edcf7d0657bc46e80f0d0ad1e85c5e1d90eb9e3bd2eada795c88` |
| 3 | `instance` | [cotangentModule](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangentmodule--488e482ef78ef4e092f0eaa2.md) | 44 | `declaration-track:488e482ef78ef4e092f0eaa252277eab3af9abd00096c672b8777b3c3b347558` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/instance--9dd4152a0f7a132d7c738d17.md) | 46 | `declaration-track:9dd4152a0f7a132d7c738d178d1a6562547395ad54fd54186c41585112d43f6c` |
| 5 | `instance` | [Cotangent.moduleOfTower](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangent-moduleoftower--dda950777fe92323c912cf03.md) | 48 | `declaration-track:dda950777fe92323c912cf039a3e10e2edb342d6ca915cb76664282c5c0c4ee7` |
| 6 | `instance` | [Cotangent.isScalarTower](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangent-isscalartower--1d2cd4f7a394124bd2b1bdb8.md) | 51 | `declaration-track:1d2cd4f7a394124bd2b1bdb8c39c774b9b69c30a7238156d08e824e4aec55be4` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/instance--fc6feafeea209efa1739fc2d.md) | 54 | `declaration-track:fc6feafeea209efa1739fc2d461f829c18608d8b1ea0fee7db71f2765902def2` |
| 8 | `def` | [toCotangent](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/tocotangent--59ad4deef2532f1d4ae821d7.md) | 59 | `declaration-track:59ad4deef2532f1d4ae821d7401f48f50d841b3669a551e46032f2d578195296` |
| 9 | `theorem` | [map_toCotangent_ker](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/map-tocotangent-ker--06173ef4eec007cda0194527.md) | 61 | `result-track:06173ef4eec007cda01945270cbb4d69930976e3cc3a8ea990b925e018266795` |
| 10 | `theorem` | [mem_toCotangent_ker](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/mem-tocotangent-ker--3ceece9adec4e2540711f082.md) | 65 | `result-track:3ceece9adec4e2540711f082bea545345958c7bb72beef1622a2a0c3b2290997` |
| 11 | `theorem` | [toCotangent_eq](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/tocotangent-eq--30f232857669d69419ba28a3.md) | 69 | `result-track:30f232857669d69419ba28a39dc71be73c4235d1866d51df78673cdc8b99fec5` |
| 12 | `theorem` | [toCotangent_eq_zero](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/tocotangent-eq-zero--63371cce63bace0f60c6cad3.md) | 73 | `result-track:63371cce63bace0f60c6cad3367a9b8e44620c11a65bc26de61c4bdbc7d26942` |
| 13 | `theorem` | [toCotangent_surjective](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/tocotangent-surjective--30e85db09cd69d55fc6d3fae.md) | 75 | `result-track:30e85db09cd69d55fc6d3fae5d211f89f9fd55cd9071fa97374aa0fd92219d58` |
| 14 | `theorem` | [toCotangent_range](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/tocotangent-range--564ae35ac4c5c8ad450744e1.md) | 77 | `result-track:564ae35ac4c5c8ad450744e131930ac7817b216933b42d7a609f9766f96f9ab8` |
| 15 | `theorem` | [cotangent_subsingleton_iff](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangent-subsingleton-iff--c3e71c9005db287be76c14b7.md) | 79 | `result-track:c3e71c9005db287be76c14b7738bccce752cc2e8e3c4bbc1df0f1822e6c5d1d2` |
| 16 | `def` | [cotangentToQuotientSquare](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangenttoquotientsquare--36a60e7f875cbe8ab8943340.md) | 90 | `declaration-track:36a60e7f875cbe8ab8943340af544faa8db5c0af13406318d0471153e1f3eb85` |
| 17 | `theorem` | [to_quotient_square_comp_toCotangent](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/to-quotient-square-comp-tocotangent--dae6df49e6d60ac773b5935f.md) | 96 | `result-track:dae6df49e6d60ac773b5935fb20084958c785a243b66ee512b475a958ec38537` |
| 18 | `theorem` | [toCotangent_to_quotient_square](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/tocotangent-to-quotient-square--f2db2831211233de75864691.md) | 101 | `result-track:f2db2831211233de758646917fcd0155ad9dc876752d4db40fc21b9c9692816d` |
| 19 | `lemma` | [Cotangent.smul_eq_zero_of_mem](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangent-smul-eq-zero-of-mem--c3aa00b8cee550bf763f2233.md) | 104 | `result-track:c3aa00b8cee550bf763f223308845be2dc43dfcbaf5b23c18484756369a4f8b6` |
| 20 | `lemma` | [isTorsionBySet_cotangent](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/istorsionbyset-cotangent--44097cff9fd5310ca949b8a0.md) | 110 | `result-track:44097cff9fd5310ca949b8a07bc0aae11390626c0209ae4b17c2af051aaf30d1` |
| 21 | `def` | [cotangentIdeal](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangentideal--bc7a0c92367b2ddd75f4ac24.md) | 115 | `declaration-track:bc7a0c92367b2ddd75f4ac24dfd1c964f2976b9d55b4d9d92ac0135eb46d821f` |
| 22 | `theorem` | [cotangentIdeal_square](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangentideal-square--dc1479848b27d44531141103.md) | 118 | `result-track:dc1479848b27d44531141103169123527147e44c7d959e8358d590881fa8b5ea` |
| 23 | `lemma` | [mk_mem_cotangentIdeal](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/mk-mem-cotangentideal--c2565e5d2594b4d0ff9414f6.md) | 126 | `result-track:c2565e5d2594b4d0ff9414f657108cf0333776390f0835a77d3c41ce3fd2fc19` |
| 24 | `lemma` | [comap_cotangentIdeal](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/comap-cotangentideal--6dd754bc59490794d4c500b0.md) | 132 | `result-track:6dd754bc59490794d4c500b0f63af349c3bbe72382fb8eef724390e609b008fe` |
| 25 | `theorem` | [range_cotangentToQuotientSquare](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/range-cotangenttoquotientsquare--9ffdd32413b7dbfe20517589.md) | 136 | `result-track:9ffdd32413b7dbfe2051758903804ad2b20c31fa5c4bd399793a1d41b87cf71d` |
| 26 | `def` | [cotangentEquivIdeal](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangentequivideal--d2bce1bf1957a5cb79a43511.md) | 147 | `declaration-track:d2bce1bf1957a5cb79a4351172d8f55a984841cb350405e794c83a85d687132d` |
| 27 | `theorem` | [cotangentEquivIdeal_apply](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangentequivideal-apply--40e7da4b110ada452ff39417.md) | 163 | `result-track:40e7da4b110ada452ff39417431b90974e4ea52470e4c03490e56cff5a37165b` |
| 28 | `theorem` | [cotangentEquivIdeal_symm_apply](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangentequivideal-symm-apply--b5adb89e27ac16482632e695.md) | 166 | `result-track:b5adb89e27ac16482632e695a7c7b7d6f6f68792256bcd081a883b4fd2e777b4` |
| 29 | `def` | [_root_.AlgHom.kerSquareLift](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/root-alghom-kersquarelift--92142499b814fe77dc8cb4b0.md) | 180 | `declaration-track:92142499b814fe77dc8cb4b0287d2e53720f6b817e5aabdec63ff21f4635a604` |
| 30 | `theorem` | [_root_.AlgHom.ker_kerSquareLift](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/root-alghom-ker-kersquarelift--c4072ec8c49ff5bb6bd64209.md) | 188 | `result-track:c4072ec8c49ff5bb6bd64209060272c6c1d6e4fc7571f25df3737d3049b6864d` |
| 31 | `instance` | [Algebra.kerSquareLift](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/algebra-kersquarelift--a503b5970533dfbfc4b3adc2.md) | 194 | `declaration-track:a503b5970533dfbfc4b3adc29a297189954a41d3c69472ba410852dfa36338b5` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/instance--a9eea1125709454f6ad69de0.md) | 197 | `declaration-track:a9eea1125709454f6ad69de08b5e3fab6c364809cfd85c1287892810bddf8674` |
| 33 | `def` | [quotCotangent](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/quotcotangent--043a8cf744a1c3b34fcd5f83.md) | 203 | `declaration-track:043a8cf744a1c3b34fcd5f831c53d64967cf0e3856521a5ee5d6566319a86eca` |
| 34 | `def` | [mapCotangent](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/mapcotangent--5997a08464085082ab809a0d.md) | 209 | `declaration-track:5997a08464085082ab809a0db50933bb1fe6f0f284974a419278b072fa20b50f` |
| 35 | `lemma` | [mapCotangent_toCotangent](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/mapcotangent-tocotangent--9c6df1f8ea8f4b50b3b279be.md) | 225 | `result-track:9c6df1f8ea8f4b50b3b279be489ae90a1d1783b730b0c5b15d5811937155e57f` |
| 36 | `abbrev` | [CotangentSpace](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangentspace--5a06e3235a62469a17f28498.md) | 236 | `declaration-track:5a06e3235a62469a17f284980c447d279995840670e8becc4b94550e41042ef7` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/instance--0145fc824469e42b3bf12346.md) | 238 | `declaration-track:0145fc824469e42b3bf12346b9b0dc2ab599060f447e12a026484a3d4aaf61c7` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/instance--3c4cf8cd168a7b24a5e3e108.md) | 240 | `declaration-track:3c4cf8cd168a7b24a5e3e1080910d74f5f32d453b1b5b4ba0e6c2e422e452e73` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/instance--1e9ffbe566e9293ad84ff384.md) | 243 | `declaration-track:1e9ffbe566e9293ad84ff3848be5e096ef3ff45ae712772a8d22e55090fb59ad` |
| 40 | `lemma` | [subsingleton_cotangentSpace_iff](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/subsingleton-cotangentspace-iff--0af501a984bebedc052c001b.md) | 248 | `result-track:0af501a984bebedc052c001b7cdde659b818967d17f92a78e4da8b05358075e2` |
| 41 | `lemma` | [CotangentSpace.map_eq_top_iff](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangentspace-map-eq-top-iff--16d1101a26351832efeffe05.md) | 255 | `result-track:16d1101a26351832efeffe05767a170dfe46321bd3e925095a0e8165b5a171a2` |
| 42 | `lemma` | [CotangentSpace.span_image_eq_top_iff](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/cotangentspace-span-image-eq-top-iff--c8740814b1890ff5dd75182f.md) | 265 | `result-track:c8740814b1890ff5dd75182f63f5cb7c6028a32297e918e4977a8d3ca70f3ead` |
| 43 | `lemma` | [finrank_cotangentSpace_eq_zero_iff](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/finrank-cotangentspace-eq-zero-iff--039fd335895b6cd05a7850a1.md) | 275 | `result-track:039fd335895b6cd05a7850a13362003321e5407fc75702d78c3201fe1827d2c5` |
| 44 | `lemma` | [finrank_cotangentSpace_eq_zero](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/finrank-cotangentspace-eq-zero--71f60c53e5db8cb6212189ef.md) | 279 | `result-track:71f60c53e5db8cb6212189efed641bc1fe62a3e15b21d2ae0ea1c6793ac50c73` |
| 45 | `theorem` | [finrank_cotangentSpace_le_one_iff](../../../../mathematics/Algebra/Cotangent/Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.lean/declarations/finrank-cotangentspace-le-one-iff--bdeab596de59d99e7b9460f7.md) | 284 | `result-track:bdeab596de59d99e7b9460f73fdce5505715327bab4e961ac00b709779754cb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
