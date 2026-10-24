# iSup_basicOpen_eq_top'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71cfb13f-54b9-7073-9491-44c523f42f6e",
  "kind": "lemma",
  "lexical_name": "iSup_basicOpen_eq_top'",
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
  "slug": "isup-basicopen-eq-top--fd4b7c023f74b11e4df4d00f",
  "source": {
    "blob": "817ed1571c3c72c45bd0935b33f5bc9f1ac84a41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 95,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd4b7c023f74b11e4df4d00f000556d3680b991983b385ee6f1d6d6342ea0068",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71cfb13f-54b9-7073-9491-44c523f42f6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iSup_basicOpen_eq_top' {ι : Type*} (f : ι → A)
    (hfn : ∀ i, ∃ n, f i ∈ 𝒜 n)
    (hf : Algebra.adjoin (𝒜 0) (Set.range f) = ⊤) :
    ⨆ i, Proj.basicOpen 𝒜 (f i) = ⊤ := by
  classical
  apply Proj.iSup_basicOpen_eq_top
  intro x hx
  convert_to x - GradedRing.projZeroRingHom 𝒜 x ∈ _
  · rw [GradedRing.projZeroRingHom_apply, ← GradedRing.proj_apply,
      (HomogeneousIdeal.mem_irrelevant_iff _ _).mp hx, sub_zero]
  clear hx
  have := (eq_iff_iff.mp congr(x ∈ $hf)).mpr trivial
  induction this using Algebra.adjoin_induction with
  | mem x hx =>
    obtain ⟨i, rfl⟩ := hx
    obtain ⟨n, hn⟩ := hfn i
    rw [GradedRing.projZeroRingHom_apply]
    by_cases hn' : n = 0
    · rw [DirectSum.decompose_of_mem_same 𝒜 (hn' ▸ hn), sub_self]
      exact zero_mem _
    · rw [DirectSum.decompose_of_mem_ne 𝒜 hn hn', sub_zero]
      exact Ideal.subset_span ⟨_, rfl⟩
  | algebraMap r =>
    convert zero_mem (Ideal.span _)
    rw [sub_eq_zero]
    exact (DirectSum.decompose_of_mem_same 𝒜 r.2).symm
  | add x y hx hy _ _ =>
    rw [map_add, add_sub_add_comm]
    exact add_mem ‹_› ‹_›
  | mul x y hx hy hx' hy' =>
    convert add_mem (Ideal.mul_mem_left _ x hy')
      (Ideal.mul_mem_right (GradedRing.projZeroRingHom 𝒜 y) _ hx') using 1
    rw [map_mul]
    ring

/-- The canonical map `(A_f)₀ ⟶ Γ(Proj A, D₊(f))`.
This is an isomorphism when `f` is homogeneous of positive degree. See `basicOpenIsoAway` below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `817ed1571c3c72c45bd0935b33f5bc9f1ac84a41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
