# structureAuditKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81223d81c59e4978cdd8f92e5b251c04c4826a8a22602764b4d06fe8eaeb06b0",
  "kind": "def",
  "lexical_name": "structureAuditKind",
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
  "slug": "structureauditkind--a20ab2899c96950555de7ee7",
  "source": {
    "blob": "67cd9228cc940c432cfa22621c0c9c5c638fc86d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/A39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7RieszZeroSummabi/Variant608bf58adef20f9f69678d5149006837b9015cf6eb69c15a279211b3fdff0fe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a20ab2899c96950555de7ee71072d620281a2eb86d12009da247bb5a9ad87be3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/A39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7RieszZeroSummabi/Variant608bf58adef20f9f69678d5149006837b9015cf6eb69c15a279211b3fdff0fe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81223d81c59e4978cdd8f92e5b251c04c4826a8a22602764b4d06fe8eaeb06b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def structureAuditKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7RieszZeroSummabi/Variant608bf58adef20f9f69678d5149006837b9015cf6eb69c15a279211b3fdff0fe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7RieszZeroSummabi/Variant608bf58adef20f9f69678d5149006837b9015cf6eb69c15a279211b3fdff0fe4.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67cd9228cc940c432cfa22621c0c9c5c638fc86d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
