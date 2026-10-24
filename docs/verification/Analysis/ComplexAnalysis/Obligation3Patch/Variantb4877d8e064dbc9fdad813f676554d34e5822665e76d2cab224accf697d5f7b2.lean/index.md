# Verification target: GRWTSK.Analysis.ComplexAnalysis.Obligation3Patch.Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a972f39f3321879c27e6dc3fc8eace411756bff",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Obligation3Patch/Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a972f39f3321879c27e6dc3fc8eace411756bff`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Obligation3Patch/Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Obligation3Patch/Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [patchedNumerator](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2.lean/declarations/patchednumerator--67f887041ba19e678911e1e0.md) | 11 | `declaration-track:67f887041ba19e678911e1e0b9818f70e4a4190e531cbb62bcbd0c9a66aa7b18` |
| 2 | `theorem` | [patchedNumerator_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2.lean/declarations/patchednumerator-zero--6594f3a1f23ed7d9d3f46dc2.md) | 14 | `result-track:6594f3a1f23ed7d9d3f46dc27278b10ba0a069a305d2799e0681147a6a81f61f` |
| 3 | `theorem` | [patchedNumerator_of_ne](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2.lean/declarations/patchednumerator-of-ne--de2e1d74fa94f42e7c7ddf7d.md) | 17 | `result-track:de2e1d74fa94f42e7c7ddf7d3840b3c55e94280343c255153bd98175cf1e26bd` |
| 4 | `theorem` | [patchedNumerator_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2.lean/declarations/patchednumerator-analytic--96ab1372e699f4b4c2980287.md) | 21 | `result-track:96ab1372e699f4b4c29802870143e48b9275d1da9deafb32de31f7f8773c59bf` |
| 5 | `theorem` | [meromorphicAt_of_patched_numerator](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2.lean/declarations/meromorphicat-of-patched-numerator--867fb02f179b42f57f7671ef.md) | 34 | `result-track:867fb02f179b42f57f7671efbd334ef70faae5c5c283db80a3559b62c8579d4c` |
| 6 | `theorem` | [meromorphicOrderAt_of_patched_numerator](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2.lean/declarations/meromorphicorderat-of-patched-numerator--7f77a77f147118845a0399f0.md) | 41 | `result-track:7f77a77f147118845a0399f02cf312b2e31a902283e16062e166eaead76a3274` |
| 7 | `theorem` | [exact_pole_certificate](../../../../../mathematics/Analysis/ComplexAnalysis/Obligation3Patch/Variantb4877d8e064dbc9fdad813f676554d34e5822665e76d2cab224accf697d5f7b2.lean/declarations/exact-pole-certificate--a6a3daed5452c9ede8322e6e.md) | 52 | `result-track:a6a3daed5452c9ede8322e6e7b68ef561fdc2271349b38591ce2a579de628d83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
