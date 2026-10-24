# structureAuditKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9991bed9043cfb5663dfb44efee2557f17856b7b606cf1f1b5fc856f6b8c2326",
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
  "slug": "structureauditkind--b1b67e12ff182722a29cf07f",
  "source": {
    "blob": "1d4d1d2fc10a90e57d2106ab686b5955c45c29ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 14,
    "path": "GRWTSK/Topology/GeneralTopology/87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4aeSourceBoundaryLa/Variant87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1b67e12ff182722a29cf07f8f0579f1174a68030f30792af6f707c731fe9fb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4aeSourceBoundaryLa/Variant87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9991bed9043cfb5663dfb44efee2557f17856b7b606cf1f1b5fc856f6b8c2326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–23.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4aeSourceBoundaryLa/Variant87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4aeSourceBoundaryLa/Variant87be01c20a68349fd993a2f98d88d7e7a41d6282b48a4398621f49268687e4ae.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d4d1d2fc10a90e57d2106ab686b5955c45c29ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
