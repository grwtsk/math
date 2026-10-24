# affineSpan_pair_le_of_left_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa696a39-ab04-0259-3474-3b90d7601caf",
  "kind": "theorem",
  "lexical_name": "affineSpan_pair_le_of_left_mem",
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
  "slug": "affinespan-pair-le-of-left-mem--36b08e328dbf2c4243fccb7d",
  "source": {
    "blob": "6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1388,
    "line": 1382,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36b08e328dbf2c4243fccb7d91377ab0b439f9030a0ea2eda82865eb5b7a1923",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa696a39-ab04-0259-3474-3b90d7601caf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1382–1388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineSpan_pair_le_of_left_mem {p₁ p₂ p₃ : P} (h : p₁ ∈ line[k, p₂, p₃]) :
    line[k, p₁, p₃] ≤ line[k, p₂, p₃] :=
  affineSpan_pair_le_of_mem_of_mem h (right_mem_affineSpan_pair _ _ _)
#align affine_span_pair_le_of_left_mem affineSpan_pair_le_of_left_mem

/-- One line is contained in another differing in the second point if the second point of the
first line is contained in the second line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean#L1382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
