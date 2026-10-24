# smul_map_diagonal_volume_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2a3dbf4238ab555b4413644e3f3fbde8043082a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6df7ff0b-9b80-da57-8f53-0895702ccf65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:785913c0-4799-7b33-6c2b-9fdace97d504",
  "kind": "theorem",
  "lexical_name": "smul_map_diagonal_volume_pi",
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
  "slug": "smul-map-diagonal-volume-pi--0f56a9ea999dfe25afab76bf",
  "source": {
    "blob": "c2a3dbf4238ab555b4413644e3f3fbde8043082a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 353,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f56a9ea999dfe25afab76bf5894e5eb9a557fd707fa56336b3735325736ca72",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:785913c0-4799-7b33-6c2b-9fdace97d504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_map_diagonal_volume_pi [DecidableEq ι] {D : ι → ℝ} (h : det (diagonal D) ≠ 0) :
    ENNReal.ofReal (abs (det (diagonal D))) • Measure.map (toLin' (diagonal D)) volume =
      volume := by
  refine' (Measure.pi_eq fun s hs => _).symm
  simp only [det_diagonal, Measure.coe_smul, Algebra.id.smul_eq_mul, Pi.smul_apply]
  rw [Measure.map_apply _ (MeasurableSet.univ_pi hs)]
  swap; · exact Continuous.measurable (LinearMap.continuous_on_pi _)
  have :
    (Matrix.toLin' (diagonal D) ⁻¹' Set.pi Set.univ fun i : ι => s i) =
      Set.pi Set.univ fun i : ι => (D i * ·) ⁻¹' s i := by
    ext f
    simp only [LinearMap.coe_proj, Algebra.id.smul_eq_mul, LinearMap.smul_apply, mem_univ_pi,
      mem_preimage, LinearMap.pi_apply, diagonal_toLin']
  have B : ∀ i, ofReal (abs (D i)) * volume ((D i * ·) ⁻¹' s i) = volume (s i) := by
    intro i
    have A : D i ≠ 0 := by
      simp only [det_diagonal, Ne.def] at h
      exact Finset.prod_ne_zero_iff.1 h i (Finset.mem_univ i)
    rw [volume_preimage_mul_left A, ← mul_assoc, ← ENNReal.ofReal_mul (abs_nonneg _), ← abs_mul,
      mul_inv_cancel A, abs_one, ENNReal.ofReal_one, one_mul]
  rw [this, volume_pi_pi, Finset.abs_prod,
    ENNReal.ofReal_prod_of_nonneg fun i _ => abs_nonneg (D i), ← Finset.prod_mul_distrib]
  simp only [B]
#align real.smul_map_diagonal_volume_pi Real.smul_map_diagonal_volume_pi

/-- A transvection preserves Lebesgue measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2a3dbf4238ab555b4413644e3f3fbde8043082a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
