# Verification target: GRWTSK.Analysis.MeasureTheory.RootActualXiExponentialEnvelope.Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e243fad8fb0d74b25f5000dee997a3ac49a8948a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e243fad8fb0d74b25f5000dee997a3ac49a8948a`.

Source path: `GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiTailPrimitive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiExponentialEnvelopeConstant](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean/declarations/actualxiexponentialenvelopeconstant--5e35050a18ae19b9359ccfa9.md) | 28 | `declaration-track:5e35050a18ae19b9359ccfa9335c5977b4d2649b849f71a6361055c23c4ac364` |
| 2 | `theorem` | [coefficient_nonneg](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean/declarations/coefficient-nonneg--4be7a9dd2a0345c3d25fdbdb.md) | 31 | `result-track:4be7a9dd2a0345c3d25fdbdb896ca20aec77242ff6d86258c858af9839a153ff` |
| 3 | `theorem` | [actualXiTailTimeDensity_abs_le](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean/declarations/actualxitailtimedensity-abs-le--531be8824df1d6f28105696d.md) | 36 | `result-track:531be8824df1d6f28105696dcbcee510abaa61d4c4478b563cc50810d98dc8b5` |
| 4 | `theorem` | [actualAnchoredXiTailPrimitive_abs_le](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean/declarations/actualanchoredxitailprimitive-abs-le--db12c62225d5708c90745eae.md) | 58 | `result-track:db12c62225d5708c90745eae0d2e0e215af2c0a65bbdddf8ade56ab2e9fb954b` |
| 5 | `theorem` | [primitive_continuousOn_Ici](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean/declarations/primitive-continuouson-ici--5b37e18335f848a638d8150f.md) | 81 | `result-track:5b37e18335f848a638d8150fa0943a5f70e7feee120419d87cc2128237c14162` |
| 6 | `theorem` | [actualXiLaplace_integrableOn](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean/declarations/actualxilaplace-integrableon--33c1297c3186b801125c7c94.md) | 94 | `result-track:33c1297c3186b801125c7c94c403acf80e3f4b943723135073b50aabc2273104` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
