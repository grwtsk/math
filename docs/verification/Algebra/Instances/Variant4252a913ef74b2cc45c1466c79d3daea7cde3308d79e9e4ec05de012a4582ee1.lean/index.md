# Verification target: GRWTSK.Algebra.Instances.Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef063a954654ff799255442a0c428f0f8b3e7c3e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef063a954654ff799255442a0c428f0f8b3e7c3e`.

Source path: `GRWTSK/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Finiteness.Quotient` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean/declarations/instance--0692ad5611f3411154d4be17.md) | 39 | `declaration-track:0692ad5611f3411154d4be17f19554c770886fe49c96e8b2fd5ce96433f9a2dc` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean/declarations/instance--ba56100c0658e2f6b6d0b2e8.md) | 48 | `declaration-track:ba56100c0658e2f6b6d0b2e81c522c6e8e9079b7955d95c7da33fb373d9d0698` |
| 3 | `lemma` | [Algebra.isSeparable_residueField_iff](../../../../mathematics/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean/declarations/algebra-isseparable-residuefield-iff--c84421ee8f718ec7fa74ab4d.md) | 63 | `result-track:c84421ee8f718ec7fa74ab4d209d97980042f7bf65d092c6587a75fed0f4b064` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean/declarations/instance--fa34b1679f780e7fc76a1df3.md) | 74 | `declaration-track:fa34b1679f780e7fc76a1df300e47bd779ef51fc0a3f061f265c960868b826aa` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean/declarations/instance--71fa67e10e609bc95633daea.md) | 78 | `declaration-track:71fa67e10e609bc95633daea219e3b1744a4a6d26d6b1f05167b979d1bf23a55` |
| 6 | `instance` | [ResidueField.algebraOfIsIntegral](../../../../mathematics/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean/declarations/residuefield-algebraofisintegral--cc6ce7dabfeb61d48b3cbebe.md) | 97 | `declaration-track:cc6ce7dabfeb61d48b3cbebe9e6a520a80147a03f84eef62e48b64fee9796209` |
| 7 | `instance` | [ResidueField.isScalarTowerOfIsIntegral](../../../../mathematics/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean/declarations/residuefield-isscalartowerofisintegral--d665d09d038fbed0c7a0b97c.md) | 101 | `declaration-track:d665d09d038fbed0c7a0b97c7a6cc3b7e351f417421c20590787958b837cb02e` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Instances/Variant4252a913ef74b2cc45c1466c79d3daea7cde3308d79e9e4ec05de012a4582ee1.lean/declarations/instance--d1425b8c610452225aa5cd0a.md) | 105 | `declaration-track:d1425b8c610452225aa5cd0a7107541d39dcf619576fc84527d23bb89da41708` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
