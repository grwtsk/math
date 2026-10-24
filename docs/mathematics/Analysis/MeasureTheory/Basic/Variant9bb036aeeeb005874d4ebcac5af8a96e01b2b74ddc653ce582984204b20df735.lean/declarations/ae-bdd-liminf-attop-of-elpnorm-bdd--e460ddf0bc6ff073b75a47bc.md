# ae_bdd_liminf_atTop_of_eLpNorm_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db81327ad7a9cc78cdb2684da7668ca57deea373",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1064,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81a835bf-a758-6f1f-dd76-84a229885482",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08e8bee2-8728-ed08-730c-f56233585a43",
  "kind": "theorem",
  "lexical_name": "ae_bdd_liminf_atTop_of_eLpNorm_bdd",
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
  "slug": "ae-bdd-liminf-attop-of-elpnorm-bdd--e460ddf0bc6ff073b75a47bc",
  "source": {
    "blob": "db81327ad7a9cc78cdb2684da7668ca57deea373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1097,
    "line": 1064,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e460ddf0bc6ff073b75a47bcde1798f323c701d85f66e276cfb6dad4ca35bedd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08e8bee2-8728-ed08-730c-f56233585a43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1064–1097.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_bdd_liminf_atTop_of_eLpNorm_bdd {p : ℝ≥0∞} (hp : p ≠ 0) {f : ℕ → α → E}
    (hbdd : ∀ n, eLpNorm (f n) p μ ≤ R) :
    ∀ᵐ x ∂μ, liminf (fun n => ‖f n x‖ₑ) atTop < ∞ := by
  have hfae n : AEStronglyMeasurable (f n) μ :=
    aestronglyMeasurable_of_eLpNorm_ne_top ((hbdd n).trans_lt (by simp)).ne
  by_cases hp' : p = ∞
  · subst hp'
    simp_rw [eLpNorm_exponent_top (hfae _)] at hbdd
    have : ∀ n, ∀ᵐ x ∂μ, (‖f n x‖ₑ) < R + 1 := fun n =>
      ae_lt_of_essSup_lt
        (lt_of_le_of_lt (hbdd n) <| ENNReal.lt_add_right ENNReal.coe_ne_top one_ne_zero)
    rw [← ae_all_iff] at this
    filter_upwards [this] with x hx using lt_of_le_of_lt
        (liminf_le_of_frequently_le' <| Frequently.of_forall fun n => (hx n).le)
        (ENNReal.add_lt_top.2 ⟨ENNReal.coe_lt_top, ENNReal.one_lt_top⟩)
  filter_upwards [ae_bdd_liminf_atTop_rpow_of_eLpNorm_bdd hbdd] with x hx
  have hppos : 0 < p.toReal := ENNReal.toReal_pos hp hp'
  have :
    liminf (fun n => (‖f n x‖ₑ) ^ p.toReal) atTop =
      liminf (fun n => (‖f n x‖ₑ)) atTop ^ p.toReal := by
    change
      liminf (fun n => ENNReal.orderIsoRpow p.toReal hppos (‖f n x‖ₑ)) atTop =
        ENNReal.orderIsoRpow p.toReal hppos (liminf (fun n => (‖f n x‖ₑ)) atTop)
    refine (OrderIso.liminf_apply (ENNReal.orderIsoRpow p.toReal _) ?_ ?_ ?_ ?_).symm <;>
      isBoundedDefault
  rw [this] at hx
  rw [← ENNReal.rpow_one (liminf (‖f · x‖ₑ) atTop), ← mul_inv_cancel₀ hppos.ne.symm,
    ENNReal.rpow_mul]
  exact ENNReal.rpow_lt_top_of_nonneg (inv_nonneg.2 hppos.le) hx.ne

end Liminf

/-- A continuous function with compact support belongs to `L^∞`.
See `Continuous.memLp_of_hasCompactSupport` for a version for `L^p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean#L1064).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db81327ad7a9cc78cdb2684da7668ca57deea373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
