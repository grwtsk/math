# Verification target: GRWTSK.NumberTheory.ActualLaurentSlopeAttempt01.Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "617dfbf6230e7462428409bd6d55b37b83a3ce7a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `617dfbf6230e7462428409bd6d55b37b83a3ce7a`.

Source path: `GRWTSK/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularNegativeLogDerivative](../../../../mathematics/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/declarations/regularnegativelogderivative--c98f78008abfb4c0f7f970a4.md) | 19 | `declaration-track:c98f78008abfb4c0f7f970a46754b4ad369094845e259f7507a2ddb7bf869212` |
| 2 | `theorem` | [actual_regular_zeta_derivative](../../../../mathematics/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/declarations/actual-regular-zeta-derivative--1e405c9852d6c713806429b3.md) | 22 | `result-track:1e405c9852d6c713806429b345c20f330fa903ec507150c5e5f33f7f4678a6f9` |
| 3 | `theorem` | [actual_regular_zeta_second_derivative_at_one](../../../../mathematics/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/declarations/actual-regular-zeta-second-derivative-at-one--4641e89689eebd1e419589de.md) | 28 | `result-track:4641e89689eebd1e419589deeac1815ee053274d4b2bdfd8e9ad847fd4b487fc` |
| 4 | `theorem` | [actual_regular_negative_value](../../../../mathematics/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/declarations/actual-regular-negative-value--9f1d1d50f81abcc9585d134c.md) | 42 | `result-track:9f1d1d50f81abcc9585d134c51c69b54498008534e957ff8e8a98c89a5a733ab` |
| 5 | `theorem` | [actual_regular_negative_derivative](../../../../mathematics/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/declarations/actual-regular-negative-derivative--c70052fa454df0c3132604c3.md) | 46 | `result-track:c70052fa454df0c3132604c3424073ecb62bf3477367efc0c6be0d4510bb5129` |
| 6 | `theorem` | [actual_regular_negative_slope](../../../../mathematics/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/declarations/actual-regular-negative-slope--abd4fd0b30fafd3f88947f52.md) | 55 | `result-track:abd4fd0b30fafd3f88947f52feb58490fa50bd5dc60d92d2f873bddd288856de` |
| 7 | `theorem` | [actual_negative_log_regularization](../../../../mathematics/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/declarations/actual-negative-log-regularization--de084d26f271178acbf8ad67.md) | 63 | `result-track:de084d26f271178acbf8ad670a72f034de936330a300fa36d52517bce1a2d552` |
| 8 | `theorem` | [actual_negative_log_laurent_slope](../../../../mathematics/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/declarations/actual-negative-log-laurent-slope--0d38267d647cf23704756496.md) | 72 | `result-track:0d38267d647cf23704756496c405357aec0b71e8cad878f767c144f3e0420a47` |
| 9 | `theorem` | [actual_vonMangoldt_series_laurent_slope](../../../../mathematics/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/declarations/actual-vonmangoldt-series-laurent-slope--07cb8d32fd904ea7c4670fd3.md) | 85 | `result-track:07cb8d32fd904ea7c4670fd362bbe6570144465064e9eb71e8a4a0f8075223e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
