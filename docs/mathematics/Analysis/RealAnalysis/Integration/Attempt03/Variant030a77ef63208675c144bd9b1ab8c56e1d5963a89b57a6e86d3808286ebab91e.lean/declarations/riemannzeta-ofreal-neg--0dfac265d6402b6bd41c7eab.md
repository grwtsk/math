# riemannZeta_ofReal_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f0ea1a7-cebf-ff27-cac6-5a869aa7d424",
  "kind": "theorem",
  "lexical_name": "riemannZeta_ofReal_neg",
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
  "slug": "riemannzeta-ofreal-neg--0dfac265d6402b6bd41c7eab",
  "source": {
    "blob": "a846379e1fcbfeec370e31669ccbb1315ba2e672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dfac265d6402b6bd41c7eab4c494780c2396de096162cd2a11a39ba6ca2cb3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f0ea1a7-cebf-ff27-cac6-5a869aa7d424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannZeta_ofReal_neg {σ : ℝ} (hσ : 0 < σ) (h1 : σ < 1) :
    (riemannZeta (σ : ℂ)).re < 0 := by
  rw [riemannZeta_real_euler hσ (ne_of_lt h1), ofReal_re]
  have hi : 0 ≤ ∫ u in Ioi (1 : ℝ), fractionalWeight σ u :=
    integral_nonneg_of_ae (ae_restrict_of_forall_mem measurableSet_Ioi
      fun u hu => fractionalWeight_nonneg σ ((by norm_num : (0 : ℝ) < 1).le.trans hu.le))
  have hp : σ / (σ - 1) < 0 := div_neg_of_pos_of_neg hσ (by linarith)
  have hn : 0 ≤ σ * ∫ u in Ioi (1 : ℝ), fractionalWeight σ u := mul_nonneg hσ.le hi
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a846379e1fcbfeec370e31669ccbb1315ba2e672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
