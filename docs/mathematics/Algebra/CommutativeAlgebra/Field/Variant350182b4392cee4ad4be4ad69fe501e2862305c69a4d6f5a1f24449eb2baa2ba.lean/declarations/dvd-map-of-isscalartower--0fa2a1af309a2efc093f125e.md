# dvd_map_of_isScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf53f4f7e0af5eedaae6bb2c6a648deeda148025",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:891565f5-7ecc-f4bd-c753-6e8190d512b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6857049d-d0ff-a758-1ea4-e6bdd8034ae6",
  "kind": "theorem",
  "lexical_name": "dvd_map_of_isScalarTower",
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
  "slug": "dvd-map-of-isscalartower--0fa2a1af309a2efc093f125e",
  "source": {
    "blob": "bf53f4f7e0af5eedaae6bb2c6a648deeda148025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 81,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fa2a1af309a2efc093f125ee3abd397a4879a66df6ea81927802bc203745377",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6857049d-d0ff-a758-1ea4-e6bdd8034ae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_map_of_isScalarTower (A K : Type*) {R : Type*} [CommRing A] [Field K] [Ring R]
    [Algebra A K] [Algebra A R] [Algebra K R] [IsScalarTower A K R] (x : R) :
    minpoly K x ∣ (minpoly A x).map (algebraMap A K) := by
  refine minpoly.dvd K x ?_
  rw [aeval_map_algebraMap, minpoly.aeval]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf53f4f7e0af5eedaae6bb2c6a648deeda148025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
