# AcceptanceConditions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38969932a6767cf6585ffb0700bf5fd8866ebbc3c73da5b6023e192713649051",
  "kind": "def",
  "lexical_name": "AcceptanceConditions",
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
  "slug": "acceptanceconditions--fbd81062a3d52476c382380a",
  "source": {
    "blob": "712d1f5bbead423413b1ce63df8a5673b7c33af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1039,
    "line": 999,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbd81062a3d52476c382380af866375ba859f922dd2c9af186b650400d8350b2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38969932a6767cf6585ffb0700bf5fd8866ebbc3c73da5b6023e192713649051`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 999–1039.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AcceptanceConditions
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    (commitment : CanonicalTraceCommitment kernel dimension)
    (trace : RuntimeTrace) : Prop :=
  trace.schemaVersion = 2 ∧
  kernelIdFromPreimage commitment.kernelIdentityPreimage = trace.kernelId ∧
  kernelDigestFromPreimage commitment.kernelIdentityPreimage =
    trace.kernelDigest ∧
  trace.schemaDigest = sha256 commitment.schemaWire ∧
  trace.manifestDigest = sha256 commitment.manifestWire ∧
  trace.sourceDigest = sha256 commitment.problemWire ∧
  trace.activeIndices = commitment.problem.activeIndices ∧
  trace.activeIndices = commitment.activeIndices ∧
  trace.activeIndices.length = dimension ∧
  trace.gram = commitment.problem.rawGram.regularized ∧
  trace.gram = commitment.expectedGram ∧
  trace.factor.reconstruct = trace.gram ∧
  trace.points.length = dimension ∧
  trace.points.map (·.point) = List.range dimension ∧
  trace.pointBindings = commitment.problem.pointBindings ∧
  (∀ point ∈ trace.points,
    PointReport.Matches trace point ∧
      referenceMatches commitment.manifestWire
        point.source point.sourceDigest) ∧
  trace.similarityQueries = commitment.problem.similarities ∧
  (∀ similarity ∈ trace.similarities,
    SimilarityReport.Matches trace similarity) ∧
  trace.implicationQueries = commitment.problem.implications ∧
  (∀ implication ∈ trace.implications,
    ImplicationReport.Matches trace implication ∧
    referenceMatches commitment.manifestWire
      implication.relation implication.relationDigest) ∧
  trace.oppositionQueries = commitment.problem.oppositions ∧
  (∀ opposition ∈ trace.oppositions,
    OppositionReport.ProfileBound commitment.problem opposition) ∧
  (∀ opposition ∈ trace.oppositions,
    OppositionReport.Matches trace opposition) ∧
  trace.analogyQueries = commitment.problem.analogies ∧
  (∀ analogy ∈ trace.analogies,
    AnalogyReport.Matches trace analogy)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be.lean#L999).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712d1f5bbead423413b1ce63df8a5673b7c33af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
