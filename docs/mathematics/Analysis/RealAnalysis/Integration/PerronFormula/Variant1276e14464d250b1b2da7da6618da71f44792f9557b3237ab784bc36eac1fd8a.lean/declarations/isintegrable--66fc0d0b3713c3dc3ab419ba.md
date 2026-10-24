# isIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4ce44b2-6efe-c94f-b8b5-302fc57a4f49",
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
  "slug": "isintegrable--66fc0d0b3713c3dc3ab419ba",
  "source": {
    "blob": "37ebc097b2f05a955e08b89d04b4afa1b77f2ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 549,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66fc0d0b3713c3dc3ab419ba5e4a0a1ecba05117393f601ec4d163f01e703683",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4ce44b2-6efe-c94f-b8b5-302fc57a4f49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–567.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ebc097b2f05a955e08b89d04b4afa1b77f2ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
