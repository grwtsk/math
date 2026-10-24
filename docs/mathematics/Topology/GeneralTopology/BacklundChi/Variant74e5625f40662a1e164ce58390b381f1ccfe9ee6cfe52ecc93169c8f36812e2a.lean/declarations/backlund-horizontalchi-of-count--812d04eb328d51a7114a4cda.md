# backlund_horizontalChi_of_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e9a7b0ff894a2eec2d58f7cd0fc09a7c51e9738",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f60bbc90-44ad-a8f9-cd91-0e9307e2d790",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ab0fb2a-75f8-424a-2f57-444195762fa4",
  "kind": "theorem",
  "lexical_name": "backlund_horizontalChi_of_count",
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
  "slug": "backlund-horizontalchi-of-count--812d04eb328d51a7114a4cda",
  "source": {
    "blob": "3e9a7b0ff894a2eec2d58f7cd0fc09a7c51e9738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 277,
    "path": "GRWTSK/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:812d04eb328d51a7114a4cda6a65fe7f0831a97fb3ee366a360c3e36a042da63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ab0fb2a-75f8-424a-2f57-444195762fa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem backlund_horizontalChi_of_count (hχ1 : χ ≠ 1)
    (hJ : ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ |T| →
      (reZeroSetL χ T).Finite ∧ ((reZeroSetL χ T).ncard : ℝ) ≤ C * Real.log |T|) :
    ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ |T| →
    (∀ ρ, IsNontrivialZeroL χ ρ → ρ.im ≠ T) →
    |(∫ σ in (1 / 2 : ℝ)..2, logDeriv χ.LFunction (σ + T * I)).im| ≤ C * Real.log |T| := by
  obtain ⟨C, T₀, hJ⟩ := hJ
  refine ⟨2 * Real.pi * (C + 1), max T₀ 3, fun T hT hord => ?_⟩
  have hT₀ : T₀ ≤ |T| := (le_max_left _ _).trans hT
  have hT3 : (3 : ℝ) ≤ |T| := (le_max_right _ _).trans hT
  obtain ⟨hfin, hcount⟩ := hJ T hT₀
  have hlog : 1 ≤ Real.log |T| := by
    rw [← Real.log_exp 1]
    exact Real.log_le_log (Real.exp_pos 1) (by linarith [Real.exp_one_lt_d9.trans (by norm_num : (2.7182818286 : ℝ) < 3)])
  have h := im_integral_logDeriv_le hχ1 (LFunction_ne_zero_on_segment hχ1 hord) hfin
  refine h.trans ?_
  have hπ := Real.pi_pos
  nlinarith [hcount, hlog, mul_nonneg hπ.le (sub_nonneg.mpr hlog)]


/-! ## The vertical side σ = 2 -/

/-- `Re ζ(2+it) > 0` (indeed `≥ 2 − π²/6`), from `‖ζ(s) − 1‖ ≤ π²/6 − 1 < 1` on `Re s ≥ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e9a7b0ff894a2eec2d58f7cd0fc09a7c51e9738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
