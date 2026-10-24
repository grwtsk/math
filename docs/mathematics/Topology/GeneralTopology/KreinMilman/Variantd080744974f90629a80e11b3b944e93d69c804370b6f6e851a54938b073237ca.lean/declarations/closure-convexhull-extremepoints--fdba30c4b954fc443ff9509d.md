# closure_convexHull_extremePoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7921d94fcdfc9729fb71866e1da6f889e5ecb0e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75a6b8fb-343e-4ae7-b590-0e9694d2941d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13d4fc7e-df94-12e1-0c12-3c7c654f0990",
  "kind": "theorem",
  "lexical_name": "closure_convexHull_extremePoints",
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
  "slug": "closure-convexhull-extremepoints--fdba30c4b954fc443ff9509d",
  "source": {
    "blob": "7921d94fcdfc9729fb71866e1da6f889e5ecb0e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 92,
    "path": "GRWTSK/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdba30c4b954fc443ff9509dfd5c1ffc05cc1ca641718cd6f66e07f6a31dc941",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13d4fc7e-df94-12e1-0c12-3c7c654f0990`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_convexHull_extremePoints (hscomp : IsCompact s) (hAconv : Convex ℝ s) :
    closure (convexHull ℝ <| s.extremePoints ℝ) = s := by
  apply (closure_minimal (convexHull_min extremePoints_subset hAconv) hscomp.isClosed).antisymm
  by_contra hs
  obtain ⟨x, hxA, hxt⟩ := not_subset.1 hs
  obtain ⟨l, r, hlr, hrx⟩ :=
    geometric_hahn_banach_closed_point (convex_convexHull _ _).closure isClosed_closure hxt
  have h : IsExposed ℝ s ({ y ∈ s | ∀ z ∈ s, l z ≤ l y }) := fun _ => ⟨l, rfl⟩
  obtain ⟨z, hzA, hz⟩ := hscomp.exists_isMaxOn ⟨x, hxA⟩ l.continuous.continuousOn
  obtain ⟨y, hy⟩ := (h.isCompact hscomp).extremePoints_nonempty ⟨z, hzA, hz⟩
  linarith [hlr _ (subset_closure <| subset_convexHull _ _ <|
    h.isExtreme.extremePoints_subset_extremePoints hy), hy.1.2 x hxA]

/-- A continuous affine map is surjective from the extreme points of a compact set to the extreme
points of the image of that set. This inclusion is in general strict. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7921d94fcdfc9729fb71866e1da6f889e5ecb0e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
