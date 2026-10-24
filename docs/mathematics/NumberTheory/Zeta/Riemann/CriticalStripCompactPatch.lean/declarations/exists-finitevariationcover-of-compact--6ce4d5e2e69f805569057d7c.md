# exists_finiteVariationCover_of_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2d3f574-2036-dd36-25d9-024458bda181",
  "kind": "theorem",
  "lexical_name": "exists_finiteVariationCover_of_compact",
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
  "slug": "exists-finitevariationcover-of-compact--6ce4d5e2e69f805569057d7c",
  "source": {
    "blob": "c83a5a5fb282e3ee21a498b7b43153cc618e2432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ce4d5e2e69f805569057d7c39c561b1b17a0cdd034bcc518f02d5f81f6352e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2d3f574-2036-dd36-25d9-024458bda181`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finiteVariationCover_of_compact {F : ℂ → ℂ} {K : Set ℂ}
    (hK : IsCompact K) (hcont : ∀ c ∈ K, ContinuousAt F c)
    (hne : ∀ c ∈ K, F c ≠ 0) : Nonempty (FiniteVariationCover F K) := by
  classical
  have hlocal : ∀ c : K, ∃ r : ℝ, 0 < r ∧
      Nonempty (SampleVariationPatch F (Metric.ball (c : ℂ) r)) := by
    intro c
    exact exists_variationPatch_of_continuousAt_ne_zero
      (hcont c c.property) (hne c c.property)
  choose radius radius_pos patches using hlocal
  let region : K → Set ℂ := fun c => Metric.ball (c : ℂ) (radius c)
  have hopen : ∀ c : K, IsOpen (region c) := fun _ => Metric.isOpen_ball
  have hcover : K ⊆ ⋃ c : K, region c := by
    intro z hz
    exact Set.mem_iUnion.mpr ⟨⟨z, hz⟩, Metric.mem_ball_self (radius_pos ⟨z, hz⟩)⟩
  obtain ⟨t, ht⟩ := hK.elim_finite_subcover region hopen hcover
  let e : Fin (Fintype.card ↥t) ≃ ↥t := (Fintype.equivFin ↥t).symm
  refine ⟨{ count := Fintype.card ↥t,
    region := fun i => region (e i).val,
    patch := fun i => Classical.choice (patches (e i).val),
    covers := ?_ }⟩
  intro z hz
  obtain ⟨c, hc⟩ := Set.mem_iUnion.mp (ht hz)
  obtain ⟨hct, hzc⟩ := Set.mem_iUnion.mp hc
  obtain ⟨i, hi⟩ := e.surjective ⟨c, hct⟩
  refine ⟨i, ?_⟩
  change z ∈ region (e i).val
  rw [hi]
  exact hzc

/-- Completeness at compact scope is an equivalence with nonvanishing, not a method
of proving the latter by introducing certificate metadata. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c83a5a5fb282e3ee21a498b7b43153cc618e2432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
