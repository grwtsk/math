# isNoetherian_of_fg_of_noetherian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58d3f2e7-8084-4f8d-ab1f-df11d038a578",
  "kind": "theorem",
  "lexical_name": "isNoetherian_of_fg_of_noetherian",
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
  "slug": "isnoetherian-of-fg-of-noetherian--605f996e2e99bbb68c5de698",
  "source": {
    "blob": "a13981bd57edfda9f0cf318b21175f9ca9893f5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 541,
    "path": "GRWTSK/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:605f996e2e99bbb68c5de6984d79ba41d070e16e082e5e88d76f9245f9c5ea38",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58d3f2e7-8084-4f8d-ab1f-df11d038a578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNoetherian_of_fg_of_noetherian {R M} [Ring R] [AddCommGroup M] [Module R M]
    (N : Submodule R M) [I : IsNoetherianRing R] (hN : N.FG) : IsNoetherian R N := by
  let ⟨s, hs⟩ := hN
  haveI := Classical.decEq M
  haveI := Classical.decEq R
  have : ∀ x ∈ s, x ∈ N := fun x hx => hs ▸ Submodule.subset_span hx
  refine
    @isNoetherian_of_surjective
      R ((↑s : Set M) → R) N _ _ _ (Pi.module _ _ _) _ ?_ ?_ isNoetherian_pi
  · fapply LinearMap.mk
    · fapply AddHom.mk
      · exact fun f => ⟨∑ i in s.attach, f i • i.1, N.sum_mem fun c _ => N.smul_mem _ <| this _ c.2⟩
      · intro f g
        apply Subtype.eq
        change (∑ i in s.attach, (f i + g i) • _) = _
        simp only [add_smul, Finset.sum_add_distrib]
        rfl
    · intro c f
      apply Subtype.eq
      change (∑ i in s.attach, (c • f i) • _) = _
      simp only [smul_eq_mul, mul_smul]
      exact Finset.smul_sum.symm
  · rw [LinearMap.range_eq_top]
    rintro ⟨n, hn⟩
    change n ∈ N at hn
    rw [← hs, ← Set.image_id (s : Set M), Finsupp.mem_span_image_iff_total] at hn
    rcases hn with ⟨l, hl1, hl2⟩
    refine' ⟨fun x => l x, Subtype.ext _⟩
    change (∑ i in s.attach, l i • (i : M)) = n
    rw [@Finset.sum_attach M M s _ fun i => l i • i, ← hl2,
      Finsupp.total_apply, Finsupp.sum, eq_comm]
    refine' Finset.sum_subset hl1 fun x _ hx => _
    rw [Finsupp.not_mem_support_iff.1 hx, zero_smul]
#align is_noetherian_of_fg_of_noetherian isNoetherian_of_fg_of_noetherian

-- It would be nice to make this an instance but it is empirically problematic, possibly because
-- of the loop that it causes with `Module.IsNoetherian.finite`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Noetherian/Variantb7455c2d25a070f68324b59a681e1c99c1439ee2f49b87c1b36fee2b9dfeefe3.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a13981bd57edfda9f0cf318b21175f9ca9893f5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
