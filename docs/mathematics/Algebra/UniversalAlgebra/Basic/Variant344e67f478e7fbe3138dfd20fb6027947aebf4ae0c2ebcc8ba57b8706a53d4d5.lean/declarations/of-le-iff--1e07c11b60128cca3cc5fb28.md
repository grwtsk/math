# of_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4852feea-a626-0444-8bdb-687e6e049f0c",
  "kind": "lemma",
  "lexical_name": "of_le_iff",
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
  "slug": "of-le-iff--1e07c11b60128cca3cc5fb28",
  "source": {
    "blob": "25189bd730d25ef1a70a750c36e4febf0178dc5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 93,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e07c11b60128cca3cc5fb282d50584129e1a82698637f4fd2b2377fa9e5bc0d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4852feea-a626-0444-8bdb-687e6e049f0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_le_iff [NonUnitalSemiring R] [PartialOrder R] [StarRing R]
    (h_le_iff : ∀ x y : R, x ≤ y ↔ ∃ s, y = x + star s * s) : StarOrderedRing R where
  le_iff x y := by
    refine ⟨fun h => ?_, ?_⟩
    · obtain ⟨p, hp⟩ := (h_le_iff x y).mp h
      exact ⟨star p * p, AddSubmonoid.subset_closure ⟨p, rfl⟩, hp⟩
    · rintro ⟨p, hp, hpxy⟩
      revert x y hpxy
      refine AddSubmonoid.closure_induction ?_ (fun x y h => add_zero x ▸ h.ge) ?_ hp
      · rintro _ ⟨s, rfl⟩ x y rfl
        exact (h_le_iff _ _).mpr ⟨s, rfl⟩
      · rintro _ _ _ _ ha hb x y rfl
        rw [← add_assoc]
        exact (ha _ _ rfl).trans (hb _ _ rfl)

/-- When `R` is a non-unital ring, to construct a `StarOrderedRing` instance it suffices to
show that the nonnegative elements are precisely those elements in the `AddSubmonoid` generated
by `star s * s` for `s : R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant344e67f478e7fbe3138dfd20fb6027947aebf4ae0c2ebcc8ba57b8706a53d4d5.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25189bd730d25ef1a70a750c36e4febf0178dc5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
