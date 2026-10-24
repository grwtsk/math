# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoPhase

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eda0beee60e7eafd324422ce353f01072df66ca0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eda0beee60e7eafd324422ce353f01072df66ca0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoSource`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripLogEnclosure`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Trigonometric` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [log_two_interval](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/declarations/log-two-interval--386359666253204e6e2a0e81.md) | 26 | `result-track:386359666253204e6e2a0e8179f996b7d36088f07b3ab4fbbb5ff23e5e97fcad` |
| 2 | `lemma` | [reduced_angle_interval](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/declarations/reduced-angle-interval--dc936b484c3f9ea9c71b2415.md) | 30 | `result-track:dc936b484c3f9ea9c71b24155b764dd287da96d8f3104b401d2d88b8d558486f` |
| 3 | `lemma` | [sector_trig](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/declarations/sector-trig--e6de42e0836acf6f9696a84d.md) | 41 | `result-track:e6de42e0836acf6f9696a84db94b8df37fe420e7f7d968e749a2cbd4dee8d6e9` |
| 4 | `lemma` | [positive_height_trig](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/declarations/positive-height-trig--50dd2ebd0844b284fc5ba345.md) | 64 | `result-track:50dd2ebd0844b284fc5ba3456ad6a5500807eb2890a115da17f928991b30eadf` |
| 5 | `lemma` | [signed_height_trig](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/declarations/signed-height-trig--bdc4bfd3da4a39bc2eaf460d.md) | 71 | `result-track:bdc4bfd3da4a39bc2eaf460d131ac6bf83c4f2485e834ef7758f8570ad425884` |
| 6 | `lemma` | [power_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/declarations/power-re--7f1c47caddff7aaa96179cb0.md) | 85 | `result-track:7f1c47caddff7aaa96179cb0faa0000cf38c7b3a12cb455c1a4845d11857b1ea` |
| 7 | `lemma` | [power_im](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/declarations/power-im--45cf381594286c3dce880cc7.md) | 96 | `result-track:45cf381594286c3dce880cc79463a474e241bd1e93ee7ca42faac0654ff232b4` |
| 8 | `lemma` | [cone_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/declarations/cone-nonneg--fcae0c30e85299d5991f93ec.md) | 109 | `result-track:fcae0c30e85299d5991f93eca3d25d1c71ac75f9aafd4982cf84920ba3c6516a` |
| 9 | `lemma` | [projection_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/declarations/projection-lower--5f1f44f3337a2a81a750353d.md) | 119 | `result-track:5f1f44f3337a2a81a750353d58e580a8821a0a70377f82e03b684972f3a3580d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
