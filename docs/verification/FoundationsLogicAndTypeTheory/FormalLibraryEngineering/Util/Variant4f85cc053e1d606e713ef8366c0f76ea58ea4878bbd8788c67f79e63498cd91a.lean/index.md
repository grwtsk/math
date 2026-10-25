# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "179c51f20925d8f9bc9c5ea85994abef10997844",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `179c51f20925d8f9bc9c5ea85994abef10997844`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Simp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [get'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/get--fb63b5667f7a355ad069f033.md) | 16 | `declaration-track:fb63b5667f7a355ad069f033e7d173219a6611247dff975336991f8fa49fd6bb` |
| 2 | `def` | [modify'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/modify--d84966ff43c3d1f59bdae642.md) | 19 | `declaration-track:d84966ff43c3d1f59bdae6429f1dd93938f098ce79273b7fce7aa1a586bc71a7` |
| 3 | `def` | [checkMaxSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/checkmaxsteps--6a2192cba3033135c01d7c84.md) | 22 | `declaration-track:6a2192cba3033135c01d7c8479f78079056391bfcc396050cd50800b1948cc93` |
| 4 | `def` | [incSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/incsteps--09542a2fc099a3278241d04d.md) | 25 | `declaration-track:09542a2fc099a3278241d04de78bb97ee40ab7a8c3dacec1cb2d2f311a2391b6` |
| 5 | `structure` | [ACM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/acm-context--821ff3c0b7848168f67cadb6.md) | 28 | `declaration-track:821ff3c0b7848168f67cadb6929419b75999dd4a564e9b21e39d1310b8ef0b97` |
| 6 | `class` | [MonadGetStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/monadgetstruct--cdbbe474554c734933e5de61.md) | 31 | `declaration-track:cdbbe474554c734933e5de61e0ba8b2847f7d0d88ec474c787976b5aa4284c9e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/instance--b97a141daf99d18324f4dc78.md) | 37 | `declaration-track:b97a141daf99d18324f4dc78c48c1b6c050f9d9e4d74340e16184b6b77d3c400` |
| 8 | `abbrev` | [ACM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/acm--b7474676e49d4fe004f0b82e.md) | 40 | `declaration-track:b7474676e49d4fe004f0b82efbd4764c0e10f3635f2487aeeaa151402b34182a` |
| 9 | `abbrev` | [ACM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/acm-run--5df007096a6652f57fb299b9.md) | 42 | `declaration-track:5df007096a6652f57fb299b99cd5fb3a7e852e459fb54f62fc46f0c0bdd8afd6` |
| 10 | `abbrev` | [getOpId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/getopid--0df66c146c44beb3a3d217b1.md) | 45 | `declaration-track:0df66c146c44beb3a3d217b100c8c4eacc60cc6df8242417e4e76908365b2707` |
| 11 | `def` | [ACM.getStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/acm-getstruct--31812c9e5f9b40ccad7d06cf.md) | 48 | `declaration-track:31812c9e5f9b40ccad7d06cfe8e791fb235f2ba9369940311afaa9f78a197d8e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/instance--c2ae1aad7a95f9fa6f044d7c.md) | 56 | `declaration-track:c2ae1aad7a95f9fa6f044d7c8b603382b1e8f386ae71687c340eb1133a5eabb7` |
| 13 | `def` | [modifyStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/modifystruct--ae4a65e3eabb440e3fbecb1c.md) | 59 | `declaration-track:ae4a65e3eabb440e3fbecb1c1024b6b9cf1b4aa693f44d9e5f3a9585fa4a11ae` |
| 14 | `def` | [getOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/getop--bc80abf849548ccbfab7745d.md) | 63 | `declaration-track:bc80abf849548ccbfab7745dcf344be6f6c8688353bbd3150f59a25b91572e16` |
| 15 | `def` | [notAssoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/notassoc--5ca996bcaf0101613c4c5217.md) | 66 | `declaration-track:5ca996bcaf0101613c4c5217139f579b8601a7e3b4a0cf826ade44f8dbf1a5e9` |
| 16 | `def` | [isArithOpInOtherModules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/isarithopinothermodules--b762937b0bc3726cf23be396.md) | 73 | `declaration-track:b762937b0bc3726cf23be396614aa79637081e9c7267a1cc9ffe8180927e1773` |
| 17 | `def` | [getTermOpIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/gettermopids--1a1ef6289e3f8de5a2deac58.md) | 84 | `declaration-track:1a1ef6289e3f8de5a2deac58441a5a18840d2105e838c4e50e0623464ebc1eb6` |
| 18 | `def` | [insertOpId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/insertopid--02ce98360b97718074242448.md) | 87 | `declaration-track:02ce98360b977180742424488ef5f3d324b440ecb06984f1fde059e5c92d3059` |
| 19 | `def` | [addTermOpId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/addtermopid--4db07f5a9b48c55cd29b3475.md) | 103 | `declaration-track:4db07f5a9b48c55cd29b34754a533e2730ea39e77276be086f8d4ac62f0e84d8` |
| 20 | `def` | [mkVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/mkvar--bb3440e2db7b771972f4fb3a.md) | 107 | `declaration-track:bb3440e2db7b771972f4fb3abbdade2bb7eb9d6fb30e17ba4265f58ba74b1be9` |
| 21 | `def` | [getOpId?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/getopid--aec255f03e6960fe42c80c58.md) | 120 | `declaration-track:aec255f03e6960fe42c80c58abeb3dbe954e7860cae57bd1b781d28cc1fd3f74` |
| 22 | `def` | [isOp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/isop--cf05eb7467c5045055f8993c.md) | 182 | `declaration-track:cf05eb7467c5045055f8993ce1bb942543ec99f83f2e2fd5042c0a91a1201a06` |
| 23 | `def` | [isCommutative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/iscommutative--ef72cfcbfed2910b2b933070.md) | 187 | `declaration-track:ef72cfcbfed2910b2b93307078042e265e1b014b611aa321ae3b5eb26c0dc959` |
| 24 | `def` | [hasNeutral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/hasneutral--0f260b3235df7c3d0162465b.md) | 190 | `declaration-track:0f260b3235df7c3d0162465bcbfb69f005605a1cd35068490b443fd85289d513` |
| 25 | `def` | [isIdempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant4f85cc053e1d606e713ef8366c0f76ea58ea4878bbd8788c67f79e63498cd91a.lean/declarations/isidempotent--f59c738b1e29fb27eca019c3.md) | 193 | `declaration-track:f59c738b1e29fb27eca019c34e615107f70d9c56611ba3cfc886f864ca968a70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
