# rootsOfUnity.fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b3b98fee68ea4eb1b2f3c2bb983bb2001fe40b713cc8ec5e2ec2f76d909d343",
  "kind": "instance",
  "lexical_name": "rootsOfUnity.fintype",
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
  "slug": "rootsofunity-fintype--f54793fbcd25540f3f9fdef5",
  "source": {
    "blob": "202ea47694ca50d38bdc053f60ef720ce660e516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 198,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f54793fbcd25540f3f9fdef55deac244204d04f73a3e610f2cb8e966542154c7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b3b98fee68ea4eb1b2f3c2bb983bb2001fe40b713cc8ec5e2ec2f76d909d343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance rootsOfUnity.fintype : Fintype (rootsOfUnity k R) := by
  classical
  exact Fintype.ofEquiv { x // x ∈ nthRoots k (1 : R) } (rootsOfUnityEquivNthRoots R k).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `202ea47694ca50d38bdc053f60ef720ce660e516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
