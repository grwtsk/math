# moment_profile_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:833dfa35-4994-c706-34db-f26696f6099c",
  "kind": "theorem",
  "lexical_name": "moment_profile_continuous",
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
  "slug": "moment-profile-continuous--c0e51aac0bf8c22ad30f705c",
  "source": {
    "blob": "7f44c7cc6d9a8f2ab65125ea14703f10ce825d21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0e51aac0bf8c22ad30f705c006ba74e8906fb167dbecb79de56e4d80b0e3b11",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:833dfa35-4994-c706-34db-f26696f6099c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moment_profile_continuous (j : ℕ) :
    Continuous (fun v : ℝ => v^j*sourceBump v) :=
  (continuous_id.pow j).mul sourceBump_contDiff.continuous

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODEAttempt02/Variantf4267b69a179f7f123fb68255ad0067ca267a24c0a3542b6ebe4d4b3c2d62407.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f44c7cc6d9a8f2ab65125ea14703f10ce825d21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
