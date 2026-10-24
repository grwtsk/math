# actualLaplace_eq_product_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c04d72db71a27639edbe68c0c30bf88556c62769",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 465,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf29259c-3d4b-98dd-f05e-2c39998e7632",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf56f1d1-2e37-0bcd-ea84-12a302c9a91f",
  "kind": "theorem",
  "lexical_name": "actualLaplace_eq_product_closed",
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
  "slug": "actuallaplace-eq-product-closed--8fb1131d7f72947469a39deb",
  "source": {
    "blob": "c04d72db71a27639edbe68c0c30bf88556c62769",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 465,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fb1131d7f72947469a39debde11a8301d74b81045cfed499c8cb05754c19882",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf56f1d1-2e37-0bcd-ea84-12a302c9a91f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLaplace_eq_product_closed (z : ℂ) (hz : 0 ≤ z.re) (hzp : z ≠ 1 / 2) :
    actualLaplace z = W z * riemannZeta (1 / 2 + z) := by
  let ε : ℕ → ℝ := fun n => 1 / ((n : ℝ) + 1)
  let a : ℕ → ℂ := fun n => z + (ε n : ℂ)
  have heps : Tendsto ε atTop (nhds 0) := tendsto_one_div_add_atTop_nhds_zero_nat
  have ha : Tendsto a atTop (nhds z) := by
    simpa [a] using tendsto_const_nhds.add
      (Complex.continuous_ofReal.tendsto 0 |>.comp heps)
  have hapos (n : ℕ) : 0 < (a n).re := by
    dsimp [a, ε]
    have hε : 0 < 1 / ((n : ℝ) + 1) := by positivity
    linarith
  have haw : Tendsto a atTop (nhdsWithin z {w : ℂ | 0 ≤ w.re}) :=
    tendsto_nhdsWithin_iff.mpr ⟨ha, Eventually.of_forall (fun n => (hapos n).le)⟩
  have hL := Filter.Tendsto.comp (actualLaplace_continuousOn_closed z hz) haw
  have hR := (sourceProduct_continuousAt z hzp).tendsto.comp ha
  have hneq : ∀ᶠ n : ℕ in atTop, a n ≠ 1 / 2 :=
    ha.eventually (isOpen_compl_singleton.mem_nhds hzp)
  have heq : (fun n => actualLaplace (a n)) =ᶠ[atTop]
      (fun n => W (a n) * riemannZeta (1 / 2 + a n)) := by
    filter_upwards [hneq] with n hn
    rw [actualLaplace_eq_repairedTransfer _ (hapos n), repairedTransfer_eq_product _ hn, W]
    ring
  exact tendsto_nhds_unique hL ((tendsto_congr' heq).mpr hR)

/-- Every imaginary-axis boundary value is the actual W times the unchanged zeta value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryFullAudit/Variant3e00ea8f20ddba4a8e2dba1e311c1a94077c1b868c5b7df53811916405cdf12c.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04d72db71a27639edbe68c0c30bf88556c62769` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
