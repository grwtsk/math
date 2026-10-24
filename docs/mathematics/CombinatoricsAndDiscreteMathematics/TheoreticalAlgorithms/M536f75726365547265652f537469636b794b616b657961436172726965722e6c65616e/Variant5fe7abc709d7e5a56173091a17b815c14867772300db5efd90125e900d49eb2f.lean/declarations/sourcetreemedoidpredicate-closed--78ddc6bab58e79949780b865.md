# SourceTreeMedoidPredicate.closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23b5e5b37302ec4a8ef722568198548b848502ee2fcc559f5f399f6ca81cf226",
  "kind": "def",
  "lexical_name": "SourceTreeMedoidPredicate.closed",
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
  "slug": "sourcetreemedoidpredicate-closed--78ddc6bab58e79949780b865",
  "source": {
    "blob": "3e936b41c36ec1592be6a539032b0736767051bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e/Variant5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78ddc6bab58e79949780b865271c81c1a523719d5b2daea11d8bd8e81406fe51",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e/Variant5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23b5e5b37302ec4a8ef722568198548b848502ee2fcc559f5f399f6ca81cf226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SourceTreeMedoidPredicate.closed
    (w : SourceTreeMedoidPredicate) : Prop :=
  w.coverCount = w.medoidCount
    /\ w.missingMedoidCount = 0
    /\ w.duplicateMedoidCount = 0
    /\ w.medoidOwnerConfusionCount = 0
    /\ w.lMedoidCollisionCount = 0
    /\ w.rMedoidInstabilityCount = 0
    /\ w.dominantFaceMedoidPresent = true
    /\ w.refactorLeafMedoidGaugePassed = true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e/Variant5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e/Variant5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e936b41c36ec1592be6a539032b0736767051bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
