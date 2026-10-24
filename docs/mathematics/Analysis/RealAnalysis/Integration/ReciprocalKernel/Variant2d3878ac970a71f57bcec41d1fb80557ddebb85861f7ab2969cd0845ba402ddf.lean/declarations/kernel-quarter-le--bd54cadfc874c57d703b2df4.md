# kernel_quarter_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5029c4e6-eb0c-f245-f616-253623e119d8",
  "kind": "theorem",
  "lexical_name": "kernel_quarter_le",
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
  "slug": "kernel-quarter-le--bd54cadfc874c57d703b2df4",
  "source": {
    "blob": "7e3d9cec73f185cbced950be61c011878c93f835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd54cadfc874c57d703b2df46d20817e2af722ea65032b6ec276397ca8bf9908",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5029c4e6-eb0c-f245-f616-253623e119d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_quarter_le (b : ℝ) : kernel b (1 / 4) ≤ 4 := by
  unfold kernel
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 1 / 4 * ((1 / 4) ^ 2 + b ^ 2))).2
  nlinarith [sq_nonneg b]

/-- A primitive that tends to zero at positive infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e3d9cec73f185cbced950be61c011878c93f835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
