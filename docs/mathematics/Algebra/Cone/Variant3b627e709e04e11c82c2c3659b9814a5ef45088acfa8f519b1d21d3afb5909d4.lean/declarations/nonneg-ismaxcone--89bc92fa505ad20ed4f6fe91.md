# nonneg.isMaxCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1aec52212e6681c8161ac0e72d347ebf0c3b76761d68ea6eb8e5df98d3bdfcb",
  "kind": "instance",
  "lexical_name": "nonneg.isMaxCone",
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
  "slug": "nonneg-ismaxcone--89bc92fa505ad20ed4f6fe91",
  "source": {
    "blob": "1ed2e934cdb56591710b64d1a9c284ed90ad7a9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 60,
    "path": "GRWTSK/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89bc92fa505ad20ed4f6fe913f8ab5cb6a68420696a7b0206e6eca31b8dfe76b",
  "verification": {
    "reference": "docs/verification/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1aec52212e6681c8161ac0e72d347ebf0c3b76761d68ea6eb8e5df98d3bdfcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonneg.isMaxCone {T : Type*} [Ring T] [LinearOrder T] [IsStrictOrderedRing T] :
    IsMaxCone (nonneg T) where
  mem_or_neg_mem := mem_or_neg_mem (C := AddGroupCone.nonneg T)

end RingCone

variable {S R : Type*} [Ring R] [SetLike S R] (C : S)

/-- Construct a partially ordered ring by designating a cone in a ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Cone/Variant3b627e709e04e11c82c2c3659b9814a5ef45088acfa8f519b1d21d3afb5909d4.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ed2e934cdb56591710b64d1a9c284ed90ad7a9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
