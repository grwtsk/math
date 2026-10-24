# log_seven_lt_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:458fd140-4dd4-17a8-57da-eaec784d0bde",
  "kind": "theorem",
  "lexical_name": "log_seven_lt_two",
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
  "slug": "log-seven-lt-two--c7e5266e003e96329ac634bf",
  "source": {
    "blob": "b700853758f3f2585eca52f5703b7907963ac569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlock/Varianteefd8ffd4d4808208fa79b2820b0f04d244d5ad0a23cf1df21db7de05ec2e359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7e5266e003e96329ac634bfc934917173ba00b28475a5c32b6770d877c2a8ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlock/Varianteefd8ffd4d4808208fa79b2820b0f04d244d5ad0a23cf1df21db7de05ec2e359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:458fd140-4dd4-17a8-57da-eaec784d0bde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_seven_lt_two : Real.log (7 : ℝ) < 2 := by
  have he : (8 / 3 : ℝ) ≤ Real.exp 1 := by
    linarith [Real.exp_one_gt_d9]
  have hs : (8 / 3 : ℝ) ^ 2 ≤ (Real.exp 1) ^ 2 := by gcongr
  have he2 : Real.exp (2 : ℝ) = (Real.exp 1) ^ 2 := by
    rw [show (2 : ℝ) = 1 + 1 by norm_num, Real.exp_add]
    ring
  apply (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 7)).mpr
  rw [he2]
  nlinarith

/-- Actual normalized correlation bounds give the required negative transformed kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlock/Varianteefd8ffd4d4808208fa79b2820b0f04d244d5ad0a23cf1df21db7de05ec2e359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlock/Varianteefd8ffd4d4808208fa79b2820b0f04d244d5ad0a23cf1df21db7de05ec2e359.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b700853758f3f2585eca52f5703b7907963ac569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
