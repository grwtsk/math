# comap_rankFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e8411b9e709dc82615b1958163129298fb654b63b685ef732b21d8e944d3717",
  "kind": "instance",
  "lexical_name": "comap_rankFinite",
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
  "slug": "comap-rankfinite--eea2a57822f74ce7c50c03dd",
  "source": {
    "blob": "be555aebbb28a5d4a816cc1128a100b2bce8614f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 240,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eea2a57822f74ce7c50c03dd9cf6c98c7ae2e6e9866d91f32677cdd319cba5f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e8411b9e709dc82615b1958163129298fb654b63b685ef732b21d8e944d3717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance comap_rankFinite (N : Matroid β) [N.RankFinite] (f : α → β) : (N.comap f).RankFinite := by
  obtain ⟨B, hB⟩ := (N.comap f).exists_isBase
  refine hB.rankFinite_of_finite ?_
  simp only [comap_isBase_iff] at hB
  exact (hB.1.indep.finite.of_finite_image hB.2.1)

end comap

section comapOn

variable {E B I : Set α}

/-- The pullback of a matroid on `β` by a function `f : α → β` to a matroid on `α`,
restricted to a ground set `E`.
The matroids `M.comapOn f E` and `M ↾ (f '' E)` have isomorphic simplifications;
elements with the same nonloop image are parallel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be555aebbb28a5d4a816cc1128a100b2bce8614f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
