# unifIntegrable_fin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5fa40ee-59b5-f980-9518-bdb464c75ce9",
  "kind": "theorem",
  "lexical_name": "unifIntegrable_fin",
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
  "slug": "unifintegrable-fin--4abdeef7d6abb5a759378f38",
  "source": {
    "blob": "7a9e30855e47355f31e5828b2c102ac411718319",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 435,
    "path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4abdeef7d6abb5a759378f38f84baeedbe8c12c640516969ab9ecb114815cbbc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5fa40ee-59b5-f980-9518-bdb464c75ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unifIntegrable_fin (hp_one : 1 ≤ p) (hp_top : p ≠ ∞) {n : ℕ} {f : Fin n → α → β}
    (hf : ∀ i, MemLp (f i) p μ) : UnifIntegrable f p μ := by
  revert f
  induction n with
  | zero => exact fun {f} hf ↦ unifIntegrable_subsingleton hp_one hp_top hf
  | succ n h =>
    intro f hfLp ε hε
    let g : Fin n → α → β := fun k => f k
    have hgLp : ∀ i, MemLp (g i) p μ := fun i => hfLp i
    obtain ⟨δ₁, hδ₁pos, hδ₁⟩ := h hgLp hε
    obtain ⟨δ₂, hδ₂pos, hδ₂⟩ := (hfLp n).eLpNorm_indicator_le hp_one hp_top hε
    refine ⟨min δ₁ δ₂, lt_min hδ₁pos hδ₂pos, fun i s hs hμs => ?_⟩
    by_cases hi : i.val < n
    · rw [(_ : f i = g ⟨i.val, hi⟩)]
      · exact hδ₁ _ s hs (le_trans hμs <| ENNReal.ofReal_le_ofReal <| min_le_left _ _)
      · simp [g]
    · rw [(_ : i = n)]
      · exact hδ₂ _ hs (le_trans hμs <| ENNReal.ofReal_le_ofReal <| min_le_right _ _)
      · have hi' := Fin.is_lt i
        rw [Nat.lt_succ_iff] at hi'
        rw [not_lt] at hi
        simp [← le_antisymm hi' hi]

/-- A finite sequence of Lp functions is uniformly integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a9e30855e47355f31e5828b2c102ac411718319` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
