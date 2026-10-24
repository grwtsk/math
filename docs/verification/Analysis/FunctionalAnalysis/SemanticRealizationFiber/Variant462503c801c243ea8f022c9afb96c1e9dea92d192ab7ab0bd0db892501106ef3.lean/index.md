# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SemanticRealizationFiber.Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "726b028bd57c27843825e93a27337c68aa29d0fc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `726b028bd57c27843825e93a27337c68aa29d0fc`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.SemanticRealization` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemanticRealizationSystem](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3.lean/declarations/semanticrealizationsystem--338e53b6f8147a78a1839eab.md) | 18 | `declaration-track:338e53b6f8147a78a1839eab4da5e1be1e911cd47655aba40bac3f68e7c3102f` |
| 2 | `abbrev` | [BanachFiber](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3.lean/declarations/banachfiber--fe920230cc05d7c0b8cdfe99.md) | 37 | `declaration-track:fe920230cc05d7c0b8cdfe99655e4d287805a9193c2538fda439ebb10969e3de` |
| 3 | `abbrev` | [HilbertFiber](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3.lean/declarations/hilbertfiber--f53469f1f8644cbdbb1bf966.md) | 41 | `declaration-track:f53469f1f8644cbdbb1bf966cc7fd2fe62bfaff7a8a06357f7e160806635e784` |
| 4 | `def` | [realize](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3.lean/declarations/realize--9ee426f7f701e8d307e5f7cf.md) | 45 | `declaration-track:9ee426f7f701e8d307e5f7cf94ad798651549a6ac020d7d2d2c5af460886526d` |
| 5 | `structure` | [SemanticFiberTransformation](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3.lean/declarations/semanticfibertransformation--53c25cc70c8e5c54a16617c8.md) | 57 | `declaration-track:53c25cc70c8e5c54a16617c8460ec5de85b6dbe5c4777acd5e84c925bf33b0a4` |
| 6 | `theorem` | [realize_map](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3.lean/declarations/realize-map--1ca0853c4612710f21d99e03.md) | 81 | `result-track:1ca0853c4612710f21d99e03ea9662dccd0a389d915514134189c248a027cb88` |
| 7 | `structure` | [SemanticFiberIsometricEquivalence](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3.lean/declarations/semanticfiberisometricequivalence--fc90115952e09562c89f0832.md) | 96 | `declaration-track:fc90115952e09562c89f08322d0b0175c31396a759cfa535d6de902926da1458` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
