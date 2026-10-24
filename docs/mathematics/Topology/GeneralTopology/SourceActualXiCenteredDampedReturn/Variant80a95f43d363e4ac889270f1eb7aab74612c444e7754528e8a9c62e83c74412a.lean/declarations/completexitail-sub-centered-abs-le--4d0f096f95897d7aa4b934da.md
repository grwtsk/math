# completeXiTail_sub_centered_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6ce4d35-506c-9461-b307-2fac9d68cb20",
  "kind": "theorem",
  "lexical_name": "completeXiTail_sub_centered_abs_le",
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
  "slug": "completexitail-sub-centered-abs-le--4d0f096f95897d7aa4b934da",
  "source": {
    "blob": "80037dc9e0a4c7e45c99a5153c67119c14f9385f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant80a95f43d363e4ac889270f1eb7aab74612c444e7754528e8a9c62e83c74412a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d0f096f95897d7aa4b934da5135c8870b05933b51b7f722d5eefea07d22e71c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant80a95f43d363e4ac889270f1eb7aab74612c444e7754528e8a9c62e83c74412a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6ce4d35-506c-9461-b307-2fac9d68cb20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeXiTail_sub_centered_abs_le {A : ℝ} (hA : 91 ≤ A) (q : ℝ) :
    |completeXiTail A - actualCenteredDampedXiReturn A q| ≤
      actualConstantSectorLowerBudget q / A ^ 2 := by
  rw [completeXiTail_eq_centered_damped_return hA q]
  have he : actualCenteredDampedXiReturn A q - q * actualDampedXiReturnTest A (Real.log 7) -
      actualCenteredDampedXiReturn A q = -q * actualDampedXiReturnTest A (Real.log 7) := by ring
  rw [he, abs_mul, abs_neg]
  calc
    _ ≤ |q| * (Real.sqrt 7 * (5 + (5 / 2 : ℝ) * Real.log 7) / A ^ 2) :=
      mul_le_mul_of_nonneg_left (actualDampedXiReturnTest_lower_abs_le hA) (abs_nonneg q)
    _ = _ := by unfold actualConstantSectorLowerBudget; ring

/-- Only the genuine constant-sector payment vanishes at all real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant80a95f43d363e4ac889270f1eb7aab74612c444e7754528e8a9c62e83c74412a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant80a95f43d363e4ac889270f1eb7aab74612c444e7754528e8a9c62e83c74412a.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80037dc9e0a4c7e45c99a5153c67119c14f9385f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
