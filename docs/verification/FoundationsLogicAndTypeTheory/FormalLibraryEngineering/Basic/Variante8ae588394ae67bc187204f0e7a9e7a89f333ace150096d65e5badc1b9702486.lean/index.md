# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9b846f3b675413135d44a3b549fd1463d5e0368",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9b846f3b675413135d44a3b549fd1463d5e0368`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Rewrite` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Alias` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Elab.Binders` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [brackets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/brackets--9173fc3e19b7a226137dd9d9.md) | 35 | `declaration-track:9173fc3e19b7a226137dd9d9f40ea8f1fcea9b37871ca6b94b6bf1d636282cee` |
| 2 | `def` | [mapPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/mapprefix--5d685843647c1b62e3f527eb.md) | 49 | `declaration-track:5d685843647c1b62e3f527ebec0c90085d6470fcb8c5defcb772c8e6c9171f8d` |
| 3 | `def` | [fromComponents](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/fromcomponents--9ebd65e7bf87a08ccfd7865c.md) | 59 | `declaration-track:9ebd65e7bf87a08ccfd7865ca3c90f27b67be7c5eed10bea7c8d04e4618a8161` |
| 4 | `def` | [updateLast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/updatelast--8ea752df1c20c33466250596.md) | 66 | `declaration-track:8ea752df1c20c33466250596fdc9a5a6da96e9f36199ee5d6090dcb1c88b781c` |
| 5 | `def` | [lastComponentAsString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/lastcomponentasstring--3087c6e6343f39f27b9d5c1f.md) | 72 | `declaration-track:3087c6e6343f39f27b9d5c1f3cc677f6ea7cc6dfcc13ce54760a39210338717e` |
| 6 | `def` | [splitAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/splitat--0400c93c768777da54e125a6.md) | 80 | `declaration-track:0400c93c768777da54e125a65a57fd50933db963c53afaab49bce5e13cc97908` |
| 7 | `def` | [isPrefixOf?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/isprefixof--df1180bd8d0da901276e275c.md) | 87 | `declaration-track:df1180bd8d0da901276e275c537a9849b46ce17cbaa315813e35b1ca3fb6e7af` |
| 8 | `def` | [isBlackListed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/isblacklisted--d6479fc69a208aa3c0837175.md) | 98 | `declaration-track:d6479fc69a208aa3c0837175d9aa432ac9530eb932ae2e705c1cedcc992ad4bc` |
| 9 | `def` | [isDef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/isdef--1b57f322a0bc064dd6cac6c5.md) | 113 | `declaration-track:1b57f322a0bc064dd6cac6c515926f2db8ca4a06b9c173e92fbe59d08dcde41f` |
| 10 | `def` | [isThm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/isthm--d91b2d6251e44951c6a405ef.md) | 118 | `declaration-track:d91b2d6251e44951c6a405eff9eec746f6737d8f3d4620b519603b2ed44bd3d3` |
| 11 | `def` | [updateConstantVal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/updateconstantval--ed57c3dd7b4ded7e3e9be4e8.md) | 124 | `declaration-track:ed57c3dd7b4ded7e3e9be4e8de287f2a0b20aa95cfdeab0aee5174c0f2dad4c4` |
| 12 | `def` | [updateName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/updatename--375791b1bf20dc8a3e701dce.md) | 135 | `declaration-track:375791b1bf20dc8a3e701dce84433e16de3d8776d9b3c9b1cf86cd82d9562c06` |
| 13 | `def` | [updateType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/updatetype--6bea00fc94ba3dc8be09232d.md) | 139 | `declaration-track:6bea00fc94ba3dc8be09232d74f6223f5400079f77508c576b8725da2d47c53c` |
| 14 | `def` | [updateLevelParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/updatelevelparams--ce55cd0965bd60dd990bb3a7.md) | 143 | `declaration-track:ce55cd0965bd60dd990bb3a7692f80904a1a9c48a3faf810174e4fefb058b788` |
| 15 | `def` | [updateValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/updatevalue--2351214d1929b25bf363a7cc.md) | 148 | `declaration-track:2351214d1929b25bf363a7cca4a483bdf061bb0ca194f2484c72ea907733f555` |
| 16 | `def` | [toDeclaration!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/todeclaration--09c8efc3da8af1a9a1ae3ea2.md) | 155 | `declaration-track:09c8efc3da8af1a9a1ae3ea2a002c19626d57d1cbb73d30af1565e3515d86ae9` |
| 17 | `def` | [mkConst'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/mkconst--67c402908d4509ac401b3dff.md) | 170 | `declaration-track:67c402908d4509ac401b3dff2ba3cb8d6b40a24a96bd3c5f3a7f78188fd0f5ed` |
| 18 | `def` | [bvarIdx?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/bvaridx--1e831b53be5e34bf15627b78.md) | 177 | `declaration-track:1e831b53be5e34bf15627b78b33c8d24708640f0b45b0379c413429331d8162a` |
| 19 | `def` | [getAppAppsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/getappappsaux--ca920e12b625cc112f77ea95.md) | 182 | `declaration-track:ca920e12b625cc112f77ea95cd3aa50650da3fe582efed6300d62ca3a30b720c` |
| 20 | `def` | [getAppApps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/getappapps--ad2d20654c0ea07ddef10b89.md) | 190 | `declaration-track:ad2d20654c0ea07ddef10b898ea884494e37c05b7915e673f8ecced32b3402f8` |
| 21 | `def` | [eraseProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/eraseproofs--8a949242052a91e80fed892d.md) | 204 | `declaration-track:8a949242052a91e80fed892d12115e06af44a117d72f926a5ecce7d5fcd15bd5` |
| 22 | `def` | [type?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/type--fb7efe5bb8b0c16a2008a60c.md) | 213 | `declaration-track:fb7efe5bb8b0c16a2008a60c9615a410424b47f33434c087b7cc4efebd9b4d98` |
| 23 | `def` | [isConstantApplication](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/isconstantapplication--776b5730d9dadc528f8bd87f.md) | 220 | `declaration-track:776b5730d9dadc528f8bd87fcb3b6dedc290e3544bd55ddb9097675636d671ad` |
| 24 | `def` | [letDepth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/letdepth--5e255884b71c629502ef2578.md) | 231 | `declaration-track:5e255884b71c629502ef2578357a9614b15712fbd4bc791b7e4d18aa87ae7f5f` |
| 25 | `def` | [ensureHasNoMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/ensurehasnomvars--151099a1c609222063889ce6.md) | 239 | `declaration-track:151099a1c609222063889ce63f10717a8cdf9e591eac0e2a43cb00159b832244` |
| 26 | `def` | [ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/ofnat--d79cf2aa68ac4bc98284c9a5.md) | 246 | `declaration-track:d79cf2aa68ac4bc98284c9a58c92f22d6990d26193eeb19911ba928761ea61fd` |
| 27 | `def` | [ofInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/ofint--78e8945dd5e03300ca23675d.md) | 251 | `declaration-track:78e8945dd5e03300ca23675d1d3f7e0e5cf842745ae1c65f597ba35acc4068de` |
| 28 | `def` | [numeral?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/numeral--17fc9ce2d9fc6f8c60f3b0dd.md) | 263 | `declaration-track:17fc9ce2d9fc6f8c60f3b0dd3281e22b5fb9014d31ea1631f2dfed8487a9d02c` |
| 29 | `def` | [zero?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/zero--342d5cecfc0c1356b5d685d1.md) | 277 | `declaration-track:342d5cecfc0c1356b5d685d170b7f726d75f322df5ab15cc3718b19bb11213af` |
| 30 | `def` | [ne?'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/ne--13c392aabee2fc82ab80ba26.md) | 284 | `declaration-track:13c392aabee2fc82ab80ba2639220c25bda043572b10e455b8e30662899e301a` |
| 31 | `def` | [le?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/le--7c8806d61ea45ec2c3db83ca.md) | 290 | `declaration-track:7c8806d61ea45ec2c3db83ca7e2e592d60aab16a3a2124d2308ff9e59038322b` |
| 32 | `def` | [lt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/lt--0de95f007999323bcbc27382.md) | 297 | `declaration-track:0de95f007999323bcbc2738285686004a0aa9cdf55482c594c2695636fffbf42` |
| 33 | `def` | [sides?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/sides--963f510f44fe105c96d23964.md) | 306 | `declaration-track:963f510f44fe105c96d23964e3fd07a079593425f980c3394f9435696ee79b5c` |
| 34 | `def` | [modifyAppArgM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/modifyappargm--ec98bf40ce991ffc83fb3d0c.md) | 318 | `declaration-track:ec98bf40ce991ffc83fb3d0c4363b8641a08055bbf7665294cfee3245e7f3093` |
| 35 | `def` | [modifyRevArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/modifyrevarg--d121853f308917e2098ffc33.md) | 323 | `declaration-track:d121853f308917e2098ffc33d8ffff4d3d3efb3e1e929332a4ffef7e358870d3` |
| 36 | `def` | [modifyArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/modifyarg--4778d2db66583bb9b6aae99d.md) | 330 | `declaration-track:4778d2db66583bb9b6aae99db9079c9a3e1abbb09bb113608d6163c13c8ef9f7` |
| 37 | `def` | [setArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/setarg--2263909ec28168c84e492e87.md) | 335 | `declaration-track:2263909ec28168c84e492e87d1579226be3f98de1b66e16e75121e606e7048e9` |
| 38 | `def` | [getRevArg?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/getrevarg--780620d6b7ff558d06913230.md) | 338 | `declaration-track:780620d6b7ff558d069132304d0cb9965b2184332adb1b0c70abd90a7d6121ff` |
| 39 | `def` | [getArg?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/getarg--96dc3ed38103e2af7f8118f1.md) | 344 | `declaration-track:96dc3ed38103e2af7f8118f15d44835bb3e403df636dd824a8f414379ca3c746` |
| 40 | `def` | [modifyArgM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/modifyargm--d3517938292a7ad89729bb84.md) | 349 | `declaration-track:d3517938292a7ad89729bb8417532b5462e744a127128a7773667829200a5ebc` |
| 41 | `def` | [renameBVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/renamebvar--5515920fd388ed4c87c9662e.md) | 356 | `declaration-track:5515920fd388ed4c87c9662ef8b479affc9960919b2a8a3d13190e5abeb46952` |
| 42 | `def` | [getBinderName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/getbindername--2df68f62b3dcd4e8fe9f272f.md) | 369 | `declaration-track:2df68f62b3dcd4e8fe9f272fe356774ef58172795bfa0d3e726860b888d65ff0` |
| 43 | `def` | [addLocalVarInfoForBinderIdent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/addlocalvarinfoforbinderident--fcf621773f8e9bbd9d41e75e.md) | 376 | `declaration-track:fcf621773f8e9bbd9d41e75e7678feea39148008f31938229bcc854abb6b38fe` |
| 44 | `def` | [mkDirectProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/mkdirectprojection--dc34da64fffed6816478653d.md) | 386 | `declaration-track:dc34da64fffed6816478653d2646a7fce9d6cc587335a5cbaf9a49333b35f482` |
| 45 | `def` | [mkProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/mkprojection--d8f6d115cd89610ddb76cf31.md) | 395 | `declaration-track:d8f6d115cd89610ddb76cf31028ea97c47186a82598a6e28312c5909fd5a304c` |
| 46 | `def` | [reduceProjStruct?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/reduceprojstruct--ba9d315a0c6388398f8e6394.md) | 410 | `declaration-track:ba9d315a0c6388398f8e63942c76e6943f5e3ce6deaa8350191b1a28f47b70b2` |
| 47 | `def` | [containsConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/containsconst--66799427c0d2b4e9ec5a9730.md) | 432 | `declaration-track:66799427c0d2b4e9ec5a973071c25eb05cd4e768d3a65bf5eb3ea35d91ad17a7` |
| 48 | `def` | [rewrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/rewrite--b95f14b3f4bf64cd0c74de90.md) | 441 | `declaration-track:b95f14b3f4bf64cd0c74de907cc653295952653c0c2e57af94805972c2e43488` |
| 49 | `def` | [rewriteType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/rewritetype--723ad8dd4fee64bfea3cb707.md) | 452 | `declaration-track:723ad8dd4fee64bfea3cb707aa8a5a0eaaeb720a635d6a3701aff5190106f104` |
| 50 | `def` | [forallNot_of_notExists](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/forallnot-of-notexists--4b49fec04bd1afd37c51372e.md) | 459 | `declaration-track:4b49fec04bd1afd37c51372e51ca6892b235244b53636ddc244df8ee565a6076` |
| 51 | `def` | [getFieldsToParents](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/declarations/getfieldstoparents--7c31973dc7e765b2779e44f3.md) | 490 | `declaration-track:7c31973dc7e765b2779e44f380ce10e9400b2518d1e3b57932d1b3a78bf96215` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
