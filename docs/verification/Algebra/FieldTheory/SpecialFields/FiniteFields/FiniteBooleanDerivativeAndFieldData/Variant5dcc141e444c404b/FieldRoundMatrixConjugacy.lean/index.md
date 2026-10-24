# Verification target: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteBooleanDerivativeAndFieldData.Variant5dcc141e444c404b.FieldRoundMatrixConjugacy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddc851be4cf6887a35cb8a7cdb2f79f9f97270b4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddc851be4cf6887a35cb8a7cdb2f79f9f97270b4`.

Source path: `GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.FiniteField.Galois` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Round` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteBooleanDerivativeAndFieldData.Variant5dcc141e444c404b.LinearEncodingBitCode`](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/LinearEncodingBitCode.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transportToMatrix](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean/declarations/transporttomatrix--07c94c8278931d0149277b0d.md) | 56 | `declaration-track:07c94c8278931d0149277b0dbef4e33149dc758806200810a58fcda6e14e12e5` |
| 2 | `theorem` | [flatten_transportToMatrix](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean/declarations/flatten-transporttomatrix--21e3293060e31425ebceee58.md) | 66 | `result-track:21e3293060e31425ebceee5803f02a2f70dd5c182b7c278f871b564751ae5a4e` |
| 3 | `def` | [encodeFieldRound](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean/declarations/encodefieldround--68f8da38706556c93174e045.md) | 77 | `declaration-track:68f8da38706556c93174e04550c72b99d34a5c1c87477b9f63985649e39515a1` |
| 4 | `theorem` | [encodeFieldRound_bijective](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean/declarations/encodefieldround-bijective--e38cf415a05c75c950b4ef61.md) | 87 | `result-track:e38cf415a05c75c950b4ef61adb9d97764fb50c5f81af5eae980832d941a74b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
