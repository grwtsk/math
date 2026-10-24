# adjacent_log_gap_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42a0efb8-80cb-2057-3d3f-66d9d32381e0",
  "kind": "theorem",
  "lexical_name": "adjacent_log_gap_bounds",
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
  "slug": "adjacent-log-gap-bounds--cf28666c079dfe13281c2b00",
  "source": {
    "blob": "e31a77e0f41e9ecbb3ccce9654420547ab6b0e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bd2ab06663cfb09520ee3be08e554b25e4916bad72ac63a6cfae0b7142ee3bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf28666c079dfe13281c2b007004c12fd0a9ebc63cd9834db3fe0cb94741d4c9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bd2ab06663cfb09520ee3be08e554b25e4916bad72ac63a6cfae0b7142ee3bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42a0efb8-80cb-2057-3d3f-66d9d32381e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjacent_log_gap_bounds (n : ℕ) (hn : 1 ≤ n) :
    1 / ((n : ℝ) + 1) ≤ Real.log ((n : ℝ) + 1) - Real.log n ∧
      Real.log ((n : ℝ) + 1) - Real.log n ≤ 1 / (n : ℝ) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast hn
  have hn10 : 0 < (n : ℝ) + 1 := by positivity
  have hratio := div_pos hn10 hn0
  have hlog := Real.log_div hn10.ne' hn0.ne'
  constructor
  · have h := Real.one_sub_inv_le_log_of_pos hratio
    rw [hlog] at h
    have heq : 1 - (((n : ℝ) + 1) / (n : ℝ))⁻¹ = 1 / ((n : ℝ) + 1) := by
      field_simp
      ring
    rwa [heq] at h
  · have h := Real.log_le_sub_one_of_pos hratio
    rw [hlog] at h
    have heq : ((n : ℝ) + 1) / (n : ℝ) - 1 = 1 / (n : ℝ) := by
      field_simp
      ring
    rwa [heq] at h

/-- A local logarithmic gap uses the larger index, not a fictitious fixed spacing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bd2ab06663cfb09520ee3be08e554b25e4916bad72ac63a6cfae0b7142ee3bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bd2ab06663cfb09520ee3be08e554b25e4916bad72ac63a6cfae0b7142ee3bf.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31a77e0f41e9ecbb3ccce9654420547ab6b0e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
