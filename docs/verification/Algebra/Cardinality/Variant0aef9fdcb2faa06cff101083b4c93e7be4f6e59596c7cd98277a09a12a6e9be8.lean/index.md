# Verification target: GRWTSK.Algebra.Cardinality.Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c860903b457fad08e2f26277248e65f6bb25f8d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c860903b457fad08e2f26277248e65f6bb25f8d`.

Source path: `GRWTSK/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Free` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cardinalMk_eq_max_lift](../../../../mathematics/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/declarations/cardinalmk-eq-max-lift--c0524d688155ac3a1213be91.md) | 35 | `result-track:c0524d688155ac3a1213be9142a901d9c6adb32db9a8d81f42ffc7e5766c6373` |
| 2 | `theorem` | [cardinalMk_eq_lift](../../../../mathematics/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/declarations/cardinalmk-eq-lift--bae0797c7e75329aff1de9f9.md) | 43 | `result-track:bae0797c7e75329aff1de9f9fea3eec378cd0f2b61817b22af1592e09f794266` |
| 3 | `theorem` | [cardinalMk_eq_one](../../../../mathematics/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/declarations/cardinalmk-eq-one--f8fd0cea702cf69b1a52adf3.md) | 49 | `result-track:f8fd0cea702cf69b1a52adf3e8f4286f26ad70cba73efd9d2f513bb7792d153f` |
| 4 | `theorem` | [cardinalMk_le_max_lift](../../../../mathematics/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/declarations/cardinalmk-le-max-lift--1ca4178458486fe1cf0b62f4.md) | 52 | `result-track:1ca4178458486fe1cf0b62f42bad08f6ae02339469114e7d1300b493af11235f` |
| 5 | `theorem` | [cardinalMk_eq_max](../../../../mathematics/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/declarations/cardinalmk-eq-max--b1ce90a57c5f277d2e8d077e.md) | 62 | `result-track:b1ce90a57c5f277d2e8d077e3ca255a362905d962d2612774618329d5b522cb4` |
| 6 | `theorem` | [cardinalMk_eq](../../../../mathematics/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/declarations/cardinalmk-eq--74170cfb8b3d3f2bc2b5aa89.md) | 65 | `result-track:74170cfb8b3d3f2bc2b5aa898defdc0cfa7d80e1657a3e296c4549d867562aae` |
| 7 | `theorem` | [cardinalMk_le_max](../../../../mathematics/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/declarations/cardinalmk-le-max--7727f8988f14f8dba8fc6c1f.md) | 68 | `result-track:7727f8988f14f8dba8fc6c1f817a21988c8cea5993e24e6b5c2f74d272851c8d` |
| 8 | `theorem` | [lift_cardinalMk_adjoin_le](../../../../mathematics/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/declarations/lift-cardinalmk-adjoin-le--179e2c2480c3c2c29ea612c8.md) | 75 | `result-track:179e2c2480c3c2c29ea612c8b6014a203fc06c94a58ec6bbfc58fbf1fe231f5e` |
| 9 | `theorem` | [cardinalMk_adjoin_le](../../../../mathematics/Algebra/Cardinality/Variant0aef9fdcb2faa06cff101083b4c93e7be4f6e59596c7cd98277a09a12a6e9be8.lean/declarations/cardinalmk-adjoin-le--0565004d6eda61bb923c4f85.md) | 82 | `result-track:0565004d6eda61bb923c4f8519a732c10857863229f67beabe09de3713ab7eca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
