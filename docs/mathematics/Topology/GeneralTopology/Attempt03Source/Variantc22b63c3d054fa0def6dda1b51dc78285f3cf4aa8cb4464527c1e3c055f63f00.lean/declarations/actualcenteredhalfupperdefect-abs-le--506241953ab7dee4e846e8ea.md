# actualCenteredHalfUpperDefect_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76d90065-ecd6-e322-e45e-c67f02e71545",
  "kind": "theorem",
  "lexical_name": "actualCenteredHalfUpperDefect_abs_le",
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
  "slug": "actualcenteredhalfupperdefect-abs-le--506241953ab7dee4e846e8ea",
  "source": {
    "blob": "e8f55fdb486e10326a212999bfdf3613111c35aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03Source/Variantc22b63c3d054fa0def6dda1b51dc78285f3cf4aa8cb4464527c1e3c055f63f00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:506241953ab7dee4e846e8ea2f0775c70b79e3b0743c33c8635ce37fa3330268",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03Source/Variantc22b63c3d054fa0def6dda1b51dc78285f3cf4aa8cb4464527c1e3c055f63f00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76d90065-ecd6-e322-e45e-c67f02e71545`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredHalfUpperDefect_abs_le {A : ℝ} (hA : 4 ≤ A) :
    |actualCenteredHalfUpperDefect A| ≤ 12 * A ^ 3 * Real.exp (-A) := by
  have hA1 : 1 ≤ A := by linarith
  have he := actualCenteredColumnHalfInventory_sub_zetaMain_abs_le hA1
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hu : 2 * (vaughanCutoff A : ℝ) + 1 ≤ 3 * A ^ 2 := by nlinarith
  change |actualCenteredHalfUpperDefect A| ≤ _ at he
  calc
    _ ≤ (2 * (vaughanCutoff A : ℝ) + 1) *
        (1 / Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ)) :=
      by simpa only [div_eq_mul_inv, one_div, one_mul] using he
    _ ≤ (3 * A ^ 2) *
        (2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) * Real.exp (-A)) :=
      mul_le_mul hu (inv_sqrt_upper_le hA) (by positivity) (by positivity)
    _ ≤ (3 * A ^ 2) * (2 * (2 * A) * Real.exp (-A)) := by
      gcongr
      exact sqrt_cutoff_le_scale hA1
    _ = _ := by ring

/-- The finite upper error tends to zero through all real floor and quotient jumps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03Source/Variantc22b63c3d054fa0def6dda1b51dc78285f3cf4aa8cb4464527c1e3c055f63f00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03Source/Variantc22b63c3d054fa0def6dda1b51dc78285f3cf4aa8cb4464527c1e3c055f63f00.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8f55fdb486e10326a212999bfdf3613111c35aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
