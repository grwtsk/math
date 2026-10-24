# ContMDiffFiberwiseLinear.locality_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f28b69cc1c51a2c2cad47e5969de84c560ea859",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3825091-ab58-a12d-1b1d-cc473d753237",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f1fb681-6dd4-3497-8c79-9ba4a4870019",
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
  "slug": "contmdifffiberwiselinear-locality-aux--3ae90d848a477f344789fae1",
  "source": {
    "blob": "2f28b69cc1c51a2c2cad47e5969de84c560ea859",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ae90d848a477f344789fae128dd5043ef5aeedcc73daa12053ea01140b838c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f1fb681-6dd4-3497-8c79-9ba4a4870019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffFiberwiseLinear.locality_aux₁
    (n : WithTop ℕ∞) (e : PartialHomeomorph (B × F) (B × F))
    (h : ∀ p ∈ e.source, ∃ s : Set (B × F), IsOpen s ∧ p ∈ s ∧
      ∃ (φ : B → F ≃L[𝕜] F) (u : Set B) (hu : IsOpen u)
        (hφ : ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (fun x => (φ x : F →L[𝕜] F)) u)
        (h2φ : ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (fun x => ((φ x).symm : F →L[𝕜] F)) u),
          (e.restr s).EqOnSource
            (FiberwiseLinear.partialHomeomorph φ hu hφ.continuousOn h2φ.continuousOn)) :
    ∃ U : Set B, e.source = U ×ˢ univ ∧ ∀ x ∈ U,
        ∃ (φ : B → F ≃L[𝕜] F) (u : Set B) (hu : IsOpen u) (_huU : u ⊆ U) (_hux : x ∈ u),
          ∃ (hφ : ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (fun x => (φ x : F →L[𝕜] F)) u)
            (h2φ : ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (fun x => ((φ x).symm : F →L[𝕜] F)) u),
            (e.restr (u ×ˢ univ)).EqOnSource
              (FiberwiseLinear.partialHomeomorph φ hu hφ.continuousOn h2φ.continuousOn) := by
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
    apply HasSubset.Subset.antisymm
    · intro p hp
      exact ⟨⟨p, hp, rfl⟩, trivial⟩
    · rintro ⟨x, v⟩ ⟨⟨p, hp, rfl : p.fst = x⟩, -⟩
      exact heu ⟨p, hp⟩ (p.fst, v) (hu' ⟨p, hp⟩)
  refine ⟨Prod.fst '' e.source, he, ?_⟩
  rintro x ⟨p, hp, rfl⟩
  refine ⟨φ ⟨p, hp⟩, u ⟨p, hp⟩, hu ⟨p, hp⟩, ?_, hu' _, hφ ⟨p, hp⟩, h2φ ⟨p, hp⟩, ?_⟩
  · intro y hy; exact ⟨(y, 0), heu ⟨p, hp⟩ ⟨_, _⟩ hy, rfl⟩
  · rw [← hesu, e.restr_source_inter]; exact heφ ⟨p, hp⟩

@[deprecated (since := "2025-01-09")]
alias SmoothFiberwiseLinear.locality_aux₁ := ContMDiffFiberwiseLinear.locality_aux₁

/-- Let `e` be a partial homeomorphism of `B × F` whose source is `U ×ˢ univ`, for some set `U` in
`B`, and which, at any point `x` in `U`, admits a neighbourhood `u` of `x` such that `e` is equal
on `u ×ˢ univ` to some bi-`C^n` fiberwise linear partial homeomorphism.  Then `e` itself
is equal to some bi-`C^n` fiberwise linear partial homeomorphism.

This is the key mathematical point of the `locality` condition in the construction of the
`StructureGroupoid` of bi-`C^n` fiberwise linear partial homeomorphisms.  The proof is by gluing
together the various bi-`C^n` fiberwise linear partial homeomorphism which exist locally.

The `U` in the conclusion is the same `U` as in the hypothesis. We state it like this, because this
is exactly what we need for `contMDiffFiberwiseLinear`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f28b69cc1c51a2c2cad47e5969de84c560ea859` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
