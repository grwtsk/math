# roth_3ap_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02685f26-be5d-0148-d15d-c8345077463d",
  "kind": "theorem",
  "lexical_name": "roth_3ap_theorem",
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
  "slug": "roth-3ap-theorem--06b0d5f62fd2884c33b31f56",
  "source": {
    "blob": "61b864640791ebb4661a1330ddc564dbb0df1380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 148,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06b0d5f62fd2884c33b31f563eb4a591052da92cea1325af56415325b199584c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02685f26-be5d-0148-d15d-c8345077463d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roth_3ap_theorem (ε : ℝ) (hε : 0 < ε) (hG : cornersTheoremBound ε ≤ card G)
    (A : Finset G) (hAε : ε * card G ≤ #A) : ¬ ThreeAPFree (A : Set G) := by
  rintro hA
  classical
  let B : Finset (G × G) := univ.filter fun (x, y) ↦ y - x ∈ A
  have : ε * card G ^ 2 ≤ #B := by
    calc
      _ = card G * (ε * card G) := by ring
      _ ≤ card G * #A := by gcongr
      _ = #B := ?_
    norm_cast
    rw [← card_univ, ← card_product]
    exact card_equiv ((Equiv.refl _).prodShear fun a ↦ Equiv.addLeft a) (by simp [B])
  obtain ⟨x₁, y₁, x₂, y₂, hx₁y₁, hx₁y₂, hx₂y₁, hxy, hx₁x₂⟩ :
      ∃ x₁ y₁ x₂ y₂, y₁ - x₁ ∈ A ∧ y₂ - x₁ ∈ A ∧ y₁ - x₂ ∈ A ∧ x₁ + y₂ = x₂ + y₁ ∧ x₁ ≠ x₂ := by
    simpa [IsCornerFree, isCorner_iff, B, -exists_and_left, -exists_and_right]
      using corners_theorem ε hε hG B this
  have := hA hx₂y₁ hx₁y₁ hx₁y₂ <| by -- TODO: This really ought to just be `by linear_combination h`
    rw [sub_add_sub_comm, add_comm, add_sub_add_comm, add_right_cancel_iff,
      sub_eq_sub_iff_add_eq_add, add_comm, hxy, add_comm]
  exact hx₁x₂ <| by simpa using this.symm

/-- **Roth's theorem** for `ℕ`.

The maximum density of a 3AP-free set in `{1, ..., n}` goes to zero as `n` tends to infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b864640791ebb4661a1330ddc564dbb0df1380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
