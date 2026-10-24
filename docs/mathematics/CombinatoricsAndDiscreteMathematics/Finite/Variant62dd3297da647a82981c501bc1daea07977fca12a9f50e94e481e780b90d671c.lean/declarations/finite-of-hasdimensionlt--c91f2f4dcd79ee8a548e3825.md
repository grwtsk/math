# finite_of_hasDimensionLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd796c62-1f7c-81e6-f4de-4b202190c9b4",
  "kind": "lemma",
  "lexical_name": "finite_of_hasDimensionLT",
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
  "slug": "finite-of-hasdimensionlt--c91f2f4dcd79ee8a548e3825",
  "source": {
    "blob": "61c052edd61bc799f849ccd639b670d0ab8dc777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c91f2f4dcd79ee8a548e3825aad497f697dcba8ce01be627e9b869fb8bff4624",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd796c62-1f7c-81e6-f4de-4b202190c9b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_of_hasDimensionLT (d : ℕ) [X.HasDimensionLT d]
    (h : ∀ (i : ℕ) (_ : i < d), Finite (X.nonDegenerate i)) :
    X.Finite where
  finite := by
    have (i : Fin d) : Finite (X.nonDegenerate i) := h i.1 i.2
    refine Finite.of_surjective (α := Σ (i : Fin d), X.nonDegenerate i)
      (f := fun ⟨i, x⟩ ↦ N.mk _ x.property) (fun x ↦ ?_)
    by_cases hj : x.dim < d
    · exact ⟨⟨⟨_, hj⟩, ⟨_, x.nonDegenerate⟩⟩, rfl⟩
    · have := x.nonDegenerate
      simp [X.nonDegenerate_eq_empty_of_hasDimensionLT d x.dim (by simpa using hj)] at this

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c052edd61bc799f849ccd639b670d0ab8dc777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
