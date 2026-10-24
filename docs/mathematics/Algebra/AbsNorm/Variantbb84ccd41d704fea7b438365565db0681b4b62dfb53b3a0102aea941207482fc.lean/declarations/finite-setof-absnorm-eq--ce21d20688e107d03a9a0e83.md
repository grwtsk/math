# finite_setOf_absNorm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "142bd965ff2d917032ec221764b1fd2032454947",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4375ba17-ddff-83cb-1ecd-2bcafcd013d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7d447bb-167b-0e56-3f6e-d5b7ac31bbb3",
  "kind": "theorem",
  "lexical_name": "finite_setOf_absNorm_eq",
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
  "slug": "finite-setof-absnorm-eq--ce21d20688e107d03a9a0e83",
  "source": {
    "blob": "142bd965ff2d917032ec221764b1fd2032454947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 345,
    "path": "GRWTSK/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce21d20688e107d03a9a0e83c915c9a8599f94b790ffd576d8f428cc41032ed6",
  "verification": {
    "reference": "docs/verification/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7d447bb-167b-0e56-3f6e-d5b7ac31bbb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_setOf_absNorm_eq [CharZero S] (n : ℕ) :
    {I : Ideal S | Ideal.absNorm I = n}.Finite := by
  obtain hn | hn := Nat.eq_zero_or_pos n
  · simp only [hn, absNorm_eq_zero_iff, Set.setOf_eq_eq_singleton, Set.finite_singleton]
  · let f := fun I : Ideal S => Ideal.map (Ideal.Quotient.mk (@Ideal.span S _ {↑n})) I
    refine Set.Finite.of_finite_image (f := f) ?_ ?_
    · suffices Finite (S ⧸ @Ideal.span S _ {↑n}) by
        let g := ((↑) : Ideal (S ⧸ @Ideal.span S _ {↑n}) → Set (S ⧸ @Ideal.span S _ {↑n}))
        refine Set.Finite.of_finite_image (f := g) ?_ SetLike.coe_injective.injOn
        exact Set.Finite.subset Set.finite_univ (Set.subset_univ _)
      rw [← absNorm_ne_zero_iff, absNorm_span_singleton]
      simpa only [Ne, Int.natAbs_eq_zero, Algebra.norm_eq_zero_iff, Nat.cast_eq_zero] using
        ne_of_gt hn
    · intro I hI J hJ h
      rw [← comap_map_mk (span_singleton_absNorm_le I), ← hI.symm, ←
        comap_map_mk (span_singleton_absNorm_le J), ← hJ.symm]
      congr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142bd965ff2d917032ec221764b1fd2032454947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
