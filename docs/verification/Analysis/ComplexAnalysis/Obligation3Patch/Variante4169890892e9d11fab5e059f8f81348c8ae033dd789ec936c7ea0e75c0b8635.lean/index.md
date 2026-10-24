# Verification target: GRWTSK.Analysis.ComplexAnalysis.Obligation3Patch.Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f131e0ceaa9d64567f65da0488c399f89e37716a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f131e0ceaa9d64567f65da0488c399f89e37716a`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [patchedNumerator](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean/declarations/patchednumerator--8d9f5cec613fd747585002d0.md) | 19 | `declaration-track:8d9f5cec613fd747585002d0cc9c37926946b3d232ea3e4210f44c2b1000fc03` |
| 2 | `theorem` | [patchedNumerator_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean/declarations/patchednumerator-zero--97cfbbeef4f856786d9ba705.md) | 22 | `result-track:97cfbbeef4f856786d9ba705811a046e0adecc440883c46b7fc6a7e9efcaf355` |
| 3 | `theorem` | [patchedNumerator_of_ne](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean/declarations/patchednumerator-of-ne--c87f00bb145cf69ec9c7e31a.md) | 25 | `result-track:c87f00bb145cf69ec9c7e31a054d67bbb9115c62a912d235a44e8ff96c33f4dd` |
| 4 | `theorem` | [patchedNumerator_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean/declarations/patchednumerator-analytic--5806fe915ae953250be2737b.md) | 29 | `result-track:5806fe915ae953250be2737bce7573f370379e151918c9611ea085d9e2c67613` |
| 5 | `theorem` | [meromorphicAt_of_patched_numerator](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean/declarations/meromorphicat-of-patched-numerator--4e3adb5c3ce48e6bf297fb53.md) | 42 | `result-track:4e3adb5c3ce48e6bf297fb5312744607dcb5c05aedce1fc1c6a089c34d519b1f` |
| 6 | `theorem` | [meromorphicOrderAt_of_patched_numerator](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean/declarations/meromorphicorderat-of-patched-numerator--d2069edd8129f1b8315fec50.md) | 49 | `result-track:d2069edd8129f1b8315fec50c1c8380681ec801507f25777dcea13893b7d7d60` |
| 7 | `theorem` | [exact_pole_certificate](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variante4169890892e9d11fab5e059f8f81348c8ae033dd789ec936c7ea0e75c0b8635.lean/declarations/exact-pole-certificate--08cc96e0f686570f5b703147.md) | 60 | `result-track:08cc96e0f686570f5b7031470f5595c484ea4b8144622ec2a0f43b7c77878256` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
