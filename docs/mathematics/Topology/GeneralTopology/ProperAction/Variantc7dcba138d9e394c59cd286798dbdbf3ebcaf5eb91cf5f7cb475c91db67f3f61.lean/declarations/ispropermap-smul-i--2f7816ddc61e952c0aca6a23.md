# isProperMap_smul_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f98297479270d43cbc5b766a197da601f91c874",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7dcba138d9e394c59cd286798dbdbf3ebcaf5eb91cf5f7cb475c91db67f3f61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1aff730a-863f-666b-ec40-22798b8818c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:758b589f-787f-7773-cd54-1be6a5acb6fe",
  "kind": "lemma",
  "lexical_name": "isProperMap_smul_I",
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
  "slug": "ispropermap-smul-i--2f7816ddc61e952c0aca6a23",
  "source": {
    "blob": "7f98297479270d43cbc5b766a197da601f91c874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/ProperAction/Variantc7dcba138d9e394c59cd286798dbdbf3ebcaf5eb91cf5f7cb475c91db67f3f61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f7816ddc61e952c0aca6a2388c4d1aac7c52f6c11d428a31be1c8ccc082771b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProperAction/Variantc7dcba138d9e394c59cd286798dbdbf3ebcaf5eb91cf5f7cb475c91db67f3f61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:758b589f-787f-7773-cd54-1be6a5acb6fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isProperMap_smul_I : IsProperMap fun g : SL(2, ℝ) ↦ g • I := by
  refine isProperMap_iff_isCompact_preimage.mpr ⟨by fun_prop, fun K hK ↦ ?_⟩
  obtain ⟨A, hA⟩ := absq_le hK
  obtain ⟨A', hA'⟩ := cdsq_le hK
  -- activate the sup-norm on matrices
  let : SeminormedAddCommGroup (Matrix (Fin 2) (Fin 2) ℝ) := Matrix.seminormedAddCommGroup
  have : ProperSpace (Matrix (Fin 2) (Fin 2) ℝ) := pi_properSpace
  have : IsCompact {m : Matrix (Fin 2) (Fin 2) ℝ | ∀ i j, |m i j| ≤ max √A √A'} := by
    convert! ProperSpace.isCompact_closedBall (0 : Matrix (Fin 2) (Fin 2) ℝ) (max √A √A')
    simp only [le_sup_iff, Fin.forall_fin_two, Fin.isValue, Metric.closedBall, dist_zero_right,
      Matrix.norm_def, pi_norm_le_iff_of_nonempty, Real.norm_eq_abs]
    #adaptation_note /-- Before https://github.com/leanprover/lean4/pull/13166
    (replacing grind's canonicalizer with a type-directed normalizer), `ext` was not necessary.
    The cause of this might be `Matrix` function application defeq abuse. -/
    ext; grind
  have := Matrix.SpecialLinearGroup.isClosedEmbedding_val.isCompact_preimage this
  refine this.of_isClosed_subset (hK.isClosed.preimage <| by fun_prop) (fun g hg ↦ ?_)
  intro i j
  fin_cases i
  · refine le_trans ?_ <| le_max_left √A √A'
    exact Real.le_sqrt_of_sq_le <| le_trans (by fin_cases j <;> simp [sq_nonneg]) (hA g hg)
  · refine le_trans ?_ <| le_max_right √A √A'
    exact Real.le_sqrt_of_sq_le <| le_trans (by fin_cases j <;> simp [sq_nonneg]) (hA' g hg)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProperAction/Variantc7dcba138d9e394c59cd286798dbdbf3ebcaf5eb91cf5f7cb475c91db67f3f61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProperAction/Variantc7dcba138d9e394c59cd286798dbdbf3ebcaf5eb91cf5f7cb475c91db67f3f61.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f98297479270d43cbc5b766a197da601f91c874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
