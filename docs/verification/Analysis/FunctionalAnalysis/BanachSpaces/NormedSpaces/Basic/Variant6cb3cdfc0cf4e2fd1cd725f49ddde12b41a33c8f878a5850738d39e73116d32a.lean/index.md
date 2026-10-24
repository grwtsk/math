# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Basic.Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebfb6148b0f46e299a652583fb79c966f384608c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebfb6148b0f46e299a652583fb79c966f384608c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Dual` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [WStarAlgebra](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/wstaralgebra--b0522285ccad39344808341d.md) | 41 | `declaration-track:b0522285ccad39344808341d4874baef2451d2274a56994685e575600e7fcb40` |
| 2 | `structure` | [VonNeumannAlgebra](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/vonneumannalgebra--c53f9fa774e5070778c939b3.md) | 63 | `declaration-track:c53f9fa774e5070778c939b32179b090978cf423427cdfd3a270598e68bd8f29` |
| 3 | `instance` | [instSetLike](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/instsetlike--ec61fcb452f549110c374186.md) | 78 | `declaration-track:ec61fcb452f549110c3741869fa7286e307df6b200d8c1206d15032cdf1ebc25` |
| 4 | `instance` | [instStarMemClass](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/inststarmemclass--1eaa9c98b01854c38862800a.md) | 82 | `declaration-track:1eaa9c98b01854c38862800ae494e3f4014ebc722433e0c67a125c903964a181` |
| 5 | `instance` | [instSubringClass](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/instsubringclass--a73e107b64508f9177233c03.md) | 85 | `declaration-track:a73e107b64508f9177233c03ec0801f456c5d2a83833474472f5c9d28bb35f62` |
| 6 | `theorem` | [mem_carrier](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/mem-carrier--fd91e003cb45993157e98ea4.md) | 93 | `result-track:fd91e003cb45993157e98ea4e7a890c2bc5c9ce7d4f87c1a1401191e34e111ed` |
| 7 | `theorem` | [coe_toStarSubalgebra](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/coe-tostarsubalgebra--864680b29f6285863117922b.md) | 98 | `result-track:864680b29f6285863117922b735781c300bee88791446b7cd7e3a8d975e8dcca` |
| 8 | `theorem` | [coe_mk](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/coe-mk--1ed2320a1ddc14c120dde4e1.md) | 103 | `result-track:1ed2320a1ddc14c120dde4e1e99ffd4768e02d389bf96afd8c1c3f120e7516a6` |
| 9 | `theorem` | [ext](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/ext--b212dadb9efdb089b40ab8af.md) | 108 | `result-track:b212dadb9efdb089b40ab8af9e8f18945126bc19048a35c049a31e922b3ac370` |
| 10 | `theorem` | [centralizer_centralizer](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/centralizer-centralizer--f6e34ecb28c02ff1e728ce35.md) | 112 | `result-track:f6e34ecb28c02ff1e728ce35197a0960fb4c58700ceb565833dc47e21530bd5b` |
| 11 | `def` | [commutant](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/commutant--f9919729043a2d962d6d7eda.md) | 117 | `declaration-track:f9919729043a2d962d6d7edab59e786325449972251d9b13c59e9bc3a88fb863` |
| 12 | `theorem` | [coe_commutant](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/coe-commutant--17577b1cd462b9f0434b64ec.md) | 122 | `result-track:17577b1cd462b9f0434b64ec9beaeb6768659d310d550334dcf00f99f1ced5fa` |
| 13 | `theorem` | [mem_commutant_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/mem-commutant-iff--954fc14e64ad624c6dfb69c2.md) | 127 | `result-track:954fc14e64ad624c6dfb69c2465136b4b93671a4eea1aea8133866769d958fbf` |
| 14 | `theorem` | [commutant_commutant](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant6cb3cdfc0cf4e2fd1cd725f49ddde12b41a33c8f878a5850738d39e73116d32a.lean/declarations/commutant-commutant--9fa3f3f72070e610cec18caf.md) | 133 | `result-track:9fa3f3f72070e610cec18caf3edf53cfb174802846a39baa373850bbc3591306` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
