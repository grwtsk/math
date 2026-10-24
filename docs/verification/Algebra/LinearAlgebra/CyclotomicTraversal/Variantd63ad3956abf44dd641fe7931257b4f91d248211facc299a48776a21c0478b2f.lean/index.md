# Verification target: GRWTSK.Algebra.LinearAlgebra.CyclotomicTraversal.Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91177893dd34f76df0d29dad6fa7c684760e2ab4",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91177893dd34f76df0d29dad6fa7c684760e2ab4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 7; external provider; requires a separately pinned dependency.
- `FCRS.TheoremGraph` — import line 8; external provider; requires a separately pinned dependency.
- `FCRS.PersistentResidual` — import line 9; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT01_Bertrand` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CINIdentifier](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cinidentifier--eb784783534b588eb9be735d.md) | 29 | `declaration-track:eb784783534b588eb9be735d86fe1776bd2b3055e44da366e434f28cb0c9638b` |
| 2 | `inductive` | [CYCIdentifier](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cycidentifier--1ad02c6cbd836b661122f8d2.md) | 40 | `declaration-track:1ad02c6cbd836b661122f8d2c8a83760f64df8680938fd213ccee8275965fb8c` |
| 3 | `inductive` | [CTRIdentifier](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/ctridentifier--8002aa4e165225cbb2138ae0.md) | 53 | `declaration-track:8002aa4e165225cbb2138ae09d1dccd625e38220804c9e1bb7f6ec981be4109b` |
| 4 | `inductive` | [TPIdentifier](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/tpidentifier--d7ef50dd4d25532c68ea850b.md) | 64 | `declaration-track:d7ef50dd4d25532c68ea850b71a5e3e509ba02e8df68e0ff428b1a7384fe4309` |
| 5 | `structure` | [CyclotomicRootAddress](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cyclotomicrootaddress--7762c7bcd409f5c234934e71.md) | 76 | `declaration-track:7762c7bcd409f5c234934e71e6eb52bd6d32196af6a4302b97ff0c8f17f91960` |
| 6 | `theorem` | [CyclotomicRootAddress.pair_injective](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cyclotomicrootaddress-pair-injective--7895ce134f1414b7b270b6b8.md) | 83 | `result-track:7895ce134f1414b7b270b6b85cbef478e7114628ccf8861ce38c57e67da2084c` |
| 7 | `theorem` | [cin01_maximalRootAddressSetCountable](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cin01-maximalrootaddresssetcountable--5dc1d749766ffa362a378bdd.md) | 96 | `result-track:5dc1d749766ffa362a378bdda9dc477c166e8b6f88cf907d73920d66ee1f3a4f` |
| 8 | `structure` | [CyclotomicPolynomialIndex](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cyclotomicpolynomialindex--cd1b34213a83c37f3ac7a776.md) | 100 | `declaration-track:cd1b34213a83c37f3ac7a776405dcde1bc85fcb1605d9144e55a059b13b6b208` |
| 9 | `structure` | [CyclotomicExponent](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cyclotomicexponent--16d5089de396af8a0ad76e95.md) | 105 | `declaration-track:16d5089de396af8a0ad76e95272b82dde206d304d470a907369483148287896e` |
| 10 | `structure` | [CyclotomicRootStreamVersion](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cyclotomicrootstreamversion--5fabf15bc11e3b3af963a92f.md) | 109 | `declaration-track:5fabf15bc11e3b3af963a92f3fe766bf95da9a8967ff5baeb70e12cc189e2631` |
| 11 | `inductive` | [ExactRootSelectionMethod](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/exactrootselectionmethod--ece6402397f61d2d699ca6b2.md) | 113 | `declaration-track:ece6402397f61d2d699ca6b2db88dff13d1ac504b51f22d88354adccba3d3c95` |
| 12 | `structure` | [CyclotomicRootOccurrence](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cyclotomicrootoccurrence--a59d5dc8bad19751ddc99532.md) | 120 | `declaration-track:a59d5dc8bad19751ddc99532d9c542e8ab82fc17b4949ac450c446a038aa8213` |
| 13 | `theorem` | [exactRootOccurrence_boundaries](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/exactrootoccurrence-boundaries--74a130145f66ba002bfc6d23.md) | 132 | `result-track:74a130145f66ba002bfc6d238f1716d056f5edbb8a172ae43eb6d458ef597dc0` |
| 14 | `structure` | [RootApproximationArtifact](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/rootapproximationartifact--a8613403e47e0cea91c177b4.md) | 138 | `declaration-track:a8613403e47e0cea91c177b4399c6dcc3fed8a63efdfb038052072e7a6235c5f` |
| 15 | `structure` | [CyclotomicRootCarrier](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cyclotomicrootcarrier--cf525b69b06df6b30fe3b751.md) | 151 | `declaration-track:cf525b69b06df6b30fe3b7516f8a27b34a4b91f6bca06b257250024899d0d4af` |
| 16 | `def` | [MaximalCyclotomicCarrier](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/maximalcyclotomiccarrier--9e3641263409ee28a65e2db0.md) | 155 | `declaration-track:9e3641263409ee28a65e2db0d0a07f4f2212e11005a14831164f9a70353ac50f` |
| 17 | `structure` | [RootCarrierCapacity](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/rootcarriercapacity--8e94d7d4f55bbfa0a78eb38a.md) | 158 | `declaration-track:8e94d7d4f55bbfa0a78eb38a6eaeb6e74a40bec74e629051f135e3b9dedfdaab` |
| 18 | `inductive` | [ExpressionSignature](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/expressionsignature--fb23a114328cf6b90e3b4774.md) | 163 | `declaration-track:fb23a114328cf6b90e3b4774ac5200ee18946982e0266f94a8930027e093d948` |
| 19 | `structure` | [RootIndexing](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/rootindexing--dcbb8c6264142e219e7992d4.md) | 169 | `declaration-track:dcbb8c6264142e219e7992d4ccda07c8a4849ce3bed8b3b0607162219646e22f` |
| 20 | `def` | [CyclotomicIntrinsic](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cyclotomicintrinsic--4f7980388814800ab8c58d12.md) | 173 | `declaration-track:4f7980388814800ab8c58d12d73799074a643369628e196782331164ae1d83fd` |
| 21 | `def` | [ForestIntrinsic](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/forestintrinsic--0258cf5a0ca99f6ef52f1e06.md) | 176 | `declaration-track:0258cf5a0ca99f6ef52f1e06f5e891b96801ddc8b213b6b11506c2436d70d935` |
| 22 | `structure` | [ExpansionIntrinsic](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/expansionintrinsic--8e2c5514c6ab731f9f12be5a.md) | 179 | `declaration-track:8e2c5514c6ab731f9f12be5af9dbf2f9cc5461334f636c34d8a21b86ce3b4287` |
| 23 | `structure` | [Transportable](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/transportable--8154790571eeb2fe6731bf27.md) | 184 | `declaration-track:8154790571eeb2fe6731bf277f355c33224fff86e7235f6dd171686b65a39f61` |
| 24 | `structure` | [Reflectable](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/reflectable--fde1ba09c070b0bdac57ee65.md) | 188 | `declaration-track:fde1ba09c070b0bdac57ee651884bf7a5bfd4d749b55c38bdb0b21a00f72422e` |
| 25 | `def` | [boolRootAddress](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/boolrootaddress--16164a634a6ef0f2eff196de.md) | 192 | `declaration-track:16164a634a6ef0f2eff196deb7095be55685ca07bce84b0710340de65e56e293` |
| 26 | `theorem` | [boolRootAddress_injective](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/boolrootaddress-injective--db68e929e40bb055f853c2fc.md) | 202 | `result-track:db68e929e40bb055f853c2fcba2b8679ebf9cdac1b56782e92663a242c67d0dd` |
| 27 | `theorem` | [cin04_rootIndexingDoesNotImplyCyclotomicExpression](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cin04-rootindexingdoesnotimplycyclotomicexpression--0521a914cc16b2594c3f5aab.md) | 207 | `result-track:0521a914cc16b2594c3f5aab9e48ae253190a2048ad3ecd09d0d648961e485dc` |
| 28 | `theorem` | [tt01_bertrandCapacityAdapter](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/tt01-bertrandcapacityadapter--885e55709c54e105bd7b1c11.md) | 214 | `result-track:885e55709c54e105bd7b1c11e6fc2e77ff602f3fa0f9ec3f1b61b7ce3f7469aa` |
| 29 | `def` | [leastBertrandPrime](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/leastbertrandprime--3590eae807c675991a69ab71.md) | 219 | `declaration-track:3590eae807c675991a69ab71ddce5bb7c061eb59fd2cd3b0b87edb2b66fa7017` |
| 30 | `theorem` | [leastBertrandPrime_spec](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/leastbertrandprime-spec--6db67529c44bdf9ff6ea8784.md) | 222 | `result-track:6db67529c44bdf9ff6ea8784a6422295a80268ce9bdbe035b3301b233c80d438` |
| 31 | `structure` | [BertrandWaveCapacity](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/bertrandwavecapacity--38502d1b522c186232c480dc.md) | 228 | `declaration-track:38502d1b522c186232c480dce06fb7a991b2682b2b5db36a4a25092eae20c2b6` |
| 32 | `def` | [bertrandWaveCapacity](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/bertrandwavecapacity--29086e250e2d6fe3c6c8d3a0.md) | 241 | `declaration-track:29086e250e2d6fe3c6c8d3a0309fd52b60771229d3370be5141911ca5988d6e4` |
| 33 | `structure` | [ReadyWaveSelection](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/readywaveselection--6d354de8336d8279f61adeec.md) | 265 | `declaration-track:6d354de8336d8279f61adeecaf5fb8d05ad4f21c0826e91d3e240237dbdd748e` |
| 34 | `theorem` | [ctr05_selectedTheoremReadiness](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/ctr05-selectedtheoremreadiness--31a4357250dfc577cadef64f.md) | 273 | `result-track:31a4357250dfc577cadef64fbd0b322863f7d6e4a3e670cd4d7044c294614bc0` |
| 35 | `theorem` | [ctr16_rootOrderDoesNotProveTheorem](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/ctr16-rootorderdoesnotprovetheorem--70a5844e91345627ce3ad608.md) | 280 | `result-track:70a5844e91345627ce3ad608c05f3b4d663aae9f850509d8149a8fa7b7fe6886` |
| 36 | `structure` | [VandermondeSeed](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/vandermondeseed--72f944f9affd3123391b757a.md) | 287 | `declaration-track:72f944f9affd3123391b757acd58223bb0d008e78c8417873836f5a462f2165d` |
| 37 | `theorem` | [cyc14_vandermondeDeterminantNonzero](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/cyc14-vandermondedeterminantnonzero--c833bcb52386412db7f0bd27.md) | 296 | `result-track:c833bcb52386412db7f0bd277c93c5d903564e5c58cd8600fbff4a57946b9396` |
| 38 | `structure` | [SeedStateEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/seedstateembedding--168cd804467120ebf81e0b9a.md) | 303 | `declaration-track:168cd804467120ebf81e0b9adc75c17cfaed8b1f5b0d132723f6baa713fa4293` |
| 39 | `inductive` | [PredictionOutput](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/predictionoutput--af0acbc3f52820080543555e.md) | 312 | `declaration-track:af0acbc3f52820080543555e7ccd615d5a14ec1c7e474a73b7e4dfb32ef857ed` |
| 40 | `structure` | [TypedPrediction](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/typedprediction--67535367307641321a0ba806.md) | 321 | `declaration-track:67535367307641321a0ba806be871c7ccf25ab42cae10f927e6f11e45b165799` |
| 41 | `structure` | [AcceptedBridge](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/acceptedbridge--8986149a0421d7eeffcb05da.md) | 340 | `declaration-track:8986149a0421d7eeffcb05da814918dce2a7eb9b390d655575e2fa8b48819f94` |
| 42 | `def` | [predictedCandidate](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/predictedcandidate--6dabb3a7b8cd40a0d805f66f.md) | 345 | `declaration-track:6dabb3a7b8cd40a0d805f66f568afdbf5f18cf8598b5c203cc1e8c6eea249553` |
| 43 | `theorem` | [tp09_predictionIsNotProof](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/tp09-predictionisnotproof--4f2edf7fd043392e1d0a0a51.md) | 349 | `result-track:4f2edf7fd043392e1d0a0a51963afe03bd882fe36add8adcbb31f3bc04bf37a4` |
| 44 | `structure` | [PredictionValidation](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/predictionvalidation--0f96527123e361c086662e1a.md) | 354 | `declaration-track:0f96527123e361c086662e1a4202fa756a74edb306ff173a466dec2e7a68f336` |
| 45 | `structure` | [TypedPredictionResidual](../../../../../mathematics/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/declarations/typedpredictionresidual--9a08ec78ff054dab807126b1.md) | 361 | `declaration-track:9a08ec78ff054dab807126b1f865bafee97503a129fa5177aaaeb23f670aa26c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
