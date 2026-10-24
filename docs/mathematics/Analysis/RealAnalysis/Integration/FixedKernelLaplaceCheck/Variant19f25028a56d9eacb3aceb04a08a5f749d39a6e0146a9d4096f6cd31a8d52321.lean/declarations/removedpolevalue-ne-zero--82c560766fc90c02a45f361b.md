# removedPoleValue_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86f60c06-031c-b83a-7256-cb0a5700f79b",
  "kind": "theorem",
  "lexical_name": "removedPoleValue_ne_zero",
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
  "slug": "removedpolevalue-ne-zero--82c560766fc90c02a45f361b",
  "source": {
    "blob": "720d73b26718d4c11d3c38667813e9b70f4c50fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 732,
    "line": 728,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variant19f25028a56d9eacb3aceb04a08a5f749d39a6e0146a9d4096f6cd31a8d52321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82c560766fc90c02a45f361bb3650d77f9eee9cc328852effcf8333b9fd36908",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variant19f25028a56d9eacb3aceb04a08a5f749d39a6e0146a9d4096f6cd31a8d52321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86f60c06-031c-b83a-7256-cb0a5700f79b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem removedPoleValue_ne_zero : removedPoleValue ≠ 0 := by
  apply mul_ne_zero (Complex.exp_ne_zero _)
  exact_mod_cast positivePoleSlope_pos.ne'

/-- In particular, the repaired transfer cannot vanish at the pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variant19f25028a56d9eacb3aceb04a08a5f749d39a6e0146a9d4096f6cd31a8d52321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variant19f25028a56d9eacb3aceb04a08a5f749d39a6e0146a9d4096f6cd31a8d52321.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `720d73b26718d4c11d3c38667813e9b70f4c50fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
