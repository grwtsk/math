# tr_respects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4cb0e7e-f3b9-b1dc-8228-dae494517fc0",
  "kind": "theorem",
  "lexical_name": "tr_respects",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "tr-respects--ee1a59beccd27c8bb3fd3fd3",
  "source": {
    "blob": "8e5b31d39d6dea47790cb5fec7eafa75b7029607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1904,
    "line": 1858,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee1a59beccd27c8bb3fd3fd3feb8275803180b701611ff289b6d7ea2b4167d82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4cb0e7e-f3b9-b1dc-8228-dae494517fc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1858–1904.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_respects {enc₀} :
    Respects (step M) (step (tr enc dec M)) fun c₁ c₂ ↦ trCfg enc enc₀ c₁ = c₂ :=
  fun_respects.2 fun ⟨l₁, v, T⟩ ↦ by
    obtain ⟨L, R, rfl⟩ := T.exists_mk'
    cases' l₁ with l₁
    · exact rfl
    suffices ∀ q R, Reaches (step (tr enc dec M)) (stepAux (trNormal dec q) v (trTape' enc0 L R))
        (trCfg enc enc0 (stepAux q v (Tape.mk' L R))) by
      refine' TransGen.head' rfl _
      rw [trTape_mk']
      exact this _ R
    clear R l₁
    intro q R
    induction' q generalizing v L R
    case move d q IH =>
      cases d <;>
          simp only [trNormal, iterate, stepAux_move, stepAux, ListBlank.head_cons,
            Tape.move_left_mk', ListBlank.cons_head_tail, ListBlank.tail_cons,
            trTape'_move_left enc0, trTape'_move_right enc0] <;>
        apply IH
    case write f q IH =>
      simp only [trNormal, stepAux_read dec enc0 encdec, stepAux]
      refine' ReflTransGen.head rfl _
      obtain ⟨a, R, rfl⟩ := R.exists_cons
      rw [tr, Tape.mk'_head, stepAux_write, ListBlank.head_cons, stepAux_move,
        trTape'_move_left enc0, ListBlank.head_cons, ListBlank.tail_cons, Tape.write_mk']
      apply IH
    case load a q IH =>
      simp only [trNormal, stepAux_read dec enc0 encdec]
      apply IH
    case branch p q₁ q₂ IH₁ IH₂ =>
      simp only [trNormal, stepAux_read dec enc0 encdec, stepAux]
      cases p R.head v <;> [apply IH₂; apply IH₁]
    case goto l =>
      simp only [trNormal, stepAux_read dec enc0 encdec, stepAux, trCfg, trTape_mk']
      apply ReflTransGen.refl
    case halt =>
      simp only [trNormal, stepAux, trCfg, stepAux_move, trTape'_move_left enc0,
        trTape'_move_right enc0, trTape_mk']
      apply ReflTransGen.refl
#align turing.TM1to1.tr_respects Turing.TM1to1.tr_respects

open Classical

variable [Fintype Γ]

/-- The set of accessible `Λ'.write` machine states. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean#L1858).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e5b31d39d6dea47790cb5fec7eafa75b7029607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
