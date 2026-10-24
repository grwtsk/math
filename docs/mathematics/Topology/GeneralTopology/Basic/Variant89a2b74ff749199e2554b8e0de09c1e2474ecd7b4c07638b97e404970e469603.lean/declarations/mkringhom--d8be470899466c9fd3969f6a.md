# mkRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b9e99f7b0747e2eafef5226266b24c521797e7691d5cab7a1dd926b43ac37ba",
  "kind": "def",
  "lexical_name": "mkRingHom",
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
  "slug": "mkringhom--d8be470899466c9fd3969f6a",
  "source": {
    "blob": "5c144635f87dcd791abd45709349a656924aad0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 356,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8be470899466c9fd3969f6a2f5b71ed915911be1b8cf3e24b8d1d6e3bf249ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b9e99f7b0747e2eafef5226266b24c521797e7691d5cab7a1dd926b43ac37ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkRingHom [NonAssocSemiring R] [IsTopologicalSemiring R] : R →+* SeparationQuotient R where
  toFun := mk
  map_one' := mk_one; map_zero' := mk_zero; map_add' := mk_add; map_mul' := mk_mul

end Ring

section DistribSMul

variable {M A : Type*} [TopologicalSpace A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant89a2b74ff749199e2554b8e0de09c1e2474ecd7b4c07638b97e404970e469603.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c144635f87dcd791abd45709349a656924aad0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
