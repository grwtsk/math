# ExactCostVector.add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1d7808840927fd3b654c063cf8d2def291f7e31ebe3bf067b0121ca52b13b88",
  "kind": "def",
  "lexical_name": "ExactCostVector.add",
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
  "slug": "exactcostvector-add--39a3b67f67f705f65cfbeda9",
  "source": {
    "blob": "015a4ced4d365f6af138d201be7de7e837f2ed7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39a3b67f67f705f65cfbeda98f7e96bae97534467ca9e751be3f46d42bced439",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1d7808840927fd3b654c063cf8d2def291f7e31ebe3bf067b0121ca52b13b88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExactCostVector.add
    (left right : ExactCostVector) : ExactCostVector where
  fieldAdditions := left.fieldAdditions + right.fieldAdditions
  fieldMultiplications :=
    left.fieldMultiplications + right.fieldMultiplications
  inversions := left.inversions + right.inversions
  polynomialOperations :=
    left.polynomialOperations + right.polynomialOperations
  factorizationSteps :=
    left.factorizationSteps + right.factorizationSteps
  proofChecks := left.proofChecks + right.proofChecks
  hashes := left.hashes + right.hashes
  bytesRead := left.bytesRead + right.bytesRead
  bytesWritten := left.bytesWritten + right.bytesWritten
  bitChanges := left.bitChanges + right.bitChanges
  queueCommits := left.queueCommits + right.queueCommits
  persistenceOperations :=
    left.persistenceOperations + right.persistenceOperations
  transportChecks := left.transportChecks + right.transportChecks

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015a4ced4d365f6af138d201be7de7e837f2ed7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
