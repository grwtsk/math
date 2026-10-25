# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a827dc4563a3afaefd4e052606efc0d052a06e1",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a827dc4563a3afaefd4e052606efc0d052a06e1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.WHNF` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DischargeResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/dischargeresult--97bfdcdcb1dff806f550c04f.md) | 29 | `declaration-track:97bfdcdcb1dff806f550c04f8cc598f4d60409ae7f73e8c7c4c0f8ab06019ee0` |
| 2 | `def` | [discharge?'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/discharge--cf5c6fe806e1e33bb7866898.md) | 40 | `declaration-track:cf5c6fe806e1e33bb7866898b1ecd8a858a9246013ab4b2a99ec607660ce0b3a` |
| 3 | `def` | [synthesizeArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/synthesizeargs--f610dcb4b4d130cad6143ab6.md) | 66 | `declaration-track:f610dcb4b4d130cad6143ab6cdb24abb8b75046dc8d271fa909f38ba2af90b4b` |
| 4 | `def` | [useImplicitDefEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/useimplicitdefeqproof--c32bc300eec799ccbd0c44a7.md) | 117 | `declaration-track:c32bc300eec799ccbd0c44a797832f841199d49ef3435841756e22b5534b9512` |
| 5 | `def` | [tryTheoremCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/trytheoremcore--1f011c233844f6c3b68f6a7a.md) | 123 | `declaration-track:1f011c233844f6c3b68f6a7ae3f94bf84b74e9efd14d384d817147192e788354` |
| 6 | `def` | [tryTheoremWithExtraArgs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/trytheoremwithextraargs--17f7056d7b00643acf74c04f.md) | 186 | `declaration-track:17f7056d7b00643acf74c04fc9d0052ca2fc4b2538a847ba84cf33b9260912a4` |
| 7 | `def` | [tryTheorem?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/trytheorem--2f6a20d44ad44caba12ffd17.md) | 195 | `declaration-track:2f6a20d44ad44caba12ffd171d3b6f3e67ebb927d3117dd3e5b4a545aa565e44` |
| 8 | `def` | [rewrite?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/rewrite--c6cc80b80172aacf2998a93a.md) | 215 | `declaration-track:c6cc80b80172aacf2998a93a045938c59d1aacd521f92fe77abf3fda55946d5b` |
| 9 | `def` | [simpUsingDecide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/simpusingdecide--11a8aa43a3500c117a86eb1a.md) | 294 | `declaration-track:11a8aa43a3500c117a86eb1ac6390b87b91cd63e3048438ae5f9015f178b3641` |
| 10 | `def` | [simpArith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/simparith--265112c0a89efa0d94da99f0.md) | 311 | `declaration-track:265112c0a89efa0d94da99f064be913773ccf6f7bbdeef7cbd2319372f2edd9b` |
| 11 | `def` | [simpMatchDiscrs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/simpmatchdiscrs--3139d02afb0f92ea516a84ba.md) | 344 | `declaration-track:3139d02afb0f92ea516a84ba042ce096f84eb9ea97377fe623a6d059b8c702d6` |
| 12 | `def` | [simpMatchCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/simpmatchcore--406e630350d8e2584028431c.md) | 376 | `declaration-track:406e630350d8e2584028431ce9c75594ae21301affd2d39df45dc5f2b9ef1c51` |
| 13 | `def` | [simpMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/simpmatch--b8276357e9cc12b4af3a396d.md) | 384 | `declaration-track:b8276357e9cc12b4af3a396d1f04d317a187606c238736576206109454e816e9` |
| 14 | `def` | [rewritePre](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/rewritepre--6627912b385f99871634783b.md) | 397 | `declaration-track:6627912b385f99871634783b49bc84c241b5e638488cfe0860d854cfe39b2bc9` |
| 15 | `def` | [rewritePost](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/rewritepost--d33a5a7dd15fc4368e3ce242.md) | 403 | `declaration-track:d33a5a7dd15fc4368e3ce242cee932cd0c42f0cd70391df516b5f7c66b22035e` |
| 16 | `def` | [drewritePre](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/drewritepre--6d0efc5826c4dcd5f1864296.md) | 409 | `declaration-track:6d0efc5826c4dcd5f186429650ab6308804598535092d25949b6096b5abed2c8` |
| 17 | `def` | [drewritePost](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/drewritepost--60ee7af7aefe1553a0de4f11.md) | 415 | `declaration-track:60ee7af7aefe1553a0de4f11f1997a45e67df271a01ec281206749976537ad65` |
| 18 | `def` | [dpreDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/dpredefault--3fd695dde47bbc346016a7a4.md) | 421 | `declaration-track:3fd695dde47bbc346016a7a4cba3ecbe20652f185c789ddd82c8c7843cfe3389` |
| 19 | `def` | [dpostDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/dpostdefault--125b764163285ed8e591340d.md) | 425 | `declaration-track:125b764163285ed8e591340dde2fd6fcf25b6085bd1cc9ced59d46da9481470d` |
| 20 | `def` | [dischargeGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/dischargeground--f36a2a5a9f611ea4a0109e05.md) | 432 | `declaration-track:f36a2a5a9f611ea4a0109e0555cdaea1f10dd9a4bcfc92cc8c04a651204b519b` |
| 21 | `def` | [sevalGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/sevalground--ac68916452537728ce6fa4ed.md) | 445 | `declaration-track:ac68916452537728ce6fa4ede01ad7834f846ea8ec1b580550b3c8e271dee2f0` |
| 22 | `def` | [preSEval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/preseval--4c784ae2068a49c67e5775b9.md) | 476 | `declaration-track:4c784ae2068a49c67e5775b9b9b89b24a1ae597212e1e22c129266e606efbbb2` |
| 23 | `def` | [postSEval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/postseval--1e806afabfc33b35e6c40691.md) | 481 | `declaration-track:1e806afabfc33b35e6c40691ddb25e0428340804b97ae9e306bbb3759d6d71ff` |
| 24 | `def` | [mkSEvalMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/mksevalmethods--482858db8f008ac098ddb96e.md) | 486 | `declaration-track:482858db8f008ac098ddb96e985589dcd04290089344b693e1874017f45907e5` |
| 25 | `def` | [mkSEvalContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/mksevalcontext--45a0c2c1ab83cbb6e9347976.md) | 497 | `declaration-track:45a0c2c1ab83cbb6e9347976c0c4bda45d014f31d39fae9cab10bad5e36c7a2b` |
| 26 | `def` | [seval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/seval--dcfe07fce7bf99c958d143b0.md) | 509 | `declaration-track:dcfe07fce7bf99c958d143b01cffa3caf70e45d151fc3ccd251d7209251a8988` |
| 27 | `def` | [simpGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/simpground--c67b12fd597a65f7ac37e979.md) | 525 | `declaration-track:c67b12fd597a65f7ac37e979a932644ef20c8c557636f6429f04b18d3ba16b5f` |
| 28 | `def` | [preDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/predefault--34bbc5d3beafc5cd8e0c5bbf.md) | 544 | `declaration-track:34bbc5d3beafc5cd8e0c5bbf9f5e33674f542e864291974a374fac6a3f7c8c03` |
| 29 | `def` | [postDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/postdefault--add5d3c4d048d57f38ab5528.md) | 550 | `declaration-track:add5d3c4d048d57f38ab55283e919b1e30f3c913d96c723f11551b591b6677dc` |
| 30 | `def` | [isEqnThmHypothesis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/iseqnthmhypothesis--f21910e8247813643040d74c.md) | 576 | `declaration-track:f21910e8247813643040d74ca3da53cd9f5920d90525a137b06f5245906c695f` |
| 31 | `def` | [dischargeUsingAssumption?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/dischargeusingassumption--5207da477e731efc7be190d1.md) | 584 | `declaration-track:5207da477e731efc7be190d1e14d106584c20cd077aefce174b17681ca9646eb` |
| 32 | `def` | [dischargeEqnThmHypothesis?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/dischargeeqnthmhypothesis--28bcb2f65cda2a9bbbc46645.md) | 603 | `declaration-track:28bcb2f65cda2a9bbbc4664572fd38ba8d3af85640e20d42444650c0dad736b3` |
| 33 | `def` | [dischargeRfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/dischargerfl--f1abd089e5df82bfb0834801.md) | 632 | `declaration-track:f1abd089e5df82bfb083480153963882925edb6aa64f156d41d477c78e138459` |
| 34 | `def` | [dischargeDefault?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/dischargedefault--3c2110ea759edb9812a900e7.md) | 645 | `declaration-track:3c2110ea759edb9812a900e72231a0eddf2ffd4647aa1f16c4467d21cddee69f` |
| 35 | `abbrev` | [Discharge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/discharge--02e838e1292916b35945af25.md) | 658 | `declaration-track:02e838e1292916b35945af2528b0832750ab4d5b6464e8b90578d394628b117e` |
| 36 | `def` | [mkMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/mkmethods--5aa9b547cddec4b6f82bc20b.md) | 660 | `declaration-track:5aa9b547cddec4b6f82bc20b08f18089e09ef99c3a5fa2f4e98943ec2dd7dc64` |
| 37 | `def` | [mkDefaultMethodsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/mkdefaultmethodscore--6480f04fd6839b523fcd3a1d.md) | 669 | `declaration-track:6480f04fd6839b523fcd3a1dffa469856211d74f98aaea44a336d0538ceb1ecd` |
| 38 | `def` | [mkDefaultMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/declarations/mkdefaultmethods--cf18f53ac9471c704bc58da1.md) | 672 | `declaration-track:cf18f53ac9471c704bc58da1b5ba3ecd79df391ec23fe60a19f703670286dd6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
