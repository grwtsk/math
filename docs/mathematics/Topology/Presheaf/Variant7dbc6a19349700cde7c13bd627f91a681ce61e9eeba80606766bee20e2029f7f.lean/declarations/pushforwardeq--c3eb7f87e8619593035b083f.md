# pushforwardEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28b4f51d5be89cc98ec2cbd49e20c81cc8dbf123b9dba6d60d03fa9752b3e96c",
  "kind": "def",
  "lexical_name": "pushforwardEq",
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
  "slug": "pushforwardeq--c3eb7f87e8619593035b083f",
  "source": {
    "blob": "35c621fae5eb744449c424515f3c574a3452d909",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 211,
    "path": "GRWTSK/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3eb7f87e8619593035b083f42273b5dadbd71c29358d86dcf9435a0c20c7f3e",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28b4f51d5be89cc98ec2cbd49e20c81cc8dbf123b9dba6d60d03fa9752b3e96c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushforwardEq {X Y : TopCat.{w}} {f g : X ⟶ Y} (h : f = g) (ℱ : X.Presheaf C) :
    f _* ℱ ≅ g _* ℱ :=
  isoWhiskerRight (NatIso.op (Opens.mapIso f g h).symm) ℱ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variant7dbc6a19349700cde7c13bd627f91a681ce61e9eeba80606766bee20e2029f7f.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c621fae5eb744449c424515f3c574a3452d909` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
