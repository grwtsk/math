# corrected_error_cutoff_lt_eight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb0bfe9d-fe24-03d5-65b9-2449f57c180d",
  "kind": "theorem",
  "lexical_name": "corrected_error_cutoff_lt_eight",
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
  "slug": "corrected-error-cutoff-lt-eight--899f9a08f95a426585302688",
  "source": {
    "blob": "4e4fe8f5cb4b9443c5a8347b619cbe06712c298f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 45,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FiveModeCountConstants/Variantba1d004a6c2390aca9fbb457c8f6cd904f7d0d4450c2b1b0d21d2e39dfe9a393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:899f9a08f95a4265853026883b977d4824c25e9924c503a20c261c6709fb4621",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FiveModeCountConstants/Variantba1d004a6c2390aca9fbb457c8f6cd904f7d0d4450c2b1b0d21d2e39dfe9a393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb0bfe9d-fe24-03d5-65b9-2449f57c180d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_error_cutoff_lt_eight :
    correctedBellottiWongError (3000000000000 : ℝ) < 8 := by
  unfold correctedBellottiWongError
  nlinarith [cutoff_log_lt_twenty_nine, cutoff_loglog_lt_four]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/FiveModeCountConstants/Variantba1d004a6c2390aca9fbb457c8f6cd904f7d0d4450c2b1b0d21d2e39dfe9a393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FiveModeCountConstants/Variantba1d004a6c2390aca9fbb457c8f6cd904f7d0d4450c2b1b0d21d2e39dfe9a393.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e4fe8f5cb4b9443c5a8347b619cbe06712c298f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
