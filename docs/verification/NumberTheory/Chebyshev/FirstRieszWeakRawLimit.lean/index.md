# Verification target: GRWTSK.NumberTheory.Chebyshev.FirstRieszWeakRawLimit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74db95b6f866bf20c6abbed0f97e63aafb143151",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74db95b6f866bf20c6abbed0f97e63aafb143151`.

Source path: `GRWTSK/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.ClassicalRieszNormalization`](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszNormalization.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.NormalizedRieszFiniteEvaluation`](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rawClassicalHead](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/declarations/rawclassicalhead--fdd374a4bed753904b1caa04.md) | 21 | `declaration-track:fdd374a4bed753904b1caa0439e9b131f8378588543dada6a8072099fe995de9` |
| 2 | `def` | [finiteClassicalPrimitive](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/declarations/finiteclassicalprimitive--af937d50d2220a748726797d.md) | 24 | `declaration-track:af937d50d2220a748726797d64c9415b653c10b8fa89befe69ee386f5f4a3bf7` |
| 3 | `theorem` | [hasDerivAt_finiteClassicalPrimitive](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/declarations/hasderivat-finiteclassicalprimitive--0ab6dd63236950507909b4b2.md) | 27 | `result-track:0ab6dd63236950507909b4b233c00b9185eb09327c852956a723a66df0a5d862` |
| 4 | `theorem` | [continuousAt_rawClassicalHead](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/declarations/continuousat-rawclassicalhead--ba05718c2a4a95387acc4afc.md) | 35 | `result-track:ba05718c2a4a95387acc4afce95bc071989c651d384b0a884c9a277bf5dc360c` |
| 5 | `theorem` | [integral_rawClassicalHead](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/declarations/integral-rawclassicalhead--b4cb979ad3ad83afc202e6e8.md) | 42 | `result-track:b4cb979ad3ad83afc202e6e85896086e01b632a6e6fb14814b6893b90393d11f` |
| 6 | `theorem` | [norm_primitive_error_le](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/declarations/norm-primitive-error-le--a00875153f78147f4fb4c497.md) | 50 | `result-track:a00875153f78147f4fb4c49732d154aa4a9404359d65bb6a87203b0cfc23d44b` |
| 7 | `theorem` | [norm_integral_error_le](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/declarations/norm-integral-error-le--ad1b20327c51d3aba6529059.md) | 61 | `result-track:ad1b20327c51d3aba652905909820efe3121a0ce314ae898cf454d6138952dfc` |
| 8 | `theorem` | [integral_rawClassicalHead_tendsto_source](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/declarations/integral-rawclassicalhead-tendsto-source--310253ca73253e3240c4a016.md) | 74 | `result-track:310253ca73253e3240c4a0160e2fa8c5cd7b3859f3d9786ae9d9c6880d382cea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
