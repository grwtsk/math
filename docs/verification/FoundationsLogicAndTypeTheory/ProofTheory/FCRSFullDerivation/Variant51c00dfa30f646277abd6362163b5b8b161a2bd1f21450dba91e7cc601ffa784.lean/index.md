# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.FCRSFullDerivation.Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f52cb44ef4293b47f08c80fb785a9d8f6e197db7",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f52cb44ef4293b47f08c80fb785a9d8f6e197db7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.TheoremTransfer.Derivation` — import line 6; external provider; requires a separately pinned dependency.
- `FCRS.TheoremTransfer.Adapters.FCRSTransport` — import line 7; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Derivation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectionVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/projectionversion--a3cd101884d46814cfd22f8c.md) | 31 | `declaration-track:a3cd101884d46814cfd22f8c9e4226e39cec92d4094e554fc9764f6c7ab237a7` |
| 2 | `def` | [graphConsequenceTheoryArtifact](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/graphconsequencetheoryartifact--b8bbd5289079bbac77b53f74.md) | 36 | `declaration-track:b8bbd5289079bbac77b53f7458729be433c30eb58bde21c5f44884480f3b2c05` |
| 3 | `structure` | [GraphConsequenceProposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/graphconsequenceproposition--c47ed4859ed2740fb462cbe1.md) | 50 | `declaration-track:c47ed4859ed2740fb462cbe13a939f6d21e87418f929fec5a53d7766970c35a0` |
| 4 | `def` | [graphConsequenceTheory](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/graphconsequencetheory--1ebc18c473f781fee297d18f.md) | 58 | `declaration-track:1ebc18c473f781fee297d18f044841dce9fa57f2a13f885cb1a5293cc17f023a` |
| 5 | `theorem` | [graphConsequenceHolds_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/graphconsequenceholds-exact--a871d2d590987d5311c063dc.md) | 71 | `result-track:a871d2d590987d5311c063dc3b30756b96abfead403356fa9d690a9fdf814f7e` |
| 6 | `def` | [graphConsequenceTheoryVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/graphconsequencetheoryversion--50f933f7891427edb9395fda.md) | 79 | `declaration-track:50f933f7891427edb9395fda5a509b45b4ba316868485c091680bad411bc2462` |
| 7 | `def` | [graphConsequenceAssumptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/graphconsequenceassumptions--d0cf19fcc880f0eff928d3a0.md) | 107 | `declaration-track:d0cf19fcc880f0eff928d3a0d77833766e236609e8876abca49361a6bd850d15` |
| 8 | `structure` | [FullNativePreservationBridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullnativepreservationbridge--3603bd878261b8b74283a054.md) | 158 | `declaration-track:3603bd878261b8b74283a0541d22a0bd5bb34ee28bc4f4e22714c6806ade9b1d` |
| 9 | `def` | [sourceClaimConsequence](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/sourceclaimconsequence--02898953aa7b3568d2bb7056.md) | 168 | `declaration-track:02898953aa7b3568d2bb7056bddbd8041bd8ad85ac3424db0a51ff1cc3877efb` |
| 10 | `def` | [sourceClaimBridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/sourceclaimbridge--a84c5a1df261fb38d8964f27.md) | 186 | `declaration-track:a84c5a1df261fb38d8964f2741eb6e2485536e8b4d5799073089afaa6ea33879` |
| 11 | `structure` | [FullNativePreservationEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullnativepreservationevidence--cf2464fb3f8a23bd227f5da0.md) | 211 | `declaration-track:cf2464fb3f8a23bd227f5da0034068035c4e7f08afced8b9c33e9eac39069988` |
| 12 | `def` | [bridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/bridge--4a1174270cb3e6559513748e.md) | 266 | `declaration-track:4a1174270cb3e6559513748e55f92697adf75797f54fa978641447fc8883fe3f` |
| 13 | `def` | [graphConsequenceProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/graphconsequenceproof--72617ac97b2300730ab3a83b.md) | 276 | `declaration-track:72617ac97b2300730ab3a83bb3281dc3f76ecf1e2d57d81f40caca26bde3f305` |
| 14 | `def` | [nativeDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/nativederivation--c1d5a08e202797ae40a3c79e.md) | 283 | `declaration-track:c1d5a08e202797ae40a3c79ee57d6045d057097b90ed440a5278cb96616df57c` |
| 15 | `def` | [fullGraphProposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullgraphproposition--8227ab32f75e8971a2bcbdd3.md) | 314 | `declaration-track:8227ab32f75e8971a2bcbdd379bbe664fc41dd44b69f2734af7811125c95de67` |
| 16 | `def` | [fullSourceScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullsourcescope--6cc917492c4b6d934d1a71e2.md) | 321 | `declaration-track:6cc917492c4b6d934d1a71e2fb03303fbc24fdb98b64fbd72c21285ac39ca16d` |
| 17 | `def` | [fullTargetScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fulltargetscope--655870bb0917ec0c0ba7dbd6.md) | 330 | `declaration-track:655870bb0917ec0c0ba7dbd62c30211c0a6d8202c837765e6ae7e71500e0a589` |
| 18 | `def` | [fullTranslationLineage](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fulltranslationlineage--c26dbee64939f67594a2ce3b.md) | 337 | `declaration-track:c26dbee64939f67594a2ce3bd08db073532e277f69d9156be078a609614b9b9b` |
| 19 | `def` | [fullTranslation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fulltranslation--217bc7909ac4dc50c58f4736.md) | 353 | `declaration-track:217bc7909ac4dc50c58f4736ea973face9a6ec23c7ae022b69c010e2f4207b5e` |
| 20 | `def` | [fullPreservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullpreservation--4dd5915678116b889328fc4a.md) | 437 | `declaration-track:4dd5915678116b889328fc4a3c2c664234c499c43640448db6d04b4785366f0e` |
| 21 | `theorem` | [fullSourcePropositionInScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullsourcepropositioninscope--9e32903e1d7a84930268c55d.md) | 448 | `result-track:9e32903e1d7a84930268c55d7318642bbd70707d47f9c6a1e0f370cd1e834402` |
| 22 | `def` | [fullTargetTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fulltargettheorem--7d8ed229a770c34b36dfd4c6.md) | 454 | `declaration-track:7d8ed229a770c34b36dfd4c676205693115c2a5f0b51d5b9e5710170f382ad15` |
| 23 | `theorem` | [fullTargetPropositionInScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fulltargetpropositioninscope--c33d3b7fc1ab63c3a4683d14.md) | 463 | `result-track:c33d3b7fc1ab63c3a4683d14f831bbcb3cb6b22aef94fff1156578223f58680d` |
| 24 | `inductive` | [FullTTAStage](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullttastage--2ab404823822868a6c96dae4.md) | 470 | `declaration-track:2ab404823822868a6c96dae49f67d733ed63029b127a290a750f9a245d9b1354` |
| 25 | `def` | [identityCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/identitycode--7d07b9453b0a7dde28a15546.md) | 505 | `declaration-track:7d07b9453b0a7dde28a155460d01864c4ebd6dfe30bc48b4c3f67ea1f4752409` |
| 26 | `theorem` | [identityCode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/identitycode-injective--cbb7d4933beacb81ac9bf876.md) | 536 | `result-track:cbb7d4933beacb81ac9bf87664cc2d90517f0a89e8c8c7cbaeaa382e4b12fc33` |
| 27 | `def` | [rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/rank--13b500f8736272621f86f887.md) | 540 | `declaration-track:13b500f8736272621f86f887101b35d7bb424e95f6e32a46a7902745351d7751` |
| 28 | `def` | [label](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/label--8ed7c9b0713e5e7ed24a4df8.md) | 572 | `declaration-track:8ed7c9b0713e5e7ed24a4df8693bdc92fca62672216bd14fc28e0381990e735c` |
| 29 | `def` | [nodeKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/nodekind--7e477123a66cee9230a80b06.md) | 604 | `declaration-track:7e477123a66cee9230a80b0639e5ef514ab7ffb9e1fafa8946ef1e5bb461d8d0` |
| 30 | `theorem` | [nodeKind_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/nodekind-injective--2c447976f14d727c2f152974.md) | 635 | `result-track:2c447976f14d727c2f1529743e9f5abf8296caf673480eac6ce16411827f7ad0` |
| 31 | `inductive` | [FullTTADependency](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullttadependency--c993f01b78b8b3d522a3941d.md) | 642 | `declaration-track:c993f01b78b8b3d522a3941d8210122ed9df014309b62d5e1a5a9ef56f5f7848` |
| 32 | `theorem` | [FullTTADependency.rankIncreases](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullttadependency-rankincreases--59acf1c2d4097d9b3ef39844.md) | 690 | `result-track:59acf1c2d4097d9b3ef39844b0776623460a5041dcf8ce35fc0cb7705cd29729` |
| 33 | `def` | [roleArtifact](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/roleartifact--2c532730b06a3c458016d86d.md) | 697 | `declaration-track:2c532730b06a3c458016d86de132cc41766ae5f9c00f64238d655f3a91cc300f` |
| 34 | `def` | [fullStageNativeArtifact](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullstagenativeartifact--0ba1d20f5c574b78e76baafc.md) | 702 | `declaration-track:0ba1d20f5c574b78e76baafc3c286d8f6826d3171712b12e8de05754cf1d6f06` |
| 35 | `def` | [fullStageSupportingArtifacts](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullstagesupportingartifacts--5d2b3d6588ec9bdc99e35691.md) | 761 | `declaration-track:5d2b3d6588ec9bdc99e356918d10eb25011d13098fed70dd3982ee0c1902930d` |
| 36 | `def` | [fullStageTheoryContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullstagetheorycontext--a4d22d41d1079b1d9303b2a7.md) | 822 | `declaration-track:a4d22d41d1079b1d9303b2a7617c3f11ea9f20ddaa9c95b7a4a1556ee34feeed` |
| 37 | `def` | [fullStageNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullstagenode--f32eea67990df40522ca736b.md) | 835 | `declaration-track:f32eea67990df40522ca736bbe663c8df3e873b150d9313a47c2d900a4077be7` |
| 38 | `theorem` | [fullStageNode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullstagenode-injective--7a93e1447168bf6106d84c15.md) | 860 | `result-track:7a93e1447168bf6106d84c15f34aa77d4c6d35cd40e57a652f62572f2822c0ac` |
| 39 | `theorem` | [fullStageNodeArtifact_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullstagenodeartifact-injective--68d0454136f9cf2bb8c4d2e3.md) | 867 | `result-track:68d0454136f9cf2bb8c4d2e36834345c6cbfcbd47ddc45d0083e25f7e7491989` |
| 40 | `def` | [fullStageEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullstageedge--41c487d60ce8777c919c4928.md) | 876 | `declaration-track:41c487d60ce8777c919c4928e9aed93f047a6db969cb9bb0a6f02a31b4b7d66a` |
| 41 | `def` | [fullStageValidationPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullstagevalidationpolicy--a8cde9dabf4c50e16ff26397.md) | 1023 | `declaration-track:a8cde9dabf4c50e16ff263979de4475f708961d87c6b8d68a07d2dc15a962905` |
| 42 | `def` | [fullStageValidation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullstagevalidation--b150bfa37e563d825069b718.md) | 1031 | `declaration-track:b150bfa37e563d825069b718c5ef4df79da1e9fc9ae3e6fb0134d6571e8349c5` |
| 43 | `def` | [fullDependencyGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fulldependencygraph--e3f86d46ac3c994ea1539a79.md) | 1041 | `declaration-track:e3f86d46ac3c994ea1539a79151ede582fab21a3da8041970dd3d407711f5996` |
| 44 | `def` | [fullGenericDerivationProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fullgenericderivationprojection--63ad4df32f475d138f51986e.md) | 1059 | `declaration-track:63ad4df32f475d138f51986ecf495ed19ed906c4fbe903074d964b8f322f4707` |
| 45 | `structure` | [FullTransportDerivationProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fulltransportderivationprojection--f72cd71a5a024d6473fdd37e.md) | 1116 | `declaration-track:f72cd71a5a024d6473fdd37eccb2313961140080cb11855157008f6e74df9d95` |
| 46 | `def` | [fullTransportDerivationProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/declarations/fulltransportderivationprojection--e71c2a5360cc035ddc532ce1.md) | 1151 | `declaration-track:e71c2a5360cc035ddc532ce169cf4fb83ccc4212cbd01239288c5d7729a9f3b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
