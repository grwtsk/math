# weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7805c5b3591fe5d6fe7a9e7d969d59b354cb2890e5dd20c613e995aa02d096ba",
  "kind": "def",
  "lexical_name": "weight",
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
  "slug": "weight--cb21caac0a89401bacf3b0c4",
  "source": {
    "blob": "6aa7c0973ecbef74caaa5679a60677004ead9dba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt4/Variant040b46ae3744a8902d0ddd7e48b9e03562309f493d57b7afdd968c51e41f6f09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb21caac0a89401bacf3b0c47f27d87375d2123121dc68ca3a948a992b619041",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt4/Variant040b46ae3744a8902d0ddd7e48b9e03562309f493d57b7afdd968c51e41f6f09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7805c5b3591fe5d6fe7a9e7d969d59b354cb2890e5dd20c613e995aa02d096ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def weight (n : ℕ) : ℝ := ((n : ℝ) + 1) ^ (-2 : ℝ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt4/Variant040b46ae3744a8902d0ddd7e48b9e03562309f493d57b7afdd968c51e41f6f09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt4/Variant040b46ae3744a8902d0ddd7e48b9e03562309f493d57b7afdd968c51e41f6f09.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aa7c0973ecbef74caaa5679a60677004ead9dba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
