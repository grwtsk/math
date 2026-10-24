# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7ab9cbb4b836ebec26b4d856dc197ce0ddc35a357898f55d4c7377990a53aa1",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--0c12aaf3d97ceb1277655fc5",
  "source": {
    "blob": "6d28a8fa590ab56dc502f32b5adbe8600f589ccb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 407,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Positivity/Variant4efdbf6f057ba6fd890a0a42da40f51e412d36c60245fb056b87c35c1b4abcdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c12aaf3d97ceb1277655fc54393980327b345730e95c6fb26c5543f9eb57fbe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Positivity/Variant4efdbf6f057ba6fd890a0a42da40f51e412d36c60245fb056b87c35c1b4abcdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7ab9cbb4b836ebec26b4d856dc197ce0ddc35a357898f55d4c7377990a53aa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {r : ℝ≥0} (hr : 0 < r) : (0 : ℝ) < r := by positivity
-- example {r : ℝ≥0} (hr : 0 < r) : (0 : ℝ≥0∞) < r := by positivity
-- -- example {r : ℝ≥0} : (0 : ereal) ≤ r := by positivity -- TODO: Handle `coe_trans`
-- -- example {r : ℝ≥0} (hr : 0 < r) : (0 : ereal) < r := by positivity
-- example {r : ℝ} (hr : 0 ≤ r) : (0 : ereal) ≤ r := by positivity
-- example {r : ℝ} (hr : 0 < r) : (0 : ereal) < r := by positivity
-- example {r : ℝ} (hr : 0 ≤ r) : (0 : hyperreal) ≤ r := by positivity
-- example {r : ℝ} (hr : 0 < r) : (0 : hyperreal) < r := by positivity
-- example {r : ℝ≥0∞} : (0 : ereal) ≤ r := by positivity
-- example {r : ℝ≥0∞} (hr : 0 < r) : (0 : ereal) < r := by positivity

-- example {α : Type _} [OrderedRing α] {n : ℤ} : 0 ≤ ((n ^ 2 : ℤ) : α) := by positivity
-- example {r : ℝ≥0} : 0 ≤ ((r : ℝ) : ereal) := by positivity
-- example {r : ℝ≥0} : 0 < ((r + 1 : ℝ) : ereal) := by positivity

/- ## Integrals -/

section Integral

open MeasureTheory

variable {D : Type*} [NormedAddCommGroup D] [NormedSpace ℝ D]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [MeasurableSpace D] [BorelSpace D]
  (μ : Measure D)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Positivity/Variant4efdbf6f057ba6fd890a0a42da40f51e412d36c60245fb056b87c35c1b4abcdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Positivity/Variant4efdbf6f057ba6fd890a0a42da40f51e412d36c60245fb056b87c35c1b4abcdd.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d28a8fa590ab56dc502f32b5adbe8600f589ccb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
