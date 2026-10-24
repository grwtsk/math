# isTheta_uniformlyOn_uIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11c996e3-8aab-310e-bc97-245e5cc0c63a",
  "kind": "theorem",
  "lexical_name": "isTheta_uniformlyOn_uIcc",
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
  "slug": "istheta-uniformlyon-uicc--ed5775863221ba9e1ced9f94",
  "source": {
    "blob": "37ebc097b2f05a955e08b89d04b4afa1b77f2ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 505,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed5775863221ba9e1ced9f94569043fe0e68d0c6e33c00c824af2cf97aa2fc6d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11c996e3-8aab-310e-bc97-245e5cc0c63a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTheta_uniformlyOn_uIcc {x : ℝ} (xpos : 0 < x) (σ' σ'' : ℝ) :
    (fun (σ, (y : ℝ)) ↦ f x (σ + y * I)) =Θ[𝓟 [[σ', σ'']] ×ˢ (atBot ⊔ atTop)]
    ((fun y ↦ 1 / y^2) ∘ Prod.snd) := by
  set l := 𝓟 [[σ', σ'']] ×ˢ (atBot ⊔ atTop : Filter ℝ) with hl
  refine IsTheta.div (isTheta_norm_left.mp ?_) ?_
  · suffices (fun (σ, _y) ↦ |x| ^ σ) =Θ[l] fun _ ↦ (1 : ℝ) by
      simpa [Complex.norm_cpow_of_ne_zero <| ofReal_ne_zero.mpr (ne_of_gt xpos),
        arg_ofReal_of_nonneg xpos.le] using this
    exact (continuousOn_const.rpow continuousOn_id fun _ _ ↦
        Or.inl <| ne_of_gt (abs_pos_of_pos xpos))
      |>.const_isThetaUniformlyOn_isCompact isCompact_uIcc (by norm_num)
      (fun i _ ↦ ne_of_gt <| rpow_pos_of_pos (abs_pos_of_pos xpos) _) _
  · have h_c {c : ℂ} : (fun (_ : ℝ × ℝ) ↦ c) =o[l] Prod.snd := by
      rewrite [hl, Filter.prod_sup, isLittleO_sup]
      exact ⟨isLittleO_const_snd_atBot c _, isLittleO_const_snd_atTop c _⟩
    have h_yI : (fun ((_σ, y) : ℝ × ℝ) ↦ y * I) =Θ[l] Prod.snd :=
      IsTheta.of_norm_eventuallyEq_norm (by simp)
    have h_σ_yI : (fun (σy : ℝ × ℝ) ↦ σy.1 + σy.2 * I) =Θ[l] Prod.snd := by
      refine IsLittleO.add_isTheta ?_ h_yI
      exact continuous_ofReal.continuousOn.const_isBigOUniformlyOn_isCompact isCompact_uIcc
        (by norm_num : ‖(1 : ℂ)‖ ≠ 0) _ |>.trans_isLittleO h_c
    simp_rw [sq]; exact h_σ_yI.mul (h_σ_yI.add_isLittleO h_c)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ebc097b2f05a955e08b89d04b4afa1b77f2ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
