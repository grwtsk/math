# Verification target: GRWTSK.Analysis.Interpolation.Variant62ad6f3750c971d76038e2663537c977654e333f2edcb1e0c6677bd9473617cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "428d9c73635889c8b9c8ffd3cd201f4cbe7c5e1e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Interpolation/Variant62ad6f3750c971d76038e2663537c977654e333f2edcb1e0c6677bd9473617cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Interpolation/Variant62ad6f3750c971d76038e2663537c977654e333f2edcb1e0c6677bd9473617cb.lean/index.md) · [Full source](../../../../mathematics/Analysis/Interpolation/Variant62ad6f3750c971d76038e2663537c977654e333f2edcb1e0c6677bd9473617cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `428d9c73635889c8b9c8ffd3cd201f4cbe7c5e1e`.

Source path: `GRWTSK/Analysis/Interpolation/Variant62ad6f3750c971d76038e2663537c977654e333f2edcb1e0c6677bd9473617cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Interpolation/Variant62ad6f3750c971d76038e2663537c977654e333f2edcb1e0c6677bd9473617cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GammaBridge.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linear](../../../../mathematics/Analysis/Interpolation/Variant62ad6f3750c971d76038e2663537c977654e333f2edcb1e0c6677bd9473617cb.lean/declarations/linear--3a788eba823560d62e3f3f2e.md) | 19 | `declaration-track:3a788eba823560d62e3f3f2ecc9182b15699d364ac89c52accd3a5503b5d07c1` |
| 2 | `theorem` | [left_endpoint](../../../../mathematics/Analysis/Interpolation/Variant62ad6f3750c971d76038e2663537c977654e333f2edcb1e0c6677bd9473617cb.lean/declarations/left-endpoint--dddb0a72a8a6a10f8a2bc90b.md) | 22 | `result-track:dddb0a72a8a6a10f8a2bc90bbf7973508967dd782f4a3f936e15efcf30a73d3d` |
| 3 | `theorem` | [right_endpoint](../../../../mathematics/Analysis/Interpolation/Variant62ad6f3750c971d76038e2663537c977654e333f2edcb1e0c6677bd9473617cb.lean/declarations/right-endpoint--af6a3dd0c0ac681ec5d97211.md) | 26 | `result-track:af6a3dd0c0ac681ec5d97211ab1fc253e9ada74a79414a8161716a3b10364e8e` |
| 4 | `def` | [exactLinear](../../../../mathematics/Analysis/Interpolation/Variant62ad6f3750c971d76038e2663537c977654e333f2edcb1e0c6677bd9473617cb.lean/declarations/exactlinear--8bad222d3d4cc977df738565.md) | 30 | `declaration-track:8bad222d3d4cc977df738565a55dbc690a5b3f3fd634714da9a15d707c5ac5f0` |
| 5 | `def` | [scalarLinear](../../../../mathematics/Analysis/Interpolation/Variant62ad6f3750c971d76038e2663537c977654e333f2edcb1e0c6677bd9473617cb.lean/declarations/scalarlinear--8867025b651706015fbd3739.md) | 38 | `declaration-track:8867025b651706015fbd3739b69e96b5bb883db13ef2ac5889bb70ea1103f3ee` |
| 6 | `theorem` | [monotone](../../../../mathematics/Analysis/Interpolation/Variant62ad6f3750c971d76038e2663537c977654e333f2edcb1e0c6677bd9473617cb.lean/declarations/monotone--c4e9154015f9d2d376ef23d2.md) | 41 | `result-track:c4e9154015f9d2d376ef23d2baa665b270b0ac55f423a71d83467cc7a62e4d7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
