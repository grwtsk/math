# range_mvfderiv_subtypeVal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c1795f2ad1cb83329a5c33c5a4315871798ca1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 488,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55984728b8c0eb070cc664269ebc0475d88f40cbc409d90810fc293ff9d6cbbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd8cab7f-2068-b59a-ed41-1e7644f35a8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e7dd579-7fa9-ef7a-4b75-dd55009a575f",
  "kind": "theorem",
  "lexical_name": "range_mvfderiv_subtypeVal",
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
  "slug": "range-mvfderiv-subtypeval--77faee889ecc7dcd8ee7a4af",
  "source": {
    "blob": "4c1795f2ad1cb83329a5c33c5a4315871798ca1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 488,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant55984728b8c0eb070cc664269ebc0475d88f40cbc409d90810fc293ff9d6cbbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77faee889ecc7dcd8ee7a4afd5d94083abb808dfe4e94cc222dfa711676db0f3",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Sphere/Variant55984728b8c0eb070cc664269ebc0475d88f40cbc409d90810fc293ff9d6cbbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e7dd579-7fa9-ef7a-4b75-dd55009a575f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_mvfderiv_subtypeVal {n : ℕ} [Fact (finrank ℝ E = n + 1)] (v : sphere (0 : E) 1) :
    (mvfderiv (𝓡 n) ((↑) : sphere (0 : E) 1 → E) v).range = (ℝ ∙ (v : E))ᗮ := by
  rw [((contMDiff_coe_sphere v).mdifferentiableAt one_ne_zero).mvfderiv]
  dsimp [chartAt]
  simp only [fderivWithin_univ, mfld_simps]
  let U := (OrthonormalBasis.fromOrthogonalSpanSingleton (𝕜 := ℝ) n
    (ne_zero_of_mem_unit_sphere (-v))).repr
  suffices
      (fderiv ℝ ((stereoInvFunAux (-v : E) ∘ (↑)) ∘ U.symm) 0).range = (ℝ ∙ (v : E))ᗮ by
    rw [← this]
    congr 3
    apply stereographic'_neg
  have :
    HasFDerivAt (stereoInvFunAux (-v : E) ∘ (Subtype.val : (ℝ ∙ (↑(-v) : E))ᗮ → E))
      (ℝ ∙ (↑(-v) : E))ᗮ.subtypeL (U.symm 0) := by
    convert! hasFDerivAt_stereoInvFunAux_comp_coe (-v : E)
    simp
  convert! congr($((this.comp 0 U.symm.toContinuousLinearEquiv.hasFDerivAt).fderiv).range)
  symm
  convert!
    (U.symm : EuclideanSpace ℝ (Fin n) ≃ₗᵢ[ℝ] (ℝ ∙ (↑(-v) : E))ᗮ).range_comp
      (ℝ ∙ (↑(-v) : E))ᗮ.subtype using 1
  simp only [Submodule.range_subtype, coe_neg_sphere]
  congr 1
  -- we must show `Submodule.span ℝ {v} = Submodule.span ℝ {-v}`
  apply Submodule.span_eq_span
  · simp only [Set.singleton_subset_iff, SetLike.mem_coe]
    rw [← Submodule.neg_mem_iff]
    exact Submodule.mem_span_singleton_self (-v : E)
  · simp only [Set.singleton_subset_iff, SetLike.mem_coe]
    rw [Submodule.neg_mem_iff]
    exact Submodule.mem_span_singleton_self (v : E)

@[deprecated range_mvfderiv_subtypeVal (since := "2026-08-02")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variant55984728b8c0eb070cc664269ebc0475d88f40cbc409d90810fc293ff9d6cbbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant55984728b8c0eb070cc664269ebc0475d88f40cbc409d90810fc293ff9d6cbbe.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c1795f2ad1cb83329a5c33c5a4315871798ca1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
