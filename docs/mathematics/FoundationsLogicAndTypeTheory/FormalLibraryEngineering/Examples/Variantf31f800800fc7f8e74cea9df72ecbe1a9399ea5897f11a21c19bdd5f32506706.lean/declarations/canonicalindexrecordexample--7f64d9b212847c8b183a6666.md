# canonicalIndexRecordExample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1c949e6208f00ff01a7f8465cbab5b43008e10d8085c244f7c3c1fccc1762b2",
  "kind": "def",
  "lexical_name": "canonicalIndexRecordExample",
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
  "slug": "canonicalindexrecordexample--7f64d9b212847c8b183a6666",
  "source": {
    "blob": "867f2af36fb7bef99a854589821e479681d13c25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 515,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variantf31f800800fc7f8e74cea9df72ecbe1a9399ea5897f11a21c19bdd5f32506706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f64d9b212847c8b183a6666e679993685c378a0e26b1397bca443d2b75db4fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variantf31f800800fc7f8e74cea9df72ecbe1a9399ea5897f11a21c19bdd5f32506706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1c949e6208f00ff01a7f8465cbab5b43008e10d8085c244f7c3c1fccc1762b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalIndexRecordExample : AnyIndexRecord :=
  { kind := .globalReference
    identifier := "global-reference:known-maximal-state"
    objectId := ⟨"known-maximal-state"⟩
    representationId := ⟨"known-maximal-state:finite-reference"⟩
    declaration := some ⟨"DAF.Terrain.KnownMaximalState"⟩
    propositionOrSpecification :=
      some "fixed finite reference with absolute coordinate equivalence"
    metadata :=
      { owner := ⟨"daf-terrain"⟩
        semanticVersion := ⟨1, 0, 0⟩
        representationVersion := ⟨1, 0, 0⟩
        payload := ⟨"source:Surface/DAF/Terrain/GlobalReference.lean"⟩
        contentDigest := ⟨"source-sha256:known-maximal-state-example"⟩
        sourceAuthority := .certifiedSource
        observationAuthority := .externalCapability
        assuranceLevel := .development
        assumptions := ["finite coordinate carrier"]
        dependencies := []
        globalLocus := none
        provenance := [⟨infiniteDiffusionPaper.digest.value⟩]
        supersedes := some ⟨"known-maximal-state:external-interface"⟩
        openObligations := [⟨"ID-RUNTIME-REFINEMENT"⟩] }
    payloadReference := "DAF.Terrain.KnownMaximalState" }

/-- A concrete normalized development snapshot with one stable record. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variantf31f800800fc7f8e74cea9df72ecbe1a9399ea5897f11a21c19bdd5f32506706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variantf31f800800fc7f8e74cea9df72ecbe1a9399ea5897f11a21c19bdd5f32506706.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `867f2af36fb7bef99a854589821e479681d13c25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
