# strip_orders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52a8d7d9-e65c-cf9f-e7a2-20cdf5ed01be",
  "kind": "theorem",
  "lexical_name": "strip_orders",
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
  "slug": "strip-orders--30ce9031152808d8bb88b3f0",
  "source": {
    "blob": "97c0120558359a96005ec7e1c2af24fa7daa27a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variantbe4c11f2d7667c72e77ce2e25f32d3c5d03cab610c5c382557e76421810509d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30ce9031152808d8bb88b3f077f5ca436b878cbda1e00dbbd38ad24c5e401912",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variantbe4c11f2d7667c72e77ce2e25f32d3c5d03cab610c5c382557e76421810509d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52a8d7d9-e65c-cf9f-e7a2-20cdf5ed01be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem strip_orders {A w : ℝ} (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    actualTimeLower A ≤ actualLowerStripUpper A w ∧
    actualTimeLower A ≤ Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
    Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualColumnUpper A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A (by linarith)
  have hU1 : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
    norm_num
  have hK : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast (show vaughanCutoff A + 1 ≤
      sourceKernelCutoff A / (vaughanCutoff A + 1) by
        have h := actual_strict_quotient_lower hA
        omega)
  refine ⟨le_min (Real.log_le_log hU hUN) (by linarith),
    Real.log_le_log hU hU1, ?_⟩
  exact Real.log_le_log (hU.trans_le hU1) hK

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variantbe4c11f2d7667c72e77ce2e25f32d3c5d03cab610c5c382557e76421810509d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variantbe4c11f2d7667c72e77ce2e25f32d3c5d03cab610c5c382557e76421810509d4.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97c0120558359a96005ec7e1c2af24fa7daa27a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
