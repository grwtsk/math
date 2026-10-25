# profileTheoryVersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28380b82f3f396272e7261d8dc3207f844d44e1a13752f4a08258242c5e5afc9",
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
  "slug": "profiletheoryversion--32c44e98a5b9a3de01d10d7e",
  "source": {
    "blob": "88dda3e7c127f364089cfa38c55a19c98e781d41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantd29ee5b5f2af5be11022ea9d8841c69c01ce0632a6ca29361a6e2436cbcd6e95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32c44e98a5b9a3de01d10d7ed02ff58c7d75c0a1040d0e63403273747d2b6aa6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantd29ee5b5f2af5be11022ea9d8841c69c01ce0632a6ca29361a6e2436cbcd6e95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28380b82f3f396272e7261d8dc3207f844d44e1a13752f4a08258242c5e5afc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–186.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantd29ee5b5f2af5be11022ea9d8841c69c01ce0632a6ca29361a6e2436cbcd6e95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantd29ee5b5f2af5be11022ea9d8841c69c01ce0632a6ca29361a6e2436cbcd6e95.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88dda3e7c127f364089cfa38c55a19c98e781d41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
