# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinTailDerivative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60a81adb71f26f27a942cca13e1a9b46226ecc37",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60a81adb71f26f27a942cca13e1a9b46226ecc37`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPrimitiveStep`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.MellinTransform` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/cutoff--04406f6c0ae8beb80bcd4c27.md) | 25 | `declaration-track:04406f6c0ae8beb80bcd4c2751722506dbe7a1a7d7125175a10b30ce9385c335` |
| 2 | `def` | [logIntegrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/logintegrand--e284ee0e105c29a31a23efe6.md) | 27 | `declaration-track:e284ee0e105c29a31a23efe652c5a40279e0536ff13724769a5a4b3b0dadce49` |
| 3 | `def` | [logTail](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/logtail--1e81a0f0b35b369d3e832004.md) | 30 | `declaration-track:1e81a0f0b35b369d3e832004ce029cd2ed5a7ddd4bd7d4a3d15f7766ecff65b7` |
| 4 | `lemma` | [cutoff_measurable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/cutoff-measurable--7801c7a90501d9fbe7c37fc0.md) | 33 | `result-track:7801c7a90501d9fbe7c37fc079335459c6680f85e5d445b61647aac16e233ac8` |
| 5 | `lemma` | [cutoff_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/cutoff-norm--273176f7399e0f8fb2a94090.md) | 36 | `result-track:273176f7399e0f8fb2a9409095356bc2a33b47939930ee1a391d3480548bebe4` |
| 6 | `lemma` | [cutoff_locallyIntegrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/cutoff-locallyintegrable--08718ddc63e5dbee822a3f7e.md) | 41 | `result-track:08718ddc63e5dbee822a3f7e00f563a0212268570567fffce90cfb6bda24c39c` |
| 7 | `lemma` | [cutoff_bigO_top](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/cutoff-bigo-top--e4d33fe931f8fd2688f6ea94.md) | 48 | `result-track:e4d33fe931f8fd2688f6ea9423f41c5f38f3b57e623fd98a331f8dce8fd2da47` |
| 8 | `lemma` | [cutoff_bigO_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/cutoff-bigo-zero--38690992a4f30846541b0312.md) | 54 | `result-track:38690992a4f30846541b03126afb248e718639f8fb3c02259a43fa9efa94ede9` |
| 9 | `lemma` | [mellin_cutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/mellin-cutoff--598950a222cadeaade2706e5.md) | 62 | `result-track:598950a222cadeaade2706e5bbfe7bd3b53d48703b68bb3b6798480c534d25cf` |
| 10 | `lemma` | [mellin_log_cutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/mellin-log-cutoff--deb1b4c49228bd7430db9479.md) | 78 | `result-track:deb1b4c49228bd7430db9479af64d461acf23122aacad9268376a6d0da8e8a78` |
| 11 | `theorem` | [tail_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/tail-hasderivat--b6db97ef2c79c3fcc8b8d1a0.md) | 96 | `result-track:b6db97ef2c79c3fcc8b8d1a0cb63b90b6705241b4d966513b80735ec077bbbe1` |
| 12 | `lemma` | [logIntegrand_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/logintegrand-bound--639b1ca133d14e9f948bb191.md) | 112 | `result-track:639b1ca133d14e9f948bb191d08271074f2fb3b42a2ed4540326b17a1a64dd2d` |
| 13 | `lemma` | [logIntegrand_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/logintegrand-integrable--e0e153e65ee778ebad91cb25.md) | 132 | `result-track:e0e153e65ee778ebad91cb25dbd76dce6c8441870c2d6a3e74d5dfcf6b8348e8` |
| 14 | `theorem` | [logTail_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/declarations/logtail-norm-le--e7289a47c6300beaf5568499.md) | 149 | `result-track:e7289a47c6300beaf5568499c0cd1233d9bc5fdb6e4fe02ea2b77c7803d44806` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
