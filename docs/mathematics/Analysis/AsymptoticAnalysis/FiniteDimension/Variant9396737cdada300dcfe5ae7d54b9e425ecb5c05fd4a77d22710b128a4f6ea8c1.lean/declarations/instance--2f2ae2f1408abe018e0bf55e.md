# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8116171fc6b4466394eb29e931af7baf6a40b0cec99698bd18c76377a216d118",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2f2ae2f1408abe018e0bf55e",
  "source": {
    "blob": "4d1c2a4d7b4532225c58289c25d1964dc73d5457",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 316,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f2ae2f1408abe018e0bf55ea9bcd23ee4960c37b94c39f6c6c5d28bcf31a8b6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8116171fc6b4466394eb29e931af7baf6a40b0cec99698bd18c76377a216d118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [FiniteDimensional 𝕜 E] [SecondCountableTopology F] :
    SecondCountableTopology (E →L[𝕜] F) := by
  set d := FiniteDimensional.finrank 𝕜 E
  suffices
    ∀ ε > (0 : ℝ), ∃ n : (E →L[𝕜] F) → Fin d → ℕ, ∀ f g : E →L[𝕜] F, n f = n g → dist f g ≤ ε from
    Metric.secondCountable_of_countable_discretization fun ε ε_pos =>
      ⟨Fin d → ℕ, by infer_instance, this ε ε_pos⟩
  intro ε ε_pos
  obtain ⟨u : ℕ → F, hu : DenseRange u⟩ := exists_dense_seq F
  let v := FiniteDimensional.finBasis 𝕜 E
  obtain
    ⟨C : ℝ, C_pos : 0 < C, hC :
      ∀ {φ : E →L[𝕜] F} {M : ℝ}, 0 ≤ M → (∀ i, ‖φ (v i)‖ ≤ M) → ‖φ‖ ≤ C * M⟩ :=
    v.exists_op_norm_le (E := E) (F := F)
  have h_2C : 0 < 2 * C := mul_pos zero_lt_two C_pos
  have hε2C : 0 < ε / (2 * C) := div_pos ε_pos h_2C
  have : ∀ φ : E →L[𝕜] F, ∃ n : Fin d → ℕ, ‖φ - (v.constrL <| u ∘ n)‖ ≤ ε / 2 := by
    intro φ
    have : ∀ i, ∃ n, ‖φ (v i) - u n‖ ≤ ε / (2 * C) := by
      simp only [norm_sub_rev]
      intro i
      have : φ (v i) ∈ closure (range u) := hu _
      obtain ⟨n, hn⟩ : ∃ n, ‖u n - φ (v i)‖ < ε / (2 * C) := by
        rw [mem_closure_iff_nhds_basis Metric.nhds_basis_ball] at this
        specialize this (ε / (2 * C)) hε2C
        simpa [dist_eq_norm]
      exact ⟨n, le_of_lt hn⟩
    choose n hn using this
    use n
    replace hn : ∀ i : Fin d, ‖(φ - (v.constrL <| u ∘ n)) (v i)‖ ≤ ε / (2 * C)
    · simp [hn]
    have : C * (ε / (2 * C)) = ε / 2 := by
      rw [eq_div_iff (two_ne_zero : (2 : ℝ) ≠ 0), mul_comm, ← mul_assoc,
        mul_div_cancel' _ (ne_of_gt h_2C)]
    specialize hC (le_of_lt hε2C) hn
    rwa [this] at hC
  choose n hn using this
  set Φ := fun φ : E →L[𝕜] F => v.constrL <| u ∘ n φ
  change ∀ z, dist z (Φ z) ≤ ε / 2 at hn
  use n
  intro x y hxy
  calc
    dist x y ≤ dist x (Φ x) + dist (Φ x) y := dist_triangle _ _ _
    _ = dist x (Φ x) + dist y (Φ y) := by simp [hxy, dist_comm]
    _ ≤ ε := by linarith [hn x, hn y]

variable (𝕜 E)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d1c2a4d7b4532225c58289c25d1964dc73d5457` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
