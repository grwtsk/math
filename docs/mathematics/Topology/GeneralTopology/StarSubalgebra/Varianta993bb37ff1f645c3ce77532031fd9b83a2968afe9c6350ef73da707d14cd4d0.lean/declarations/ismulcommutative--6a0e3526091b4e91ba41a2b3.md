# isMulCommutative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf7a563abb3fdd208194f34e7a8f9df6a201c9903ab291c533f4876095b9cdb6",
  "kind": "instance",
  "lexical_name": "isMulCommutative",
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
  "slug": "ismulcommutative--6a0e3526091b4e91ba41a2b3",
  "source": {
    "blob": "0eae6084923863bda0d8148dbbc387fc62d092bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Varianta993bb37ff1f645c3ce77532031fd9b83a2968afe9c6350ef73da707d14cd4d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a0e3526091b4e91ba41a2b3f963d4247e72e7dde8da568246f38d5810f29ddb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StarSubalgebra/Varianta993bb37ff1f645c3ce77532031fd9b83a2968afe9c6350ef73da707d14cd4d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf7a563abb3fdd208194f34e7a8f9df6a201c9903ab291c533f4876095b9cdb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isMulCommutative [T2Space A] {x : A} [IsStarNormal x] :
    IsMulCommutative (elemental R x) := by
  unfold elemental; infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StarSubalgebra/Varianta993bb37ff1f645c3ce77532031fd9b83a2968afe9c6350ef73da707d14cd4d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StarSubalgebra/Varianta993bb37ff1f645c3ce77532031fd9b83a2968afe9c6350ef73da707d14cd4d0.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eae6084923863bda0d8148dbbc387fc62d092bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
