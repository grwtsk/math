# toValued

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce30f8a828d5e038919420c6ee7ea6a17058195f2b993ab2297542606c6d70f1",
  "kind": "def",
  "lexical_name": "toValued",
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
  "slug": "tovalued--2a01cb96820bf7dffb10aab0",
  "source": {
    "blob": "16a9d1e9c7744c49ee1ce50085ef245b04bf087d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 67,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant75b51488c0d3cb72fda4d597e294c881400cab2f2b2c9c2d673c3b1bbaaa5c27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a01cb96820bf7dffb10aab08ad0b803ac3238bd33f2506ccf5e0bd9136c3685",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant75b51488c0d3cb72fda4d597e294c881400cab2f2b2c9c2d673c3b1bbaaa5c27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce30f8a828d5e038919420c6ee7ea6a17058195f2b993ab2297542606c6d70f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toValued : Valued K ℝ≥0 :=
  { hK.toUniformSpace,
    (inferInstance : IsUniformAddGroup K) with
    v := valuation
    is_topological_valuation := fun U => by
      rw [Metric.mem_nhds_iff]
      refine ⟨?_, ?_⟩
      · rintro ⟨ε, hε, h⟩
        rcases RankLeOne.exists_val_lt (valuation (K := K)) with H | H
        · use Units.mk0 (valuation.restrict 1) (by simp)
          intro x hx
          simp only [Units.val_mk0, mem_ofPred_eq, map_one] at hx
          by_cases hx0 : x = 0
          · exact h (hx0 ▸ Metric.mem_ball_self hε)
          · exfalso
            rw [← (valuation (K := K)).restrict.zero_iff, ← ne_eq, ← isUnit_iff_ne_zero] at hx0
            apply not_le.mpr hx
            apply le_of_eq
            rw [eq_comm]
            simpa only [Units.ext_iff, hx0.unit_spec, Units.val_one,
              Submonoid.mk_eq_one] using! H.elim hx0.unit 1
        · obtain ⟨x, hx, hxy⟩ := H (γ := ⟨ε, le_of_lt hε⟩) (pos_iff_ne_zero.mp hε)
          use Units.mk0 (valuation.restrict x) (by simp [Valuation.restrict_def, hx])
          intro y hy
          apply h
          simp only [Metric.mem_ball, dist_zero_right]
          simp only [Units.val_mk0, mem_ofPred_eq, restrict_lt_iff, ← NNReal.coe_lt_coe] at hy
          apply lt_trans hy
          simpa [RankLeOne.hom', valuation.restrict_def] using! hxy
      · rintro ⟨ε, hε⟩
        refine ⟨(embedding ε.1 : ℝ≥0), ?_, fun x hx ↦ hε ?_⟩
        · exact NNReal.coe_pos.mpr <| embedding_unit_pos _
        · simpa [restrict_lt_iff_lt_embedding] using! (mem_ball_zero_iff.mp hx) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant75b51488c0d3cb72fda4d597e294c881400cab2f2b2c9c2d673c3b1bbaaa5c27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant75b51488c0d3cb72fda4d597e294c881400cab2f2b2c9c2d673c3b1bbaaa5c27.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16a9d1e9c7744c49ee1ce50085ef245b04bf087d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
