# Verification target: GRWTSK.Algebra.Basic.Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e207585179dfed92de981abbe05c3a24f4ef291",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e207585179dfed92de981abbe05c3a24f4ef291`.

Source path: `GRWTSK/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Seq.Seq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GenContFract.Pair](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/gencontfract-pair--900f5d02e0781a2a297a94d3.md) | 55 | `declaration-track:900f5d02e0781a2a297a94d34daab7c3d02a8ef244c2fe88b7270cbe0f18725c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/instance--8c305d38647ea1314e09136e.md) | 71 | `declaration-track:8c305d38647ea1314e09136ef8e645a293f8816e2a7d2a74ab4346848cbd8185` |
| 3 | `def` | [map](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/map--27a9f8676955877a28a090fc.md) | 75 | `declaration-track:27a9f8676955877a28a090fce7e0ba787c1e8362ad8eb492d73048797edc74ef` |
| 4 | `def` | [coeFn](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/coefn--75680ace256145e836e117fe.md) | 85 | `declaration-track:75680ace256145e836e117fe8b393eccc3874fcc50780bf163701507e36ae11d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/instance--a7b92fa7241a27119b93f195.md) | 88 | `declaration-track:a7b92fa7241a27119b93f1952db8c34b076f575c1bf2d0380c4a4d777e8c26ac` |
| 6 | `theorem` | [coe_toPair](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/coe-topair--d7c896ce82c43dd0c032062d.md) | 92 | `result-track:d7c896ce82c43dd0c032062d2ae1ef1dbe9b03622e76be5c7fc7ef1dd00d4c3a` |
| 7 | `structure` | [GenContFract](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/gencontfract--7f7e96564b7429db9a934de6.md) | 113 | `declaration-track:7f7e96564b7429db9a934de6027a94c50ecb455e3300ead582abc8cf5d6141cb` |
| 8 | `def` | [ofInteger](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/ofinteger--8ab92b42efa88173e4b03dc4.md) | 124 | `declaration-track:8ab92b42efa88173e4b03dc46315c15a7462fdf3369194c216af6052f402677a` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/instance--cf8a8c75d7d31461c5df25b4.md) | 127 | `declaration-track:cf8a8c75d7d31461c5df25b4ad834aab346e8c282b369a39b6abc0cfa32a72a1` |
| 10 | `def` | [partNums](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/partnums--a7b41a56602a4b6f9877e88b.md) | 131 | `declaration-track:a7b41a56602a4b6f9877e88bdc7ed3b1118c1831e8967ae797dd75698e3ac26c` |
| 11 | `def` | [partDens](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/partdens--bf174d65bf11b1af099d037e.md) | 135 | `declaration-track:bf174d65bf11b1af099d037ed68bd22b5470586d8b3e42ce8558d1b5bcf522e3` |
| 12 | `def` | [TerminatedAt](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/terminatedat--7f966e7b40086fc209b3dff0.md) | 139 | `declaration-track:7f966e7b40086fc209b3dff0df3af0650d7bb9435296f59e07ebf9037f8e706f` |
| 13 | `instance` | [terminatedAtDecidable](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/terminatedatdecidable--ddd7edc946975ed72c4e0f0b.md) | 143 | `declaration-track:ddd7edc946975ed72c4e0f0b272a21f26b8a6f432384c24995ee06eb8c34b418` |
| 14 | `def` | [Terminates](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/terminates--46f8980ccb18ee660307100e.md) | 149 | `declaration-track:46f8980ccb18ee660307100e7ca56e1d8234ae9fbec0a28e409a7b78177c139b` |
| 15 | `def` | [coeFn](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/coefn--5272b02a098ef263504e0515.md) | 162 | `declaration-track:5272b02a098ef263504e0515ab6d771cb40efc265e443a6613bb56471ae18c68` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/instance--274a265b9332d7180111666f.md) | 166 | `declaration-track:274a265b9332d7180111666f4245e36cf96b71fe61e62fd641abd77fae07541e` |
| 17 | `theorem` | [coe_toGenContFract](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/coe-togencontfract--6286100656bf3c0594f8b47d.md) | 170 | `result-track:6286100656bf3c0594f8b47d64a7b18ec40943a9aa57a4febcbff7d16dba8dc0` |
| 18 | `def` | [GenContFract.IsSimpContFract](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/gencontfract-issimpcontfract--4b5959b6037424ac1a48bfbc.md) | 188 | `declaration-track:4b5959b6037424ac1a48bfbc5929bc64aac2ed2097914830624dff271958e432` |
| 19 | `def` | [SimpContFract](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/simpcontfract--8f935e1ee17401d16a84bdef.md) | 205 | `declaration-track:8f935e1ee17401d16a84bdefe644ab52f7d782770afcfe70fbea6fee4b01386d` |
| 20 | `def` | [ofInteger](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/ofinteger--bd4da80be05f7474a4d87c17.md) | 214 | `declaration-track:bd4da80be05f7474a4d87c17ba6de81ca6892570129caa0635bdf095b20a0af9` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/instance--6be735cc7feadb690477cf84.md) | 217 | `declaration-track:6be735cc7feadb690477cf84ed5af0350162202c05a797345a0079135e5b4e23` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/instance--28332e5cb04ea25347f7fe5c.md) | 221 | `declaration-track:28332e5cb04ea25347f7fe5c2b4bbb1fa4192c140fdb93794d4785c87dc2dd46` |
| 23 | `def` | [SimpContFract.IsContFract](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/simpcontfract-iscontfract--dfb5345f198bb7914ee5dd9f.md) | 230 | `declaration-track:dfb5345f198bb7914ee5dd9f0d4e90f61c0396a7379bdaf50abd1ea4cd1443e6` |
| 24 | `def` | [ContFract](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/contfract--c822c489be4fca7cc4f6f79f.md) | 239 | `declaration-track:c822c489be4fca7cc4f6f79f8a2094ae5f003b05f20e24764af1e4c3bc5875b4` |
| 25 | `def` | [ofInteger](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/ofinteger--ea4534eb0788fcfd82744601.md) | 249 | `declaration-track:ea4534eb0788fcfd82744601d2d532e1024446fcbefd64571e4473c177d45298` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/instance--d3ded765d54b3fd50808f353.md) | 252 | `declaration-track:d3ded765d54b3fd50808f353420a122282310de0943d85c6f9a911c67fbed90f` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/instance--783d07ccff51223106401375.md) | 256 | `declaration-track:783d07ccff5122310640137573124a2323dfa94c49a2fbf0c39f34029e3d748f` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/instance--2d18eb78778b41664456c08b.md) | 260 | `declaration-track:2d18eb78778b41664456c08b15ad9f1e6761e5ca8b6a46d1ccc181f5637d77a5` |
| 29 | `def` | [nextNum](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/nextnum--eb96db74f8a71797e1e4c8e9.md) | 291 | `declaration-track:eb96db74f8a71797e1e4c8e9dd2742ec4c1cac6ca26705c6c2120cd4b0e82685` |
| 30 | `def` | [nextDen](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/nextden--34931799d564a0a98355424e.md) | 297 | `declaration-track:34931799d564a0a98355424e79cd39fa081c906781377b2481270d0d57abd746` |
| 31 | `def` | [nextConts](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/nextconts--d6ef5c96785dde7af1d4f436.md) | 304 | `declaration-track:d6ef5c96785dde7af1d4f4362f8dd433ca8547d3dd649f89a471c69430e09ab1` |
| 32 | `def` | [contsAux](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/contsaux--1dec350f0bf9d5d9cefb9bed.md) | 308 | `declaration-track:1dec350f0bf9d5d9cefb9bed9f3ba460b779e81a05387468230f31b1b084b823` |
| 33 | `def` | [conts](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/conts--24ba362215416639ed553137.md) | 317 | `declaration-track:24ba362215416639ed553137ef4a86b4b4380492715d96e4bbae8c9699981199` |
| 34 | `def` | [nums](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/nums--5f31a54b7aa2a73f1a240b49.md) | 321 | `declaration-track:5f31a54b7aa2a73f1a240b4978dfbf52dbdf3472461b117dcaebcb9c71c16aa8` |
| 35 | `def` | [dens](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/dens--25598760eb53e79d19b598f5.md) | 325 | `declaration-track:25598760eb53e79d19b598f5e52c4ba9eb1b616b621c04abb0b40ebdbc38c93a` |
| 36 | `def` | [convs](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/convs--8387b14dcc2426c98b623a5f.md) | 329 | `declaration-track:8387b14dcc2426c98b623a5f20bd378bc038be93dd4eaa0c9962399632d7775e` |
| 37 | `def` | [convs'Aux](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/convs-aux--4426c763bde19a43074045bc.md) | 337 | `declaration-track:4426c763bde19a43074045bc3249cd597cedc6b7bd62d8442d0b3526e7110959` |
| 38 | `def` | [convs'](../../../../mathematics/Algebra/Basic/Variant789e48640ca1648e786e7e4d5f20558d0c7e23d2a265740fb0bbf4d8975361f8.lean/declarations/convs--69da7c79352d3ab2fc51b13b.md) | 348 | `declaration-track:69da7c79352d3ab2fc51b13b4433287350d7adafb377d809416a734d7caffe77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
