# Verification target: GRWTSK.NumberTheory.Rayleigh.Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1097be324df339d6d559a16d6e7a42144bb1b22b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1097be324df339d6d559a16d6e7a42144bb1b22b`.

Source path: `GRWTSK/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.ConjExponents` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [beattySeq](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/declarations/beattyseq--bcf10d5d760ce6b16454865a.md) | 49 | `declaration-track:bcf10d5d760ce6b16454865a1a880d1816dd6ac46339cd64483e9bd6cad49ed7` |
| 2 | `def` | [beattySeq'](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/declarations/beattyseq--a1bddb05cbe9fc1a997af771.md) | 53 | `declaration-track:a1bddb05cbe9fc1a997af771dfc680f19c5d1b5cb662898b4f247e9c65106c9c` |
| 3 | `theorem` | [no_collision](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/declarations/no-collision--0027c8724455a917fdda43a9.md) | 62 | `result-track:0027c8724455a917fdda43a9631c2889de399afcb769f742ca0e2a818b3b4e90` |
| 4 | `theorem` | [no_anticollision](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/declarations/no-anticollision--752244eff2291fff7bd62901.md) | 78 | `result-track:752244eff2291fff7bd62901f1b05b264cca8f48510bf94a52dd6f6c94da692b` |
| 5 | `theorem` | [hit_or_miss](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/declarations/hit-or-miss--c2218027ef18897a6a6012fa.md) | 89 | `result-track:c2218027ef18897a6a6012fa0365112e9ae9f21cb0fa9822d09a99d5bfc814a1` |
| 6 | `theorem` | [hit_or_miss'](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/declarations/hit-or-miss--c516af489bfa8323bcc4e7cf.md) | 101 | `result-track:c516af489bfa8323bcc4e7cf711ee681cbbd405ce6c8027767fe9b0e806c2081` |
| 7 | `theorem` | [compl_beattySeq](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/declarations/compl-beattyseq--cd8e4982d4d54bbe27a50c85.md) | 116 | `result-track:cd8e4982d4d54bbe27a50c8576d045a9cbd302de2b68b137d068833a92f770ba` |
| 8 | `theorem` | [compl_beattySeq'](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/declarations/compl-beattyseq--4b3aacdf886eb5756f5006bc.md) | 127 | `result-track:4b3aacdf886eb5756f5006bcc8a2b2c07819b4b19c78762cb956551ed11d98ec` |
| 9 | `theorem` | [beattySeq_symmDiff_beattySeq'_pos](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/declarations/beattyseq-symmdiff-beattyseq-pos--6f8867c9b0a41baa4dd6ad5b.md) | 135 | `result-track:6f8867c9b0a41baa4dd6ad5b57d640435eb9ed92feaadf741491cf928f21cbf6` |
| 10 | `theorem` | [beattySeq'_symmDiff_beattySeq_pos](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/declarations/beattyseq-symmdiff-beattyseq-pos--6270236882c9cc5e748bd7d7.md) | 158 | `result-track:6270236882c9cc5e748bd7d7ab8d6a1ca485cb50cd28a7930c68625569509e1c` |
| 11 | `theorem` | [Irrational.beattySeq'_pos_eq](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/declarations/irrational-beattyseq-pos-eq--568bbfc5a777fa72632c575f.md) | 163 | `result-track:568bbfc5a777fa72632c575f665dc1d7be1b545bbb044e5bc47576b3ec480007` |
| 12 | `theorem` | [Irrational.beattySeq_symmDiff_beattySeq_pos](../../../../mathematics/NumberTheory/Rayleigh/Variant0fbc6c0ef8f49f7959c0d5e4142cc04bd8d3aa8ba5e1d7c3cadfbe539c314b49.lean/declarations/irrational-beattyseq-symmdiff-beattyseq-pos--6bb16b11b761686ac5e50100.md) | 173 | `result-track:6bb16b11b761686ac5e50100a305ce8f994bf171f289df9e6a4fe3d49412491b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
