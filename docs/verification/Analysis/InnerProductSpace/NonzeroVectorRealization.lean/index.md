# Verification target: GRWTSK.Analysis.InnerProductSpace.NonzeroVectorRealization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ba82dbd4c5701132f4a6406de9074eb0bd72f8f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/NonzeroVectorRealization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/NonzeroVectorRealization.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/NonzeroVectorRealization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ba82dbd4c5701132f4a6406de9074eb0bd72f8f`.

Source path: `GRWTSK/Analysis/InnerProductSpace/NonzeroVectorRealization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/NonzeroVectorRealization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.LinearMap` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realizationMap](../../../../mathematics/Analysis/InnerProductSpace/NonzeroVectorRealization.lean/declarations/realizationmap--c981794655e9a171d9e5700f.md) | 29 | `declaration-track:c981794655e9a171d9e5700fba9e582914e8c43932f7dad2b70cf0a18c893242` |
| 2 | `theorem` | [realization_map_apply](../../../../mathematics/Analysis/InnerProductSpace/NonzeroVectorRealization.lean/declarations/realization-map-apply--6304f64899cadd9f297cf9e0.md) | 32 | `result-track:6304f64899cadd9f297cf9e0c097662058e1b4f5be505e1c86e601301a5cfc1f` |
| 3 | `theorem` | [realization_map_self](../../../../mathematics/Analysis/InnerProductSpace/NonzeroVectorRealization.lean/declarations/realization-map-self--460a8e0beebac4392d643a08.md) | 37 | `result-track:460a8e0beebac4392d643a08040bacb066db51a237952205aba263c687890d04` |
| 4 | `theorem` | [realization_map_norm](../../../../mathematics/Analysis/InnerProductSpace/NonzeroVectorRealization.lean/declarations/realization-map-norm--09e92e4909d04e513fc16d7d.md) | 42 | `result-track:09e92e4909d04e513fc16d7dd698a077455c1245b0d0fbd3456d208b7fce77a7` |
| 5 | `theorem` | [realization_map_norm_minimal](../../../../mathematics/Analysis/InnerProductSpace/NonzeroVectorRealization.lean/declarations/realization-map-norm-minimal--6e063eb9ab42f3ecedea02a8.md) | 53 | `result-track:6e063eb9ab42f3ecedea02a8d2bbf2006ce4bbd2518aeafb2839df4488f4701a` |
| 6 | `theorem` | [exists_minimal_realization](../../../../mathematics/Analysis/InnerProductSpace/NonzeroVectorRealization.lean/declarations/exists-minimal-realization--f5123d46aaff56996ffde1f0.md) | 60 | `result-track:f5123d46aaff56996ffde1f0f251ff6f58408dcfb9f0364cd6087ad357ee28bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
