# Verification target: GRWTSK.Analysis.FunctionalAnalysis.StarOrder.Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03308822e7821207ae362720dc3fd1b7f654a227",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03308822e7821207ae362720dc3fd1b7f654a227`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsPositive.spectrumRestricts](../../../../../mathematics/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean/declarations/ispositive-spectrumrestricts--79405ea654b9e39bab512f6d.md) | 30 | `result-track:79405ea654b9e39bab512f6d117fd75eaa5365beb2e9260da942527b43c1cef0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean/declarations/instance--44fd1a9654bfaecc65a7cf16.md) | 48 | `declaration-track:44fd1a9654bfaecc65a7cf16a45949e976f305c17606266ab1cd61cb4cc3e319` |
| 3 | `lemma` | [instStarOrderedRingRCLike](../../../../../mathematics/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean/declarations/inststarorderedringrclike--37ee8074036996f6b37e03d2.md) | 54 | `result-track:37ee8074036996f6b37e03d2fb77398057175497b6c75b24c79053637d783969` |
| 4 | `instance` | [instStarOrderedRing](../../../../../mathematics/Analysis/FunctionalAnalysis/StarOrder/Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4.lean/declarations/inststarorderedring--53b98c04a76a2b9d0cecec81.md) | 74 | `declaration-track:53b98c04a76a2b9d0cecec8135520d4b0bd08b10cac982bcaa33412cb5e9fb19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
