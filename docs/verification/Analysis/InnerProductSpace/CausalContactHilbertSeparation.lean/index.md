# Verification target: GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c648cf161235be6f8a319980ba9adea4614e3487",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c648cf161235be6f8a319980ba9adea4614e3487`.

Source path: `GRWTSK/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation`](../../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prescribed_source_vector_not_ae_zero](../../../../mathematics/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/declarations/prescribed-source-vector-not-ae-zero--30cf47292f211a2001760f67.md) | 34 | `result-track:30cf47292f211a2001760f67a3cb8ba70a37d28c3fa3588da66106c8334225ff` |
| 2 | `def` | [touchingWindowL2](../../../../mathematics/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/declarations/touchingwindowl2--6aa1bc2afbb52131a21ce2d3.md) | 54 | `declaration-track:6aa1bc2afbb52131a21ce2d3e1d0eb209cee48ad9fb9e23fd0d983e19ba212f8` |
| 3 | `def` | [prescribedSourceL2](../../../../mathematics/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/declarations/prescribedsourcel2--b323cbad3f14d4f69280991f.md) | 60 | `declaration-track:b323cbad3f14d4f69280991f8df5ec8bd1669a855b14e5fa86c079b0192854ed` |
| 4 | `theorem` | [touching_window_L2_eq_zero](../../../../mathematics/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/declarations/touching-window-l2-eq-zero--a025d74513d81b512ae7cf9f.md) | 63 | `result-track:a025d74513d81b512ae7cf9f3e8f90c76c928cc3d39f19c9c6fd514fc6f3bb65` |
| 5 | `theorem` | [prescribed_source_L2_ne_zero](../../../../mathematics/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/declarations/prescribed-source-l2-ne-zero--a1426f6451a9e08ca023fcb9.md) | 69 | `result-track:a1426f6451a9e08ca023fcb9d19a395f00681b6ee431efdfe6e51a00966197aa` |
| 6 | `theorem` | [linear_hilbert_contact_map_ne_source](../../../../mathematics/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/declarations/linear-hilbert-contact-map-ne-source--9d98d55b378fc367a1e54a8e.md) | 79 | `result-track:9d98d55b378fc367a1e54a8e9df3db61dc99c9b83f85995ab89719dee70ebf04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
