# formulaLtOne

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
      "line": 638,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0360366-9e09-ee09-421b-fcd88efcbf5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17e6847d-93cf-5a63-b4a4-40ed6b7e7bd0",
  "kind": "lemma",
  "lexical_name": "formulaLtOne",
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
  "slug": "formulaltone--85227a040400feb8b7e96fbb",
  "source": {
    "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 638,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85227a040400feb8b7e96fbb358d5256b85d542768191d2cf3d2da61b6d70473",
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

Occurrence: `result:17e6847d-93cf-5a63-b4a4-40ed6b7e7bd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma formulaLtOne (xpos : 0 < x) (x_lt_one : x < 1) (σ_pos : 0 < σ)
    : VerticalIntegral (f x) σ = 0 := by
  /--
  Let $f(s) = x^s/(s(s+1))$. Then $f$ is holomorphic on the half-plane
  $\{s\in\mathbb{C}:\Re(s)>0\}$. The rectangle integral of $f$ with corners $\sigma-iT$ and
  $\sigma+iT$ is zero. The limit of this rectangle integral as $T\to\infty$ is
  $\int_{(\sigma')}-\int_{(\sigma)}$. Therefore, $\int_{(\sigma')}=\int_{(\sigma)}$.
  -/
  have h_contourPull (σ' σ'' : ℝ) (σ'pos : 0 < σ') (σ''pos : 0 < σ'') :
      VerticalIntegral (f x) σ' = VerticalIntegral (f x) σ'' :=
    contourPull xpos (notMem_uIcc_of_lt σ'pos σ''pos)
      (notMem_uIcc_of_lt (by linarith) (by linarith))
  /--
  But we also have the bound $\int_{(\sigma')} \leq x^{\sigma'} * C$, where
  $C=\int_\R\frac{1}{|(1+t)(1+t+1)|}dt$.
  -/
  have VertIntBound : ∃ C > 0, ∀ σ' > 1, ‖VerticalIntegral (f x) σ'‖ ≤ x^σ' * C := by
    let C := ∫ (t : ℝ), 1 / ((1 + t ^ 2).sqrt * (2 + t ^ 2).sqrt)
    exact ⟨C, integralPosAux, fun _ ↦ vertIntBound xpos⟩
  /-- Therefore $\int_{(\sigma')}\to 0$ as $\sigma'\to\infty$. -/
  have AbsVertIntTendsto :
      Tendsto ((‖·‖ : ℂ → ℝ) ∘ (VerticalIntegral (f x))) atTop (𝓝 0) := by
    obtain ⟨C, _, hC⟩ := VertIntBound
    have := tendsto_rpow_atTop_nhds_zero_of_norm_lt_one xpos x_lt_one C
    apply tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds this
    · filter_upwards; exact fun _ ↦ norm_nonneg _
    · filter_upwards [eventually_gt_atTop 1]; exact hC
  have VertIntTendsto : Tendsto (VerticalIntegral (f x)) atTop (𝓝 0) :=
    tendsto_zero_iff_norm_tendsto_zero.mpr AbsVertIntTendsto
  /-- So pulling contours gives $\int_{(\sigma)}=0$. -/
  exact limitOfConstant σ_pos h_contourPull VertIntTendsto

blueprint_comment /--
The second case is when $x>1$.
Here are some auxiliary lemmata for the second case.
TODO: Move to more general section
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75667ad1313ed12d8a0eb632481031c24c9a4686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
