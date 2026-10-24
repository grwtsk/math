# powerset_sum_first_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04f96619-afc0-cc1e-973d-c8a92fa3f258",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e051c22-00a8-732a-fc6b-d659b9e59948",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a3c3f45-25e1-ad5f-1f34-e976ee2868cb",
  "kind": "theorem",
  "lexical_name": "powerset_sum_first_order",
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
  "slug": "powerset-sum-first-order--ff4003b7eb7330b37cbf2cc1",
  "source": {
    "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 24,
    "path": "GRWTSK/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff4003b7eb7330b37cbf2cc1f77ffe80de2af590b59673ba909718a3f315fba1",
  "verification": {
    "reference": "docs/verification/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a3c3f45-25e1-ad5f-1f34-e976ee2868cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powerset_sum_first_order (P : Finset ℕ) (F : Finset ℕ → ℝ)
    (hlarge : ∀ U ⊆ P, 1 < U.card → F U = 0) :
    (∑ U ∈ P.powerset, F U) = F ∅ + ∑ p ∈ P, F {p} := by
  classical
  let small : Finset (Finset ℕ) := insert ∅ (P.image (fun p => ({p} : Finset ℕ)))
  have hs : small ⊆ P.powerset := by
    intro U hU
    rcases Finset.mem_insert.mp hU with hU | hU
    · subst U
      exact Finset.mem_powerset.mpr (Finset.empty_subset _)
    · rcases Finset.mem_image.mp hU with ⟨p, hp, rfl⟩
      exact Finset.mem_powerset.mpr (Finset.singleton_subset_iff.mpr hp)
  have hout : ∀ U ∈ P.powerset, U ∉ small → F U = 0 := by
    intro U hU hnot
    apply hlarge U (Finset.mem_powerset.mp hU)
    have hne : U ≠ ∅ := by
      intro h
      apply hnot
      simp only [small, h, Finset.mem_insert]
      exact Or.inl trivial
    have hc : 0 < U.card := Finset.card_pos.mpr (Finset.nonempty_iff_ne_empty.mpr hne)
    have hcne : U.card ≠ 1 := by
      intro hc1
      rcases Finset.card_eq_one.mp hc1 with ⟨p, rfl⟩
      apply hnot
      apply Finset.mem_insert.mpr
      right
      exact Finset.mem_image.mpr ⟨p,
        (Finset.mem_powerset.mp hU) (Finset.mem_singleton_self p), rfl⟩
    omega
  rw [← Finset.sum_subset hs hout]
  have hzero : (∅ : Finset ℕ) ∉ P.image (fun p => ({p} : Finset ℕ)) := by
    simp
  rw [show small = insert ∅ (P.image (fun p => ({p} : Finset ℕ))) from rfl,
    Finset.sum_insert hzero, Finset.sum_image]
  intro p _ q _ hpq
  exact Finset.singleton_injective hpq

/-- Distinct-prime pair delays beyond a horizon force every higher product beyond it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6464933fdffa2345c3dc312bed5156ee63fdbe65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
