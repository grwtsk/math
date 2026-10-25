# Cal_sound_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b22ba5bd4f9ff9e61ba11eb2e4c8b21875bd1940",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0523b36d-b011-0268-f4a7-6498b28063be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b3ed202-9b27-5cec-4c57-ee1af2824806",
  "kind": "theorem",
  "lexical_name": "Cal_sound_complete",
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
  "slug": "cal-sound-complete--79bfa0b1758de15821ff427b",
  "source": {
    "blob": "b22ba5bd4f9ff9e61ba11eb2e4c8b21875bd1940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 287,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79bfa0b1758de15821ff427b687e05e879eb816cacd7664f0ab747f5ca28c0ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b3ed202-9b27-5cec-4c57-ee1af2824806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cal_sound_complete [DecidableEq Φ]
  (l r : List Φ) (Γ Δ : List (Form Φ))
  : Cal l r Γ Δ ↔ ∀ i : Φ → Prop, DecidablePred i → SC' i l r Γ Δ := by
  match Γ, Δ with
  | [], [] =>
    apply Iff.intro
    case mp =>
      intro h i _ A
      let ⟨a, al, ar⟩ : ∃ a, a ∈ l ∧ a ∈ r := by
        unfold Cal at h
        exact Common.mem h
      have ml : ♩a ∈ l.map (♩·) := Mem.map (♩·) al
      have Va : Val i (♩a) := Iff.mp (All.mem (Val i) (l.map (♩·))) A (♩a) ml
      have mr : ♩a ∈ r.map (♩·) := Mem.map (♩·) ar
      apply Iff.mpr (Any.mem (Val i) _) ⟨♩a, ⟨Va, mr⟩⟩
    case mpr =>
      intro h
      let i a := a ∈ l
      have dec : DecidablePred i := inferInstance
      have h' : All (Val i) (l.map (♩·)) → Any (Val i) (r.map (♩·)) := h i dec
      have All_l : All (Val i) (l.map (♩·)) := Iff.mpr (All.map (Val i) (♩·) l) (All.in_self l)
      have Any_r : Any (Val (· ∈ l)) (r.map (♩·)) := h' All_l
      have Any_r' : Any (fun n => Val (· ∈ l) (♩n)) r := Iff.mp (Any.map (Val i) (♩·) r) Any_r
      unfold Cal
      apply Common.sym Any_r'
  | ⊥ :: Γ, [] =>
    simp
  | Γ, ⊥ :: Δ =>
    have ih : Cal l r Γ Δ ↔ ∀ i, DecidablePred i → SC' i l r Γ Δ :=
      Cal_sound_complete l r Γ Δ
    aesop
  | ♩n :: Γ, [] =>
    have ih : Cal (n :: l) r Γ [] ↔ ∀ i, DecidablePred i → SC' i (n :: l) r Γ [] :=
      Cal_sound_complete (n :: l) r Γ []
    have perm : (Γ ++ ♩n :: l.map (♩·)) ↭ (♩n :: Γ ++ l.map (♩·)) := Perm.shift (♩n) Γ _
    apply Iff.intro
    case mp =>
      intro h i dec
      unfold Cal at h
      have ihr : SC' i (n :: l) r Γ [] := Iff.mp ih h i dec
      apply SC.all (Perm.sym perm) ihr
    case mpr =>
      intro h
      have hSC : ∀ i, DecidablePred i → SC' i (n :: l) r Γ [] := by
        intro i dec
        apply SC.all perm (h i dec)
      unfold Cal
      apply Iff.mpr ih hSC
  | Γ, ♩n :: Δ =>
    have ih : Cal l (n :: r) Γ Δ ↔ ∀ i, DecidablePred i → SC' i l (n :: r) Γ Δ :=
      Cal_sound_complete l (n :: r) Γ Δ
    have perm : (Δ ++ ♩n :: r.map (♩·)) ↭ (♩n :: Δ ++ r.map (♩·)) := Perm.shift (♩n) Δ _
    apply Iff.intro
    case mp =>
      intro h i dec
      simp at h
      have ihr : SC' i l (n :: r) Γ Δ := Iff.mp ih h i dec
      apply SC.any perm ihr
    case mpr =>
      intro h
      have hSC : ∀ i, DecidablePred i → SC' i l (n :: r) Γ Δ := by
        intro i dec
        apply SC.any (Perm.sym perm) (h i dec)
      simp [Iff.mpr ih hSC]
  | φ ⇒ ψ :: Γ, [] =>
    have ih₁ : Cal l r Γ [φ] ↔ ∀ i, DecidablePred i → SC' i l r Γ [φ] :=
      Cal_sound_complete l r Γ [φ]
    have ih₂ : Cal l r (ψ :: Γ) [] ↔ ∀ i, DecidablePred i → SC' i l r (ψ :: Γ) [] :=
      Cal_sound_complete l r (ψ :: Γ) []
    apply Iff.intro
    case mp =>
      intro h i dec
      simp at h
      have ih₁' : SC' i l r Γ [φ] := Iff.mp ih₁ h.left i dec
      cases (Val.instDecidable i φ) <;> simp_all
    case mpr =>
      intro h
      simp
      apply And.intro
      case left =>
        apply Iff.mpr ih₁
        intro i dec
        cases (Val.instDecidable i φ) <;> simp_all
      case right =>
        apply Iff.mpr ih₂
        intro i dec
        cases (Val.instDecidable i φ) <;> simp_all
  | Γ, φ ⇒ ψ :: Δ =>
    have ih : Cal l r (φ :: Γ) (ψ :: Δ) ↔ ∀ i, DecidablePred i →
      SC' i l r (φ :: Γ) (ψ :: Δ) :=
      Cal_sound_complete l r (φ :: Γ) (ψ :: Δ)
    apply Iff.intro
    case mp =>
      intro h i dec
      cases (Val.instDecidable i φ) <;> simp_all
    case mpr =>
      intro h
      simp
      apply Iff.mpr ih
      intro i dec
      cases (Val.instDecidable i φ)
      case isFalse no =>
        simp_all
      case isTrue yes =>
        intro AllφΓ
        have AllΓ : All (Val i) (Γ ++ l.map (♩·)) := by simp_all
        have AnyφψΔ : Any (Val i) (φ ⇒ ψ :: Δ ++ r.map (♩·)) := h i dec AllΓ
        simp_all
termination_by sum (Γ.map sizeOf) + sum (Δ.map sizeOf)
decreasing_by all_goals simp_wf <;> simp +arith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22ba5bd4f9ff9e61ba11eb2e4c8b21875bd1940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
