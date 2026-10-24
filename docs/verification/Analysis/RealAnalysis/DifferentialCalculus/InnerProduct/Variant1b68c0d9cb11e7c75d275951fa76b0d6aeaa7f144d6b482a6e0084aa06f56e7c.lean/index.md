# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InnerProduct.Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69a08fec81bc41b5d89a23d13f8ea496ff79819d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69a08fec81bc41b5d89a23d13f8ea496ff79819d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Conformal.NormedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.ConformalLinearMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [conformalAt_iff'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c.lean/declarations/conformalat-iff--78d4d0a898f2a9d1e9538f1a.md) | 27 | `result-track:78d4d0a898f2a9d1e9538f1a9f23c8b535fd823b201eb1a2c74100666cfc6bba` |
| 2 | `theorem` | [conformalAt_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c.lean/declarations/conformalat-iff--c4a1ce435ec940345a5f97ee.md) | 33 | `result-track:c4a1ce435ec940345a5f97ee066d1ea0ce0f72da17ccb27f68e7118571bd7a82` |
| 3 | `def` | [conformalFactorAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c.lean/declarations/conformalfactorat--c7818238bea060ae0603f1e5.md) | 39 | `declaration-track:c7818238bea060ae0603f1e5ba8b0b7e5426c695a1e7e8ffa06880082f98835a` |
| 4 | `theorem` | [conformalFactorAt_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c.lean/declarations/conformalfactorat-pos--6e179609ce31f65a14fe4a7c.md) | 42 | `result-track:6e179609ce31f65a14fe4a7caa5483c47e28ff392d5105979cb53c64a5bafeb7` |
| 5 | `theorem` | [conformalFactorAt_inner_eq_mul_inner'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c.lean/declarations/conformalfactorat-inner-eq-mul-inner--71d328c53dbcad82ec50437a.md) | 45 | `result-track:71d328c53dbcad82ec50437a199d306526fc2f063a5b2d0a015247a66517aa8c` |
| 6 | `theorem` | [conformalFactorAt_inner_eq_mul_inner](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant1b68c0d9cb11e7c75d275951fa76b0d6aeaa7f144d6b482a6e0084aa06f56e7c.lean/declarations/conformalfactorat-inner-eq-mul-inner--c2974a0b04ef0570ad6082f0.md) | 49 | `result-track:c2974a0b04ef0570ad6082f037bb07ec57ea4cc65cf9f0c0c34fc30492f56912` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
