# gammaSeq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3b56438-50ef-23de-9a86-61dc7e16a65f",
  "kind": "theorem",
  "lexical_name": "gammaSeq_integral",
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
  "slug": "gammaseq-integral--ed2757b37176660c5c78aabb",
  "source": {
    "blob": "c9d7301274e0a4219c4690105ce02dd71e8ac6d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 139,
    "path": "GRWTSK/Analysis/DigammaSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed2757b37176660c5c78aabbe33ea4f3d6549292fe9e1398dc4cd66da80a22ce",
  "verification": {
    "reference": "docs/verification/Analysis/DigammaSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3b56438-50ef-23de-9a86-61dc7e16a65f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gammaSeq_integral {z : ℂ} (hz : 0 < z.re) {n : ℕ} (hn : n ≠ 0) :
    Complex.GammaSeq z n =
      ∫ x : ℝ in Ioi 0, (eulerKernel n x : ℂ) * (x : ℂ) ^ (z - 1) := by
  rw [Complex.GammaSeq_eq_approx_Gamma_integral hz hn]
  have heq : (fun x : ℝ ↦ (eulerKernel n x : ℂ) * (x : ℂ) ^ (z - 1)) =
      (Ioc 0 (n : ℝ)).indicator
        (fun x : ℝ ↦ ((1 - x / n) ^ n : ℂ) * (x : ℂ) ^ (z - 1)) := by
    ext x
    by_cases hx : x ∈ Ioc 0 (n : ℝ) <;> simp [eulerKernel, hx]
  rw [heq, MeasureTheory.integral_indicator measurableSet_Ioc,
    MeasureTheory.Measure.restrict_restrict_of_subset Ioc_subset_Ioi_self,
    intervalIntegral.integral_of_le (by positivity : (0 : ℝ) ≤ n)]
  congr 1
  ext x
  push_cast
  rfl

/-- A uniform, integrable error majorant for a closed positive real-part strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/DigammaSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DigammaSeries.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9d7301274e0a4219c4690105ce02dd71e8ac6d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
