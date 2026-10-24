# interior_disjointUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81564caa-d2eb-8139-599a-eed3774ba61f",
  "kind": "lemma",
  "lexical_name": "interior_disjointUnion",
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
  "slug": "interior-disjointunion--ebc3501a9011e8e2bcabeb25",
  "source": {
    "blob": "acfcbeddb397a52d385dc85f26b6046052e1a22d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 318,
    "path": "GRWTSK/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebc3501a9011e8e2bcabeb250364e3d8c264359300d305d3d2945ab4a44e6931",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81564caa-d2eb-8139-599a-eed3774ba61f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma interior_disjointUnion :
    ModelWithCorners.interior (I := I) (M ⊕ M') =
      Sum.inl '' (ModelWithCorners.interior (I := I) M)
      ∪ Sum.inr '' (ModelWithCorners.interior (I := I) M') := by
  ext p
  constructor
  · intro hp
    by_cases h : Sum.isLeft p
    · left
      exact ⟨Sum.getLeft p h, isInteriorPoint_disjointUnion_left hp h, Sum.inl_getLeft p h⟩
    · replace h := Sum.not_isLeft.mp h
      right
      exact ⟨Sum.getRight p h, isInteriorPoint_disjointUnion_right hp h, Sum.inr_getRight p h⟩
  · intro hp
    by_cases h : Sum.isLeft p
    · set x := Sum.getLeft p h with x_eq
      rw [Sum.eq_left_getLeft_of_isLeft h]
      apply interiorPoint_inl x
      have hp : p ∈ Sum.inl '' (ModelWithCorners.interior (I := I) M) := by
        obtain (good | ⟨y, hy, hxy⟩) := hp
        exacts [good, (not_isLeft_and_isRight ⟨h, by rw [← hxy]; exact rfl⟩).elim]
      obtain ⟨x', hx', hx'p⟩ := hp
      simpa [x_eq, ← hx'p, Sum.getLeft_inl]
    · set x := Sum.getRight p (Sum.not_isLeft.mp h) with x_eq
      rw [Sum.eq_right_getRight_of_isRight (Sum.not_isLeft.mp h)]
      apply interiorPoint_inr x
      have hp : p ∈ Sum.inr '' (ModelWithCorners.interior (I := I) M') := by
        obtain (⟨y, hy, hxy⟩ | good) := hp
        exacts [(not_isLeft_and_isRight ⟨by rw [← hxy]; exact rfl, Sum.not_isLeft.mp h⟩).elim, good]
      obtain ⟨x', hx', hx'p⟩ := hp
      simpa [x_eq, ← hx'p, Sum.getRight_inr]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acfcbeddb397a52d385dc85f26b6046052e1a22d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
