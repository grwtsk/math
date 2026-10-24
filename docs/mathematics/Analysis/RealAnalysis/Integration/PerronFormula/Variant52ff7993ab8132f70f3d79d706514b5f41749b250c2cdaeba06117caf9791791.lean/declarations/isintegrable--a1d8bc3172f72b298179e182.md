# isIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 541,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb51c763-fb68-0832-a238-a00aad166650",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a900c4dd-0036-9073-6424-40a51f73dfc2",
  "kind": "lemma",
  "lexical_name": "isIntegrable",
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
  "slug": "isintegrable--a1d8bc3172f72b298179e182",
  "source": {
    "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 541,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1d8bc3172f72b298179e182120ee55793dc058f44d5ca175c1a64c4c68c2208",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a900c4dd-0036-9073-6424-40a51f73dfc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIntegrable (xpos : 0 < x) (σ_ne_zero : σ ≠ 0) (σ_ne_neg_one : σ ≠ -1) :
    Integrable fun (t : ℝ) ↦ f x (σ + t * I) := by
  /-- By \ref{isHolomorphicOn}, $f$ is continuous, so it is integrable on any interval.-/
  have : Continuous (fun (y : ℝ) ↦ f x (σ + y * I)) := by
    refine (isHolomorphicOn xpos).continuousOn.comp_continuous (by continuity) fun x ↦
      not_or.mpr ?_
    simp [Complex.ext_iff, σ_ne_zero, σ_ne_neg_one]
  /-- Also, $|f(x)| = \Theta(x^{-2})$ as $x\to\infty$, -/
  refine this.locallyIntegrable.integrable_of_isBigO_atTop_of_norm_isNegInvariant
    (univ_mem' fun y ↦ ?_) (isTheta xpos).2.isBigO ⟨Ioi 1, Ioi_mem_atTop 1, ?_⟩
  · /-- and $|f(-x)| = \Theta(x^{-2})$ as $x\to\infty$. -/
    change ‖f x (↑σ + ↑y * I)‖ = ‖f x (↑σ + ↑(-y) * I)‖
    have : (↑σ + ↑(-y) * I) = conj (↑σ + ↑y * I) := Complex.ext (by simp) (by simp)
    simp_rw [this, map_conj xpos.le, norm_conj]
  · /-- Since $g(x) = x^{-2}$ is integrable on $[a,\infty)$ for any $a>0$, we conclude. -/
    refine integrableOn_Ioi_rpow_of_lt (show (-2 : ℝ) < -1 by norm_num)
      (show (0 : ℝ) < 1 by norm_num) |>.congr_fun (fun y hy ↦ ?_) measurableSet_Ioi
    rw [rpow_neg (show (0 : ℝ) < 1 by norm_num |>.trans hy |>.le), inv_eq_one_div, rpow_two]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75667ad1313ed12d8a0eb632481031c24c9a4686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
