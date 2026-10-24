# Verification target: GRWTSK.Analysis.MeasureTheory.AddCircle.Variant1536d4b88df20e15ef3e720747a710783de7404321e5a66707bccfaea677e218

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e9800b0ad1714148fe492faeb65ca65db101d3c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AddCircle/Variant1536d4b88df20e15ef3e720747a710783de7404321e5a66707bccfaea677e218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant1536d4b88df20e15ef3e720747a710783de7404321e5a66707bccfaea677e218.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant1536d4b88df20e15ef3e720747a710783de7404321e5a66707bccfaea677e218.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e9800b0ad1714148fe492faeb65ca65db101d3c`.

Source path: `GRWTSK/Analysis/MeasureTheory/AddCircle/Variant1536d4b88df20e15ef3e720747a710783de7404321e5a66707bccfaea677e218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AddCircle/Variant1536d4b88df20e15ef3e720747a710783de7404321e5a66707bccfaea677e218.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Periodic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Quotient` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [closedBall_ae_eq_ball](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant1536d4b88df20e15ef3e720747a710783de7404321e5a66707bccfaea677e218.lean/declarations/closedball-ae-eq-ball--a6b31bdecc9125c3ccca3723.md) | 42 | `result-track:a6b31bdecc9125c3ccca372312927cc3ad3bae4e20b91245bd3a541ea83c7a3c` |
| 2 | `theorem` | [isAddFundamentalDomain_of_ae_ball](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant1536d4b88df20e15ef3e720747a710783de7404321e5a66707bccfaea677e218.lean/declarations/isaddfundamentaldomain-of-ae-ball--495e540739a2fed0be83a515.md) | 62 | `result-track:495e540739a2fed0be83a51510968cd5829540a5252ebefbceac1e71c922861c` |
| 3 | `theorem` | [volume_of_add_preimage_eq](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant1536d4b88df20e15ef3e720747a710783de7404321e5a66707bccfaea677e218.lean/declarations/volume-of-add-preimage-eq--3b8573cf85f43bf17c7f4c05.md) | 103 | `result-track:3b8573cf85f43bf17c7f4c05df19c993ff99bd05bf90715a82218d0c7e7341bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
