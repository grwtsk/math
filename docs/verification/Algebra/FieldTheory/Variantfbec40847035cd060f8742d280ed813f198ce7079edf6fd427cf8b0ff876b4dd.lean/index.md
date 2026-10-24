# Verification target: GRWTSK.Algebra.Field.Variantfbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc8ebdf09a387354559c9583b6bbb93255b7ae98",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variantfbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variantfbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variantfbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc8ebdf09a387354559c9583b6bbb93255b7ae98`.

Source path: `GRWTSK/Algebra/Field/Variantfbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variantfbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.KrullDimension.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ringKrullDim_eq_zero_of_field](../../../../mathematics/Algebra/FieldTheory/Variantfbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd.lean/declarations/ringkrulldim-eq-zero-of-field--c6ead9a97c0af2c7bd0a3dfb.md) | 17 | `result-track:c6ead9a97c0af2c7bd0a3dfb2b5ff792481d38ca0caa32373d49879adf4091ab` |
| 2 | `theorem` | [ringKrullDim_eq_zero_of_isField](../../../../mathematics/Algebra/FieldTheory/Variantfbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd.lean/declarations/ringkrulldim-eq-zero-of-isfield--7358152d94e88ce70e19e77a.md) | 20 | `result-track:7358152d94e88ce70e19e77ae4a2f2e1423b96bae7613298ddf2c3261f698bb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
