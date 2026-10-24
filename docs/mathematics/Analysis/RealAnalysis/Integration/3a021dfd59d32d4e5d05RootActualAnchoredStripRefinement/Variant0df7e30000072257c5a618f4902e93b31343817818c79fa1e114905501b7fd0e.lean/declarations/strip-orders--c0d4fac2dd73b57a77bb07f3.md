# strip_orders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1411a796-853e-7b9c-9785-7585bbd4523e",
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
  "slug": "strip-orders--c0d4fac2dd73b57a77bb07f3",
  "source": {
    "blob": "1e53204c94f8b9898ca905f78cdddccc3a408fe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variant0df7e30000072257c5a618f4902e93b31343817818c79fa1e114905501b7fd0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0d4fac2dd73b57a77bb07f37a02b4e5c7f9b4181782d526c26a64a3b97edd76",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variant0df7e30000072257c5a618f4902e93b31343817818c79fa1e114905501b7fd0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1411a796-853e-7b9c-9785-7585bbd4523e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–39.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variant0df7e30000072257c5a618f4902e93b31343817818c79fa1e114905501b7fd0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variant0df7e30000072257c5a618f4902e93b31343817818c79fa1e114905501b7fd0e.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e53204c94f8b9898ca905f78cdddccc3a408fe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
