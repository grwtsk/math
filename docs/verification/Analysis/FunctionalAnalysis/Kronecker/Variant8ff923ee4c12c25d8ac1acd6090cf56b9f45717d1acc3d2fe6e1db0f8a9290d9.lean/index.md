# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Kronecker.Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0459f1ea1d4170bd61c28263f4f137e4cdf673d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0459f1ea1d4170bd61c28263f4f137e4cdf673d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.FeatureMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Kernel.Kronecker` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.l2Space` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [raw_eq_zero_of_posDef](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean/declarations/raw-eq-zero-of-posdef--2a5c0624a1793b98a2af7268.md) | 35 | `result-track:2a5c0624a1793b98a2af7268648425d90f7ad6fb4e9ae995e3a11a7228272bfd` |
| 2 | `theorem` | [kernelVector_injective_of_posDef](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean/declarations/kernelvector-injective-of-posdef--b9c0ad0bf36c255e5ac63090.md) | 48 | `result-track:b9c0ad0bf36c255e5ac63090312130e9f6251c10a3b0969e5da6c691f56ea8d9` |
| 3 | `theorem` | [kernelVector_injective](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean/declarations/kernelvector-injective--6d99292e3504372879485990.md) | 72 | `result-track:6d99292e35043728794859905cd686ebb2499969b81c1427bb14bd2ae983d2b0` |
| 4 | `theorem` | [kernelKronecker_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean/declarations/kernelkronecker-apply--455d63e0b68b0837051715b0.md) | 89 | `result-track:455d63e0b68b0837051715b027cb30d7faa151990ecc1d5bc8f8d478fcfdc8f3` |
| 5 | `theorem` | [kronecker_kernelVector_orthonormal](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean/declarations/kronecker-kernelvector-orthonormal--be17325bc8d68055e1ea0610.md) | 95 | `result-track:be17325bc8d68055e1ea0610764cf2360849a62427ebfe4b2f106b63a091818b` |
| 6 | `theorem` | [kronecker_kernelVector_total](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean/declarations/kronecker-kernelvector-total--f59ed6771a0203daba046afb.md) | 102 | `result-track:f59ed6771a0203daba046afb6089c1f8dd9a6fcf4830f4e00e2b025aa1ab1fae` |
| 7 | `def` | [kroneckerHilbertBasis](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean/declarations/kroneckerhilbertbasis--cc71f90458eb00be1ba1a6cd.md) | 109 | `declaration-track:cc71f90458eb00be1ba1a6cdf2bdc46d483350658a4f590dd37d590382e03562` |
| 8 | `theorem` | [kroneckerHilbertBasis_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean/declarations/kroneckerhilbertbasis-apply--c4458cd9b42fbb74eaf2494d.md) | 117 | `result-track:c4458cd9b42fbb74eaf2494d8160aa86a8aac41f32b9776b8c738ee8ce41e9bc` |
| 9 | `def` | [kroneckerCompletionEquivL2](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean/declarations/kroneckercompletionequivl2--b57eda58b117a4c263340699.md) | 124 | `declaration-track:b57eda58b117a4c263340699bb76789170f40b60fc28fa5002a25c04bc256fe9` |
| 10 | `theorem` | [kroneckerCompletionEquivL2_kernelVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant8ff923ee4c12c25d8ac1acd6090cf56b9f45717d1acc3d2fe6e1db0f8a9290d9.lean/declarations/kroneckercompletionequivl2-kernelvector--0d49f0ee08d75cd24dc4853c.md) | 132 | `result-track:0d49f0ee08d75cd24dc4853c7dc76c02e722a8aba842785f00f7bba47691184c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
