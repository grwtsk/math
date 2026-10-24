# conditional_rh_of_mass_subsequence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70e388a55ac757305848b6834e71baf8ad668999",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/284b7a4447f5dad623ae8a71b625ad3f00c5d4361d704fde98dd010ecac8a91f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:021fa231-0adb-a870-4570-3d1c93c2e0af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33767a21-08ec-175e-97bf-29c4b9fc7e2d",
  "kind": "theorem",
  "lexical_name": "conditional_rh_of_mass_subsequence",
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
  "slug": "conditional-rh-of-mass-subsequence--505b0017f3f64f5f3e943c15",
  "source": {
    "blob": "70e388a55ac757305848b6834e71baf8ad668999",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRHTransportCombined/Variant284b7a4447f5dad623ae8a71b625ad3f00c5d4361d704fde98dd010ecac8a91f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:505b0017f3f64f5f3e943c15a62991d1b8a9da432bacd6a7a233022456cc6df8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRHTransportCombined/Variant284b7a4447f5dad623ae8a71b625ad3f00c5d4361d704fde98dd010ecac8a91f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33767a21-08ec-175e-97bf-29c4b9fc7e2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conditional_rh_of_mass_subsequence (α : ℕ → ℝ)
    (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0)) :
    _root_.RiemannHypothesis := by
  apply riemann_hypothesis_iff_defect_zero.mpr
  intro ρ hρ
  exact (rh_defect_eq_zero_iff ρ).mpr
    (nontrivial_re_eq_half_of_mass_subsequence α hα hmass ρ hρ)

/-- The exact controller schedule transports a separately proved full residual limit to root RH.
This declaration is conditional; it does not discharge its arithmetic convergence hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRHTransportCombined/Variant284b7a4447f5dad623ae8a71b625ad3f00c5d4361d704fde98dd010ecac8a91f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRHTransportCombined/Variant284b7a4447f5dad623ae8a71b625ad3f00c5d4361d704fde98dd010ecac8a91f.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e388a55ac757305848b6834e71baf8ad668999` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
