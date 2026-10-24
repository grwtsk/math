# gammaSeq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f850a6724d3ea807c539e9e8902e7d4e27ce803c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e94716a1-695d-95ec-6916-a1ab1032eeb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4917759b-e8cb-9b74-ed25-944d2c12b9b6",
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
  "slug": "gammaseq-integral--f357c3763d036b2cf1d44672",
  "source": {
    "blob": "f850a6724d3ea807c539e9e8902e7d4e27ce803c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f357c3763d036b2cf1d446721765e32704641708e2ba1ed453b723185ac054d5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4917759b-e8cb-9b74-ed25-944d2c12b9b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–153.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f850a6724d3ea807c539e9e8902e7d4e27ce803c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
