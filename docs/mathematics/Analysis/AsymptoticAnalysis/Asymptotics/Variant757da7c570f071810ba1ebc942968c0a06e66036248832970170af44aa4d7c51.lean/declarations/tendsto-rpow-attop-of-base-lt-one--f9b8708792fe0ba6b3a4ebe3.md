# tendsto_rpow_atTop_of_base_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f86b44b2d25a85ad6df8636d06a0d75bf22c56fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb448726-145c-d5dd-09dc-1a28065d674d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7879f2d4-e4ce-4642-4581-4d4536ce5fc3",
  "kind": "lemma",
  "lexical_name": "tendsto_rpow_atTop_of_base_lt_one",
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
  "slug": "tendsto-rpow-attop-of-base-lt-one--f9b8708792fe0ba6b3a4ebe3",
  "source": {
    "blob": "f86b44b2d25a85ad6df8636d06a0d75bf22c56fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 44,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9b8708792fe0ba6b3a4ebe3d3c2c2138271de6083d2bcea5c4964a0b5bf2ced",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7879f2d4-e4ce-4642-4581-4d4536ce5fc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_rpow_atTop_of_base_lt_one (b : ℝ) (hb₀ : -1 < b) (hb₁ : b < 1) :
    Tendsto (b ^ · : ℝ → ℝ) atTop (𝓝 (0 : ℝ)) := by
  rcases lt_trichotomy b 0 with hb|rfl|hb
  case inl => -- b < 0
    simp_rw [Real.rpow_def_of_nonpos hb.le, hb.ne, ite_false]
    rw [← isLittleO_const_iff (c := (1 : ℝ)) one_ne_zero, (one_mul (1 : ℝ)).symm]
    refine IsLittleO.mul_isBigO ?exp ?cos
    case exp =>
      rw [isLittleO_const_iff one_ne_zero]
      refine tendsto_exp_atBot.comp <| (tendsto_const_mul_atBot_of_neg ?_).mpr tendsto_id
      rw [← log_neg_eq_log, log_neg_iff (by linarith)]
      linarith
    case cos =>
      rw [isBigO_iff]
      exact ⟨1, Eventually.of_forall fun x => by simp [Real.abs_cos_le_one]⟩
  case inr.inl => -- b = 0
    refine Tendsto.mono_right ?_ (Iff.mpr pure_le_nhds_iff rfl)
    rw [tendsto_pure]
    filter_upwards [eventually_ne_atTop 0] with _ hx
    simp [hx]
  case inr.inr => -- b > 0
    simp_rw [Real.rpow_def_of_pos hb]
    refine tendsto_exp_atBot.comp <| (tendsto_const_mul_atBot_of_neg ?_).mpr tendsto_id
    exact (log_neg_iff hb).mpr hb₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f86b44b2d25a85ad6df8636d06a0d75bf22c56fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
