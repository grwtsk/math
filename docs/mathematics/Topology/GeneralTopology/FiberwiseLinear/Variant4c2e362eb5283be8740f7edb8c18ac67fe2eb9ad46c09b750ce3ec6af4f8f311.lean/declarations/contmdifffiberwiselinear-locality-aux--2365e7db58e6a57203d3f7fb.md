# ContMDiffFiberwiseLinear.locality_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29b43b9f-fee7-cdc0-fb1c-e16aac796dd7",
  "kind": "theorem",
  "lexical_name": "ContMDiffFiberwiseLinear.locality_aux₁",
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
  "slug": "contmdifffiberwiselinear-locality-aux--2365e7db58e6a57203d3f7fb",
  "source": {
    "blob": "2fedd9be284f48d9ee4554cd5d687b57eb15cf3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variant4c2e362eb5283be8740f7edb8c18ac67fe2eb9ad46c09b750ce3ec6af4f8f311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2365e7db58e6a57203d3f7fb8b2e5813164cdb66fd1c9770068c1f938c3c1f50",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberwiseLinear/Variant4c2e362eb5283be8740f7edb8c18ac67fe2eb9ad46c09b750ce3ec6af4f8f311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29b43b9f-fee7-cdc0-fb1c-e16aac796dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffFiberwiseLinear.locality_aux₁
    (n : ℕ∞ω) (e : OpenPartialHomeomorph (B × F) (B × F))
    (h : ∀ p ∈ e.source, ∃ s : Set (B × F), IsOpen s ∧ p ∈ s ∧
      ∃ (φ : B → F ≃L[𝕜] F) (u : Set B) (hu : IsOpen u)
        (hφ : ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (fun x => (φ x : F →L[𝕜] F)) u)
        (h2φ : ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (fun x => ((φ x).symm : F →L[𝕜] F)) u),
          (e.restr s).EqOnSource
            (FiberwiseLinear.openPartialHomeomorph φ hu hφ.continuousOn h2φ.continuousOn)) :
    ∃ U : Set B, e.source = U ×ˢ univ ∧ ∀ x ∈ U,
        ∃ (φ : B → F ≃L[𝕜] F) (u : Set B) (hu : IsOpen u) (_huU : u ⊆ U) (_hux : x ∈ u),
          ∃ (hφ : ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (fun x => (φ x : F →L[𝕜] F)) u)
            (h2φ : ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (fun x => ((φ x).symm : F →L[𝕜] F)) u),
            (e.restr (u ×ˢ univ)).EqOnSource
              (FiberwiseLinear.openPartialHomeomorph φ hu hφ.continuousOn h2φ.continuousOn) := by
  rw [SetCoe.forall'] at h
  choose s hs hsp φ u hu hφ h2φ heφ using h
  have hesu : ∀ p : e.source, e.source ∩ s p = u p ×ˢ univ := by
    intro p
    rw [← e.restr_source' (s _) (hs _)]
    exact (heφ p).1
  have hu' : ∀ p : e.source, (p : B × F).fst ∈ u p := by
    intro p
    have : (p : B × F) ∈ e.source ∩ s p := ⟨p.prop, hsp p⟩
    simpa only [hesu, mem_prod, mem_univ, and_true] using this
  have heu : ∀ p : e.source, ∀ q : B × F, q.fst ∈ u p → q ∈ e.source := by
    intro p q hq
    have : q ∈ u p ×ˢ (univ : Set F) := ⟨hq, trivial⟩
    rw [← hesu p] at this
    exact this.1
  have he : e.source = (Prod.fst '' e.source) ×ˢ (univ : Set F) := by
    apply subset_antisymm
    · intro p hp
      exact ⟨⟨p, hp, rfl⟩, trivial⟩
    · rintro ⟨x, v⟩ ⟨⟨p, hp, rfl : p.fst = x⟩, -⟩
      exact heu ⟨p, hp⟩ (p.fst, v) (hu' ⟨p, hp⟩)
  refine ⟨Prod.fst '' e.source, he, ?_⟩
  rintro x ⟨p, hp, rfl⟩
  refine ⟨φ ⟨p, hp⟩, u ⟨p, hp⟩, hu ⟨p, hp⟩, ?_, hu' _, hφ ⟨p, hp⟩, h2φ ⟨p, hp⟩, ?_⟩
  · intro y hy; exact ⟨(y, 0), heu ⟨p, hp⟩ ⟨_, _⟩ hy, rfl⟩
  · rw [← hesu, e.restr_source_inter]; exact heφ ⟨p, hp⟩

/-- Let `e` be an open partial homeomorphism of `B × F` whose source is `U ×ˢ univ`, for some set
`U` in `B`, and which, at any point `x` in `U`, admits a neighbourhood `u` of `x` such that `e` is
equal on `u ×ˢ univ` to some bi-`C^n` fiberwise linear open partial homeomorphism.  Then `e` itself
is equal to some bi-`C^n` fiberwise linear open partial homeomorphism.

This is the key mathematical point of the `locality` condition in the construction of the
`StructureGroupoid` of bi-`C^n` fiberwise linear open partial homeomorphisms.  The proof is by
gluing together the various bi-`C^n` fiberwise linear open partial homeomorphism which exist
locally.

The `U` in the conclusion is the same `U` as in the hypothesis. We state it like this, because this
is exactly what we need for `contMDiffFiberwiseLinear`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberwiseLinear/Variant4c2e362eb5283be8740f7edb8c18ac67fe2eb9ad46c09b750ce3ec6af4f8f311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variant4c2e362eb5283be8740f7edb8c18ac67fe2eb9ad46c09b750ce3ec6af4f8f311.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fedd9be284f48d9ee4554cd5d687b57eb15cf3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
