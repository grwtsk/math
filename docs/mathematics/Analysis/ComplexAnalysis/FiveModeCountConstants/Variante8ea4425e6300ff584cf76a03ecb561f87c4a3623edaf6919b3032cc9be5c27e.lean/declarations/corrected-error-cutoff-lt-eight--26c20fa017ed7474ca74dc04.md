# corrected_error_cutoff_lt_eight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfe589fd-0bad-634a-4f0d-cee00ff17b3e",
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
  "slug": "corrected-error-cutoff-lt-eight--26c20fa017ed7474ca74dc04",
  "source": {
    "blob": "cdcca0ce3736bb1bf6d8250a0dbae5ba11684861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 37,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FiveModeCountConstants/Variante8ea4425e6300ff584cf76a03ecb561f87c4a3623edaf6919b3032cc9be5c27e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26c20fa017ed7474ca74dc046eac5bc18387b4c17c7300c43b59cd56501c475d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FiveModeCountConstants/Variante8ea4425e6300ff584cf76a03ecb561f87c4a3623edaf6919b3032cc9be5c27e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfe589fd-0bad-634a-4f0d-cee00ff17b3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_error_cutoff_lt_eight :
    correctedBellottiWongError (3000000000000 : ℝ) < 8 := by
  unfold correctedBellottiWongError
  nlinarith [cutoff_log_lt_twenty_nine, cutoff_loglog_lt_four]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/FiveModeCountConstants/Variante8ea4425e6300ff584cf76a03ecb561f87c4a3623edaf6919b3032cc9be5c27e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FiveModeCountConstants/Variante8ea4425e6300ff584cf76a03ecb561f87c4a3623edaf6919b3032cc9be5c27e.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdcca0ce3736bb1bf6d8250a0dbae5ba11684861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
