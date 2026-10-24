# coroot_reflection_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1fd9359-f633-7756-f155-29f9bc584f95",
  "kind": "lemma",
  "lexical_name": "coroot_reflection_perm",
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
  "slug": "coroot-reflection-perm--6d0b82fd23c86376518a59af",
  "source": {
    "blob": "d5c736cd86579a3d83678a08870d5b0547996ee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 318,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant368e8cc51ff1f4a353a8d5e09e9268113ec830858c866b4a71d9b22ee8c046db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d0b82fd23c86376518a59afb51155b69790261fae53cbd7482b333fe7ad5193",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant368e8cc51ff1f4a353a8d5e09e9268113ec830858c866b4a71d9b22ee8c046db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1fd9359-f633-7756-f155-29f9bc584f95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coroot_reflection_perm (j : ι) :
    P.coroot (P.reflection_perm i j) = (P.coreflection i) (P.coroot j) :=
  (P.reflection_perm_coroot i j).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant368e8cc51ff1f4a353a8d5e09e9268113ec830858c866b4a71d9b22ee8c046db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant368e8cc51ff1f4a353a8d5e09e9268113ec830858c866b4a71d9b22ee8c046db.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c736cd86579a3d83678a08870d5b0547996ee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
