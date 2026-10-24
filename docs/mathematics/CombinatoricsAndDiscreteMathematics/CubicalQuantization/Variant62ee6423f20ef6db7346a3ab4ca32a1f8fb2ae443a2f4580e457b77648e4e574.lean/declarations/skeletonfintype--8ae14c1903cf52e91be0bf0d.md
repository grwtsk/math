# skeletonFintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e993d5c851e351e933f09904e4c69ed59c0565704c58bffc4b9ed82dca69d3e4",
  "kind": "instance",
  "lexical_name": "skeletonFintype",
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
  "slug": "skeletonfintype--8ae14c1903cf52e91be0bf0d",
  "source": {
    "blob": "4afece44ab7f009fc4cffc5626cd357dddf94ab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 298,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ae14c1903cf52e91be0bf0d8ee8bff30b8452f20fedb4da9f811a686d89e6e0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e993d5c851e351e933f09904e4c69ed59c0565704c58bffc4b9ed82dca69d3e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance skeletonFintype
    (decomposition : FiniteCubicalDecomposition.{u})
    (bits rows columns degree : Nat) :
    Fintype (CubicalQuantizedSkeleton decomposition bits rows columns degree) := by
  induction degree with
  | zero =>
      change Fintype
        (CubicalQuantizedField decomposition 0 bits rows columns)
      infer_instance
  | succ degree ih =>
      letI := ih
      change Fintype
        (CubicalQuantizedSkeleton decomposition bits rows columns degree ×
          CubicalQuantizedField decomposition (degree + 1) bits rows columns)
      infer_instance

/-- The uniform skeleton cardinality is the product cardinality across all cells. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4afece44ab7f009fc4cffc5626cd357dddf94ab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
