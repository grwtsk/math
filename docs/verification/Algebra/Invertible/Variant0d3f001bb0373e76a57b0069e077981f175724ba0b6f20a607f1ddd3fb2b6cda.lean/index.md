# Verification target: GRWTSK.Algebra.Invertible.Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f67cd944e54eb2c0c589cd5c35411ba92d1f347",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invertible/Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Invertible/Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda.lean/index.md) · [Full source](../../../../mathematics/Algebra/Invertible/Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f67cd944e54eb2c0c589cd5c35411ba92d1f347`.

Source path: `GRWTSK/Algebra/Invertible/Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invertible/Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Invertible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [invOf_pos](../../../../mathematics/Algebra/Invertible/Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda.lean/declarations/invof-pos--440d4845cd3808450b17166e.md) | 17 | `result-track:440d4845cd3808450b17166e80a176da20824b5f09b4c2091069ac4794bf9a40` |
| 2 | `theorem` | [invOf_nonpos](../../../../mathematics/Algebra/Invertible/Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda.lean/declarations/invof-nonpos--b4374e16ca5b9acda21483b0.md) | 22 | `result-track:b4374e16ca5b9acda21483b02c629bcfbeceff87c6b4a0b7cfcf69cef897a7f3` |
| 3 | `theorem` | [invOf_nonneg](../../../../mathematics/Algebra/Invertible/Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda.lean/declarations/invof-nonneg--b2adaf00651b5e36fbcd255e.md) | 25 | `result-track:b2adaf00651b5e36fbcd255eb7a5709a86b32d1744619085ad9fe91f558962ac` |
| 4 | `theorem` | [invOf_lt_zero](../../../../mathematics/Algebra/Invertible/Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda.lean/declarations/invof-lt-zero--3bb7aaf85d08951d4a0acf50.md) | 30 | `result-track:3bb7aaf85d08951d4a0acf5007974c9d294f069a01669229ca45f88f03728075` |
| 5 | `theorem` | [invOf_le_one](../../../../mathematics/Algebra/Invertible/Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda.lean/declarations/invof-le-one--a54308864008a9dd2cb9bf0d.md) | 33 | `result-track:a54308864008a9dd2cb9bf0d1eb36af40a2ca61646b38bfbac3fd2c66bd46ff7` |
| 6 | `theorem` | [pos_invOf_of_invertible_cast](../../../../mathematics/Algebra/Invertible/Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda.lean/declarations/pos-invof-of-invertible-cast--a86c8172dd14cf7ccacc4763.md) | 36 | `result-track:a86c8172dd14cf7ccacc47632af469754523b95ad032ada64e253dcf33420b0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
