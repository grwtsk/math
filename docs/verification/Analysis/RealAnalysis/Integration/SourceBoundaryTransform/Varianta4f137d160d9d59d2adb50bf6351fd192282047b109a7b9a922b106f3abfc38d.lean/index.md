# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceBoundaryTransform.Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c20070ee50747134c08274ea002129a7a871d036",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c20070ee50747134c08274ea002129a7a871d036`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMomentDictionary` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean/declarations/normalizedtransform--8c7accab0648bbb2571de7e9.md) | 33 | `declaration-track:8c7accab0648bbb2571de7e9795ad2d1f673d0ad32e859727e235674bfeab444` |
| 2 | `def` | [boundaryTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean/declarations/boundarytransform--672d66f8c3a3349ae0d6233b.md) | 38 | `declaration-track:672d66f8c3a3349ae0d6233b21aa87a700944fd4bd22706c5dc58788c59caf52` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean/declarations/normalizedtransform-dictionary--e93b2e50517655faa33ac670.md) | 41 | `result-track:e93b2e50517655faa33ac670232d42b4b4101e6afebd0ab2ad75c0a22fd38870` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean/declarations/normalized-integrand-integrable--8a09d5ac20d9d1ccc5ede036.md) | 51 | `result-track:8a09d5ac20d9d1ccc5ede036bd07a1cc7cc4fca296c8861da7fe3d5beccef377` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean/declarations/full-complex-correlation-square--2d0caabfa131e51f2148d61a.md) | 62 | `result-track:2d0caabfa131e51f2148d61a8b926cecf388c4117399a66f73a7c941313efaca` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean/declarations/interval-complex-correlation-square--004f8931c2eb5f3bef6caeec.md) | 92 | `result-track:004f8931c2eb5f3bef6caeecd815d45dec88a2f773daa38ffe79ef3290d94dec` |
| 7 | `theorem` | [critical_complex_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean/declarations/critical-complex-ibp--d284fb2e7370ed156af49c8f.md) | 113 | `result-track:d284fb2e7370ed156af49c8f747630d4f2a1ee9eeb6fab4529c4c857fb41ec77` |
| 8 | `theorem` | [boundary_integrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean/declarations/boundary-integrand-intervalintegrable--68b4d10fc06412aa3610de1b.md) | 161 | `result-track:68b4d10fc06412aa3610de1b2952672d0f7e03a7fb76fafb45b699544ac71a3c` |
| 9 | `theorem` | [boundary_transform_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Varianta4f137d160d9d59d2adb50bf6351fd192282047b109a7b9a922b106f3abfc38d.lean/declarations/boundary-transform-exact--2be797a169ef9e6f9f1fd72a.md) | 173 | `result-track:2be797a169ef9e6f9f1fd72a59fb62517fbd84d59e66fd6a23f88e9e10e5e4db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
