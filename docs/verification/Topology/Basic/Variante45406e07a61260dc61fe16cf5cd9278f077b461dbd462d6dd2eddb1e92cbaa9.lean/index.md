# Verification target: GRWTSK.Topology.Basic.Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33329dc29183a147bda5f16322814cd720709912",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/index.md) · [Full source](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33329dc29183a147bda5f16322814cd720709912`.

Source path: `GRWTSK/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHaus.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.SubsetProperties` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FintypeCat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Profinite](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/profinite--40d84dcb22aab05119a6abd3.md) | 53 | `declaration-track:40d84dcb22aab05119a6abd3acf8276efab17c0f37a86aa486ba851f75231b34` |
| 2 | `def` | [of](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/of--ef7eda244f0c3e7bd034f38b.md) | 65 | `declaration-track:ef7eda244f0c3e7bd034f38b2abe35e8b6d74ab79530e7e857adacd22183c0bb` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/instance--5746a54e78a5faae108c2156.md) | 70 | `declaration-track:5746a54e78a5faae108c21563aedad652b6991e6d976d829edc47a7f7b510c4a` |
| 4 | `instance` | [category](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/category--936d3648621d50ef64d2d866.md) | 73 | `declaration-track:936d3648621d50ef64d2d866d842ce9203db8cb72db9b86eb8ccce536c1ffea8` |
| 5 | `instance` | [concreteCategory](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/concretecategory--79a52b953a438a8e97ad97e6.md) | 77 | `declaration-track:79a52b953a438a8e97ad97e6fda8cd568dbce9544a44bdbb25e1509fca5f8901` |
| 6 | `instance` | [hasForget₂](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/hasforget--bcc380ec907376a1bc1c2e95.md) | 81 | `declaration-track:bcc380ec907376a1bc1c2e9553727f77f51bb54e694b49448f585dfe66efdae2` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/instance--593225ff47b7a196c35812c6.md) | 85 | `declaration-track:593225ff47b7a196c35812c6c71021a6120208a08bf14dd3fcfd3d0a4f085ac1` |
| 8 | `lemma` | [forget_ContinuousMap_mk](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/forget-continuousmap-mk--08051e2d2cc7b10a88ff8fa6.md) | 90 | `result-track:08051e2d2cc7b10a88ff8fa65984939fefe6a9bb67151d792efde8e38bc291a5` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/instance--2bc9136e780e7c504bc76219.md) | 94 | `declaration-track:2bc9136e780e7c504bc76219e5579079bfc60960c837839dc9cacb3e39b509fa` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/example--ec534743778964b495b8962b.md) | 98 | `declaration-track:ec534743778964b495b8962b881beb8d60ba47ab688a9061afcc79f4a858153b` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/example--3dff1192a535ae7be29e5929.md) | 101 | `declaration-track:3dff1192a535ae7be29e59299b135dde31e4cbbcb7d1792b92723f72c3f03c75` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/instance--5169bbe662d141c8bdb12bfe.md) | 105 | `declaration-track:5169bbe662d141c8bdb12bfe1ade9f91ee5e8ffbf23a56de4e756d1b71bc3b12` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/instance--ae8f056a5e113f7697e33bf1.md) | 109 | `declaration-track:ae8f056a5e113f7697e33bf146db8837735379d75170e109ab29ccf7624c6b52` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/instance--327a833e79bdcc3b99e78f4b.md) | 113 | `declaration-track:327a833e79bdcc3b99e78f4b8217766dd7a311b70774be6f8c62e136b0c592f8` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/instance--02a27700dacf4f42a95df0e6.md) | 117 | `declaration-track:02a27700dacf4f42a95df0e601630991203e1fc6519b51031d6a57ac1c663e38` |
| 16 | `theorem` | [coe_id](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/coe-id--6ed09ded2e4a0edfee39bb83.md) | 129 | `result-track:6ed09ded2e4a0edfee39bb83e00f095e6ce6427f6dd8a8059b23ef66e472ea09` |
| 17 | `theorem` | [coe_comp](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/coe-comp--63685f73f933b4f1d08292cd.md) | 135 | `result-track:63685f73f933b4f1d08292cd33d1ec0025f16369d5da32d490b383d6f9b6bacb` |
| 18 | `def` | [profiniteToCompHaus](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/profinitetocomphaus--86b94eb1a77aa4a5445f3746.md) | 144 | `declaration-track:86b94eb1a77aa4a5445f3746aa431ebf9735a7e532b5b1b2d0e0612d9d2a476e` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/instance--54906baf1612e11ae7cd63f8.md) | 150 | `declaration-track:54906baf1612e11ae7cd63f85eab41c10edb9ec92365f9c223883a08b2b87e58` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/instance--3c1c48220ea1350009b8c977.md) | 153 | `declaration-track:3c1c48220ea1350009b8c977cc66c92f5765d1c42f90f311cb8fd375ae402146` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/instance--1e389c90763bf92d2f0d2b34.md) | 157 | `declaration-track:1e389c90763bf92d2f0d2b342ca9c19af14ab1c3d1616b863846caa38f747b2a` |
| 22 | `def` | [Profinite.toTopCat](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/profinite-totopcat--bedf8cebe220cca811b1ba20.md) | 163 | `declaration-track:bedf8cebe220cca811b1ba209f7ea7ee848f74ba3545de8a4afa44aa459ede85` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/instance--1b66e5a6bd8a2ad2eec61321.md) | 169 | `declaration-track:1b66e5a6bd8a2ad2eec613212dea3bc3df1938a9769a755f0d436ee76028303c` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/instance--095ac5eef5a11057d7f8e2dd.md) | 172 | `declaration-track:095ac5eef5a11057d7f8e2ddc8d771e4019118e57ffaeca95bd47db49e144287` |
| 25 | `theorem` | [Profinite.to_compHausToTopCat](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/profinite-to-comphaustotopcat--bdcbfc3513c1c59521d35e4e.md) | 176 | `result-track:bdcbfc3513c1c59521d35e4ed7d9608dceca0c61a072f2568c0419b476114513` |
| 26 | `def` | [CompHaus.toProfiniteObj](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/comphaus-toprofiniteobj--fcd558ce72887fd182f952d2.md) | 190 | `declaration-track:fcd558ce72887fd182f952d2d5017ee908dad28f87ea986cff41a86706a93f77` |
| 27 | `def` | [Profinite.toCompHausEquivalence](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/profinite-tocomphausequivalence--5ab8b1d483b49c52383684b1.md) | 201 | `declaration-track:5ab8b1d483b49c52383684b11cd06a444b03c17bf4b75c316b93d480a4f495e2` |
| 28 | `def` | [CompHaus.toProfinite](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/comphaus-toprofinite--785f1ab49edea424eae7ef5e.md) | 214 | `declaration-track:785f1ab49edea424eae7ef5e36c1b2a731e153a02437dbde4db5618f351f89a5` |
| 29 | `theorem` | [CompHaus.toProfinite_obj'](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/comphaus-toprofinite-obj--ce2ed73b95f7f269e6f6c2f4.md) | 218 | `result-track:ce2ed73b95f7f269e6f6c2f4adf813ab0d4aad49e2cb48911ebf943a7c7260cb` |
| 30 | `def` | [FintypeCat.botTopology](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/fintypecat-bottopology--629465be447fb537ff11283c.md) | 224 | `declaration-track:629465be447fb537ff11283cb4fbd73e9e7c7e3a8ed5410619d13849a4af0fff` |
| 31 | `theorem` | [FintypeCat.discreteTopology](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/fintypecat-discretetopology--e2fd7636e1216368f98185e7.md) | 231 | `result-track:e2fd7636e1216368f98185e75a5970a75946148024ac51d0f4e863298ebe7126` |
| 32 | `def` | [FintypeCat.toProfinite](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/fintypecat-toprofinite--6b113ffd2e838e6ff904d971.md) | 240 | `declaration-track:6b113ffd2e838e6ff904d971d22c4a0d2d88b85073eac146fc4ee45a11b466be` |
| 33 | `def` | [limitCone](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/limitcone--ddc3206530fc5d486f3abebb.md) | 255 | `declaration-track:ddc3206530fc5d486f3abebb23920ce55f1f6f61c114c89b336d153b87c3ae83` |
| 34 | `def` | [limitConeIsLimit](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/limitconeislimit--1b4c51a62ab41c83c14e11ce.md) | 271 | `declaration-track:1b4c51a62ab41c83c14e11cee20c1630fffca73d16830cc0f824463f8a1a0df0` |
| 35 | `def` | [toProfiniteAdjToCompHaus](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/toprofiniteadjtocomphaus--450675cab872a04299cb5f71.md) | 280 | `declaration-track:450675cab872a04299cb5f71e0933fc6f41adce4c6afdbc7e0c513c1cfed11b6` |
| 36 | `instance` | [toCompHaus.reflective](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/tocomphaus-reflective--5aba6f6ea732785556e3c483.md) | 285 | `declaration-track:5aba6f6ea732785556e3c48396669378daa717ae3529c8e6ea2da4efec516e7e` |
| 37 | `instance` | [toCompHaus.createsLimits](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/tocomphaus-createslimits--3193de462dabf40b75934ca4.md) | 289 | `declaration-track:3193de462dabf40b75934ca44fbd984499d58ee73f390d8afbe1696df313040d` |
| 38 | `instance` | [toTopCat.reflective](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/totopcat-reflective--e852cbb500baae9c6c3e344e.md) | 293 | `declaration-track:e852cbb500baae9c6c3e344edb563206c665a28b50dc89608d48d8e120820d50` |
| 39 | `instance` | [toTopCat.createsLimits](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/totopcat-createslimits--94c49caa1f770c73a8e5cf44.md) | 297 | `declaration-track:94c49caa1f770c73a8e5cf44e84856e5c17cbe2b1d16702737f716730cfc00c0` |
| 40 | `instance` | [hasLimits](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/haslimits--3e5ba280ccc0b89cc3c75bc7.md) | 301 | `declaration-track:3e5ba280ccc0b89cc3c75bc7bc123c83a42b449cfc5e495e8f256f8ed83027a0` |
| 41 | `instance` | [hasColimits](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/hascolimits--cdedfa0610c2a1ad930ba0a8.md) | 305 | `declaration-track:cdedfa0610c2a1ad930ba0a8ed2d2e22c0a95f1570b922536f4ae8e9c131a924` |
| 42 | `instance` | [forgetPreservesLimits](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/forgetpreserveslimits--36082b8741330b091cd6a71b.md) | 309 | `declaration-track:36082b8741330b091cd6a71b493c97e9bca34e298a9ab32758fa3185dfc5d097` |
| 43 | `theorem` | [isClosedMap](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/isclosedmap--e22d832fe82bec1b04efc7e4.md) | 316 | `result-track:e22d832fe82bec1b04efc7e495e1e24ed6b102b8e6629a298128dde3db32964d` |
| 44 | `theorem` | [isIso_of_bijective](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/isiso-of-bijective--977496250052812f5c78b2ae.md) | 321 | `result-track:977496250052812f5c78b2ae369e3aecd033bc27f36a667f8c280fbde295516b` |
| 45 | `def` | [isoOfBijective](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/isoofbijective--005affb6812517b835ac0be0.md) | 327 | `declaration-track:005affb6812517b835ac0be02f8beaa68833aef3f573cb8d6c77a67d761d85c0` |
| 46 | `instance` | [forget_reflectsIsomorphisms](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/forget-reflectsisomorphisms--8e6c6fcd568ffd311df624d6.md) | 332 | `declaration-track:8e6c6fcd568ffd311df624d67977333147e5bd57783a2a7fc1ee347b0001b8e8` |
| 47 | `def` | [isoOfHomeo](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/isoofhomeo--0cdda892cf7222ac6ba433f7.md) | 341 | `declaration-track:0cdda892cf7222ac6ba433f7641c120d7fc74455d7c8f794504edb98ec8cca89` |
| 48 | `def` | [homeoOfIso](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/homeoofiso--1e21f925bc791fa78a277dc5.md) | 348 | `declaration-track:1e21f925bc791fa78a277dc5f63dc00eab945237468b02485b35aba17a5918ad` |
| 49 | `def` | [isoEquivHomeo](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/isoequivhomeo--75155b941882dc17eded1be2.md) | 355 | `declaration-track:75155b941882dc17eded1be27a5f87a4b7e04eed6165d5cfddaadb43257359bc` |
| 50 | `theorem` | [epi_iff_surjective](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/epi-iff-surjective--d63b6dde65ee38022400a4f4.md) | 362 | `result-track:d63b6dde65ee38022400a4f406c25a918ee790bee1df4f73dcc1c776d8a2f3d1` |
| 51 | `theorem` | [mono_iff_injective](../../../../mathematics/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/declarations/mono-iff-injective--2bd5e6cb7ba523bd127fe4a9.md) | 399 | `result-track:2bd5e6cb7ba523bd127fe4a98696bb7f3c1dd9006784ee03e03d8b67c9bba790` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
