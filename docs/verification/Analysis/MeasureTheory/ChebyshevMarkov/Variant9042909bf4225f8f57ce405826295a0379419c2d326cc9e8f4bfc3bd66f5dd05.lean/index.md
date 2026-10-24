# Verification target: GRWTSK.Analysis.MeasureTheory.ChebyshevMarkov.Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceefa9b1485a56a0f27b9425a664cc9a60041eed",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceefa9b1485a56a0f27b9425a664cc9a60041eed`.

Source path: `GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_mul_meas_ge_le_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean/declarations/pow-mul-meas-ge-le-elpnorm--2aedf77147e955cc0087f8f4.md) | 34 | `result-track:2aedf77147e955cc0087f8f4ed62eb6fd3f595fd26ac20522ecf6023a18d7c6c` |
| 2 | `theorem` | [mul_meas_ge_le_pow_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean/declarations/mul-meas-ge-le-pow-elpnorm--b4b1e8c26bc8f456fcd0198d.md) | 44 | `result-track:b4b1e8c26bc8f456fcd0198d9c931e01ee4dbefa1e263b2c25d9ba96531e7af8` |
| 3 | `theorem` | [mul_meas_ge_le_pow_eLpNorm'](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean/declarations/mul-meas-ge-le-pow-elpnorm--3ec4f68b33fa32c65ea84913.md) | 56 | `result-track:3ec4f68b33fa32c65ea84913ccf4fe8d2ce46730b757b10085271aed73c824ff` |
| 4 | `theorem` | [meas_ge_le_mul_pow_eLpNorm_enorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean/declarations/meas-ge-le-mul-pow-elpnorm-enorm--4573a3d93a31e18486f6ae46.md) | 63 | `result-track:4573a3d93a31e18486f6ae46df74503129fd9519d76c228549a5ac29c6e25e31` |
| 5 | `theorem` | [MemLp.meas_ge_lt_top'_enorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean/declarations/memlp-meas-ge-lt-top-enorm--71d494164152206080391db9.md) | 76 | `result-track:71d494164152206080391db93b70d2b6f082a3b18f589dd3255edd2f92cd4ee1` |
| 6 | `theorem` | [MemLp.meas_ge_lt_top'](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean/declarations/memlp-meas-ge-lt-top--1837e45a55a33f2328a6c4dc.md) | 85 | `result-track:1837e45a55a33f2328a6c4dcfa5f70f5bd172aefd3e7cbccf16316ae28ba3902` |
| 7 | `theorem` | [MemLp.meas_ge_lt_top_enorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean/declarations/memlp-meas-ge-lt-top-enorm--82fe7120c06cc779ba3b0013.md) | 92 | `result-track:82fe7120c06cc779ba3b0013262dda087856784f3c317fbc793897a3d7eae7a4` |
| 8 | `theorem` | [MemLp.meas_ge_lt_top](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean/declarations/memlp-meas-ge-lt-top--6795550b7b72e1fa5976b001.md) | 97 | `result-track:6795550b7b72e1fa5976b0013a215d75f8d901ee1ff26335940d46e2a8029e73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
