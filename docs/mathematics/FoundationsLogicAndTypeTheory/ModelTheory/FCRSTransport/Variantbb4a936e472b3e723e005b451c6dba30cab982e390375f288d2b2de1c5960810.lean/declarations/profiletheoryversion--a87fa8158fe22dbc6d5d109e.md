# profileTheoryVersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f644bc14b4bf91ee1352e922ac39edabe0cdc7d6d1afb47bf08a34e26e31a1c2",
  "kind": "def",
  "lexical_name": "profileTheoryVersion",
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
  "slug": "profiletheoryversion--a87fa8158fe22dbc6d5d109e",
  "source": {
    "blob": "c88cb2bd2f24b2a39f2ffb601501a85605a1794f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantbb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a87fa8158fe22dbc6d5d109e77de7909f58bf0e12b2794879c8e29a98d9f0851",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantbb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f644bc14b4bf91ee1352e922ac39edabe0cdc7d6d1afb47bf08a34e26e31a1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def profileTheoryVersion
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness) :
    MathematicalTheoryVersion (profileTheory profile) leanFoundation where
  artifact := eraseArtifactVersion profile.version
  theoryIdentity := ⟨profile.version.authority, profile.version.localName⟩
  signatureVersion := eraseArtifactVersion profile.version
  axiomSetVersion := eraseArtifactVersion profile.assumptionSet
  definitionSetVersion := eraseArtifactVersion profile.domainVersion
  importedTheoryVersions := []
  semanticRegime := "FCRS.Transport.IntervalClaim"
  quantifierProfile := neutralQuantifierProfile
  formalizationArtifactVersion := eraseArtifactVersion profile.sourceTheorem
  releaseStatus := .Released
  provenance := [
    eraseArtifactVersion profile.sourceTheorem,
    eraseArtifactVersion profile.lowerVersion,
    eraseArtifactVersion profile.upperVersion
  ]

/-- The existing profile's assumption artifact indexes an explicitly empty set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantbb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantbb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c88cb2bd2f24b2a39f2ffb601501a85605a1794f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
