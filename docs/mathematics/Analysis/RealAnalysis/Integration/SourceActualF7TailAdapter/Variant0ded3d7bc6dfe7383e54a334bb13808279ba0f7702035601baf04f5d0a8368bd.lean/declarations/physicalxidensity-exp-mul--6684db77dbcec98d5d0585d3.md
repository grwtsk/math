# physicalXiDensity_exp_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e1f183d-cc1c-13f4-1bed-7c83ed844d30",
  "kind": "theorem",
  "lexical_name": "physicalXiDensity_exp_mul",
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
  "slug": "physicalxidensity-exp-mul--6684db77dbcec98d5d0585d3",
  "source": {
    "blob": "011998c8cb48cfa4d6cdc647fdb7503455f7215c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant0ded3d7bc6dfe7383e54a334bb13808279ba0f7702035601baf04f5d0a8368bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6684db77dbcec98d5d0585d3a643102153145781e7075392130915a267fa9064",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant0ded3d7bc6dfe7383e54a334bb13808279ba0f7702035601baf04f5d0a8368bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e1f183d-cc1c-13f4-1bed-7c83ed844d30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalXiDensity_exp_mul (t : ℝ) :
    physicalXiDensity (Real.exp t) * Real.exp t = timeXiDensity t := by
  unfold physicalXiDensity timeXiDensity
  rw [Real.rpow_def_of_pos (Real.exp_pos t), Real.log_exp]
  rw [div_mul_eq_mul_div, mul_div_assoc, ← Real.exp_sub]
  congr 1
  ring

/-- This substitution uses a monotone map, without continuity of the jumping source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant0ded3d7bc6dfe7383e54a334bb13808279ba0f7702035601baf04f5d0a8368bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant0ded3d7bc6dfe7383e54a334bb13808279ba0f7702035601baf04f5d0a8368bd.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `011998c8cb48cfa4d6cdc647fdb7503455f7215c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
