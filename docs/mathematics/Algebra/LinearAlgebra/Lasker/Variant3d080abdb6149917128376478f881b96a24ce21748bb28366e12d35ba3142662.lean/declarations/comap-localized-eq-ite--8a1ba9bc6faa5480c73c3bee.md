# comap_localized₀_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66b7d88b-fc4d-7faf-d952-c7760299194d",
  "kind": "lemma",
  "lexical_name": "comap_localized₀_eq_ite",
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
  "slug": "comap-localized-eq-ite--8a1ba9bc6faa5480c73c3bee",
  "source": {
    "blob": "d1b367b6f511819633bbbda18166404bcac7ac60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 170,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a1ba9bc6faa5480c73c3bee0f42f8323f144e24d6d8cf1575407f2d5ba3f065",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66b7d88b-fc4d-7faf-d952-c7760299194d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comap_localized₀_eq_ite
    (s₀ : Finset N.associatedPrimes) (hs₀ : IsLowerSet (s₀ : Set N.associatedPrimes))
    (q : Submodule R M) (hqp : q.IsPrimary)
    (p : N.associatedPrimes) (hq : (q.colon Set.univ).radical = p) :
    letI S := ⨅ q ∈ s₀, q.1.primeCompl
    letI f := mkLinearMap S M
    (localized₀ S f q).comap f = if p ∈ s₀ then q else ⊤ := by
  set S := ⨅ q ∈ s₀, q.1.primeCompl
  set f := mkLinearMap S M
  split_ifs with hp
  · refine le_antisymm (fun x hx ↦ ?_) (map_le_iff_le_comap.mp (map_le_localized₀ S f q))
    obtain ⟨b, hb, a, ha⟩ := hx
    rw [IsLocalizedModule.mk'_eq_iff, ← LinearMap.map_smul_of_tower] at ha
    obtain ⟨c, hc⟩ := (IsLocalizedModule.eq_iff_exists S f).mp ha
    replace hb := q.smul_mem c hb
    rw [← Submonoid.smul_def, hc, smul_smul] at hb
    apply (hqp.mem_or_mem hb).resolve_right
    grind [Submonoid.mem_iInf, mem_primeCompl_iff]
  · replace hq : ¬ (q.colon Set.univ : Set R) ⊆ ⋃ r ∈ s₀, r := by
      contrapose hp
      obtain ⟨r, hrs, h⟩ := (subset_union_prime p p fun i _ _ _ ↦ i.2.1).mp hp
      rw [← r.2.1.radical_le_iff, hq] at h
      exact hs₀ h hrs
    obtain ⟨y, hy1, hy2⟩ := Set.not_subset_iff_exists_mem_notMem.mp hq
    replace hy2 : y ∈ S := by
      simp only [Submonoid.mem_iInf, Ideal.mem_primeCompl_iff, Subtype.forall, S]
      intro r hrI hrs
      contrapose hy2
      exact Set.mem_biUnion hrs hy2
    rw [eq_top_iff, ← map_le_iff_le_comap, map_top]
    rintro - ⟨x, rfl⟩
    simp_rw [mem_localized₀, IsLocalizedModule.mk'_eq_iff, ← LinearMap.map_smul_of_tower]
    exact ⟨y • x, hy1 (Set.smul_mem_smul_set (Set.mem_univ x)), ⟨y, hy2⟩, rfl⟩

open LocalizedModule Submodule.IsLocalizedModule in
/-- The second uniqueness theorem for primary decomposition, Theorem 4.10 in Atiyah-Macdonald. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b367b6f511819633bbbda18166404bcac7ac60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
