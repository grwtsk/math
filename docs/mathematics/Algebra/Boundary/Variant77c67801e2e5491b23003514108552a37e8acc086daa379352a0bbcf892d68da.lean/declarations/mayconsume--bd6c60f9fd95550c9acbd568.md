# MayConsume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24b438d5ed06f66b2e23b4f4c69c8c3d2a3f10e1c72aaa8b9dbde27d622c1ab3",
  "kind": "def",
  "lexical_name": "MayConsume",
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
  "slug": "mayconsume--bd6c60f9fd95550c9acbd568",
  "source": {
    "blob": "8547a3222f47412a85fa86009cd723ff414fb222",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 77,
    "path": "GRWTSK/Algebra/Boundary/Variant77c67801e2e5491b23003514108552a37e8acc086daa379352a0bbcf892d68da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd6c60f9fd95550c9acbd568d77df90f87cc8deb3a1bd0e3145057dd6a0c865f",
  "verification": {
    "reference": "docs/verification/Algebra/Boundary/Variant77c67801e2e5491b23003514108552a37e8acc086daa379352a0bbcf892d68da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24b438d5ed06f66b2e23b4f4c69c8c3d2a3f10e1c72aaa8b9dbde27d622c1ab3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MayConsume
    (source target : BoundaryKey)
    (transports : List BoundaryTransport) : Prop :=
  TransportPath transports source target

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Boundary/Variant77c67801e2e5491b23003514108552a37e8acc086daa379352a0bbcf892d68da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Boundary/Variant77c67801e2e5491b23003514108552a37e8acc086daa379352a0bbcf892d68da.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8547a3222f47412a85fa86009cd723ff414fb222` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
