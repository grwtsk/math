# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisBase

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac2b21d5a84f683a67e04cad4377a9deca32330a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac2b21d5a84f683a67e04cad4377a9deca32330a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripBoundaryCollar`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [poleNormalizedZeta_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/declarations/polenormalizedzeta-zero--b81fbee7bc4d7867eac81ffb.md) | 27 | `result-track:b81fbee7bc4d7867eac81ffbc19685529b9d64b0fbe0aca640eedb7b3cad7059` |
| 2 | `theorem` | [poleNormalized_re_pos_on_real_unit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/declarations/polenormalized-re-pos-on-real-unit--aed6800cf8cc86a9d484dd59.md) | 32 | `result-track:aed6800cf8cc86a9d484dd5959868a3fbb33d49f2756ef3cebbe86f845bff14a` |
| 3 | `def` | [realCoreSegment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/declarations/realcoresegment--2decbd4da3080cc3d86e43fb.md) | 40 | `declaration-track:2decbd4da3080cc3d86e43fb29fc632e0f788f4af3832c0b1598e5e4ed6b8975` |
| 4 | `lemma` | [realCoreSegment_isCompact](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/declarations/realcoresegment-iscompact--f3b036891ecc1ea6aa3b9248.md) | 42 | `result-track:f3b036891ecc1ea6aa3b924862bf588ed383b293a7c905e94d4fa197c1950364` |
| 5 | `lemma` | [realCoreSegment_nonempty](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/declarations/realcoresegment-nonempty--101390251d71c68e4280c20b.md) | 45 | `result-track:101390251d71c68e4280c20b0cfbf8f5bacf94af65c2c3c011ccdf57c56d39be` |
| 6 | `lemma` | [poleNormalized_nonzero_on_realCore](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/declarations/polenormalized-nonzero-on-realcore--de7c35f42abab9756827d6b0.md) | 50 | `result-track:de7c35f42abab9756827d6b0c684b768981308debd7e9b8107985f7f416cd998` |
| 7 | `theorem` | [exists_realAxis_norm_collar](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/declarations/exists-realaxis-norm-collar--7cf2c4ee3ed9524c30f31abb.md) | 60 | `result-track:7cf2c4ee3ed9524c30f31abb20abfc49c31b588759faa3b365f19fa220d0d7a1` |
| 8 | `theorem` | [exists_positive_height_without_target_zeros](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/declarations/exists-positive-height-without-target-zeros--697e5540a25123706c149fac.md) | 85 | `result-track:697e5540a25123706c149face3f05a8b4884c03197417be0b802353b7cb10226` |
| 9 | `theorem` | [rh_of_all_interior_covers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/declarations/rh-of-all-interior-covers--7fa46da00f254dfb0459c1fe.md) | 100 | `result-track:7fa46da00f254dfb0459c1fea61a2072e05a46635fe60b9b236e877bfda61730` |
| 10 | `def` | [selectedRightBoundaryCollar](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/declarations/selectedrightboundarycollar--b9011b18865add383c1044b5.md) | 113 | `declaration-track:b9011b18865add383c1044b5da49dc7b9942e34487d5c727abaf367bc07b77f8` |
| 11 | `theorem` | [rh_of_selected_interior_covers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/declarations/rh-of-selected-interior-covers--f3d6c83e481b3fd61b20b2f7.md) | 117 | `result-track:f3d6c83e481b3fd61b20b2f70aceed75ac0453ccc53e5152ca6aa9c8dc213347` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
