# ConcentrationMechanismEvidence.kind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aaa652d94b30fbc11b7b829327de599bcb8f37aa245f7e9bfb023b7053694c97",
  "kind": "def",
  "lexical_name": "ConcentrationMechanismEvidence.kind",
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
  "slug": "concentrationmechanismevidence-kind--3bd3ddde1a3d9e5328c652a6",
  "source": {
    "blob": "8eecf49a5ea49fc12c5a3a0063ee1b77adf0a8fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 109,
    "path": "GRWTSK/Analysis/SpecialFunctions/Concentration/Varianteb8ae2fbcd05c6a8e0e0412d4b6cf4d4ca4d3653362188548d5cbc0599c61ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bd3ddde1a3d9e5328c652a68fb5092926c8382cccf1e34fb3adb54305475d06",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Concentration/Varianteb8ae2fbcd05c6a8e0e0412d4b6cf4d4ca4d3653362188548d5cbc0599c61ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aaa652d94b30fbc11b7b829327de599bcb8f37aa245f7e9bfb023b7053694c97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ConcentrationMechanismEvidence.kind
    {system : RandomBitfieldSystem}
    {geometry : ConcentrationGeometry system} :
    ConcentrationMechanismEvidence geometry →
      ConcentrationMechanism
  | .t1TransportEntropy _ _ _ =>
      .t1TransportEntropy
  | .modifiedLogSobolev _ _ _ =>
      .modifiedLogSobolev
  | .dobrushin _ _ _ _ _ =>
      .dobrushin
  | .marton _ _ _ =>
      .marton
  | .finiteMgfVerification _ _ _ =>
      .finiteMgfVerification

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Concentration/Varianteb8ae2fbcd05c6a8e0e0412d4b6cf4d4ca4d3653362188548d5cbc0599c61ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Concentration/Varianteb8ae2fbcd05c6a8e0e0412d4b6cf4d4ca4d3653362188548d5cbc0599c61ef7.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eecf49a5ea49fc12c5a3a0063ee1b77adf0a8fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
