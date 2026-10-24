# abs_conductorThreeExpandedTypeI_total_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3588618c4e8d160963f798921b98c546ae7e8142",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51125f23-33f8-2d23-266c-09d4b134bb47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e4f858c-156c-cb91-bbb2-e0d1e44a80ab",
  "kind": "theorem",
  "lexical_name": "abs_conductorThreeExpandedTypeI_total_le",
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
  "slug": "abs-conductorthreeexpandedtypei-total-le--ef6f369a74aa10f52962dc7f",
  "source": {
    "blob": "3588618c4e8d160963f798921b98c546ae7e8142",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 412,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef6f369a74aa10f52962dc7f7e1b8bbd1cd32b54100c759a4edd1e035a959b9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e4f858c-156c-cb91-bbb2-e0d1e44a80ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_conductorThreeExpandedTypeI_total_le (U V x : ℕ) :
    |conductorThreeTypeZeroExpanded U x +
        conductorThreeTypeI1Expanded U V x +
        conductorThreeTypeI2Expanded V x| ≤
      (U + 1 : ℕ) * Real.log ((max 1 U : ℕ) : ℝ) +
      (U + 1 : ℕ) * (V + 1 : ℕ) *
        Real.log ((max 1 U : ℕ) : ℝ) +
      2 * (V + 1 : ℕ) * Real.log ((max 1 x : ℕ) : ℝ) := by
  calc
    |conductorThreeTypeZeroExpanded U x +
        conductorThreeTypeI1Expanded U V x +
        conductorThreeTypeI2Expanded V x| ≤
      |conductorThreeTypeZeroExpanded U x| +
        |conductorThreeTypeI1Expanded U V x| +
        |conductorThreeTypeI2Expanded V x| := by
      exact (abs_add_le _ _).trans
        (add_le_add (abs_add_le _ _) (le_refl _))
    _ ≤
      (U + 1 : ℕ) * Real.log ((max 1 U : ℕ) : ℝ) +
      (U + 1 : ℕ) * (V + 1 : ℕ) *
        Real.log ((max 1 U : ℕ) : ℝ) +
      2 * (V + 1 : ℕ) * Real.log ((max 1 x : ℕ) : ℝ) := by
      gcongr
      · exact abs_conductorThreeTypeZeroExpanded_le U x
      · exact abs_conductorThreeTypeI1Expanded_le U V x
      · exact abs_conductorThreeTypeI2Expanded_le V x

/-- The preceding estimate at the fixed fourth-root Vaughan cutoff used by
the conductor-three atomization.  This is the checked elementary Type I
surface; converting its right-hand side to an `N^(1/2+epsilon)` asymptotic
bound is a separate real-power comparison, while identifying the expanded
sums with the convolution prefixes is the separate finite reindexing
adapter described above. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3588618c4e8d160963f798921b98c546ae7e8142` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
