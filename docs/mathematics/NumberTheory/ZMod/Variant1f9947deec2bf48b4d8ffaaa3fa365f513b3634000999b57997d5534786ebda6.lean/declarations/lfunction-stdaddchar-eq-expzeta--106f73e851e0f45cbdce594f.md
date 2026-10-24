# LFunction_stdAddChar_eq_expZeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82130390-c707-325d-0ebb-119d3180943b",
  "kind": "lemma",
  "lexical_name": "LFunction_stdAddChar_eq_expZeta",
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
  "slug": "lfunction-stdaddchar-eq-expzeta--106f73e851e0f45cbdce594f",
  "source": {
    "blob": "06c7cd326b587933ac3e0f4d6908e508aec2505e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 181,
    "path": "GRWTSK/NumberTheory/ZMod/Variant1f9947deec2bf48b4d8ffaaa3fa365f513b3634000999b57997d5534786ebda6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:106f73e851e0f45cbdce594ff44300bbeec0620ff7ca41b19a9e25c9861d913d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZMod/Variant1f9947deec2bf48b4d8ffaaa3fa365f513b3634000999b57997d5534786ebda6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82130390-c707-325d-0ebb-119d3180943b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LFunction_stdAddChar_eq_expZeta (j : ZMod N) (s : ℂ) (hjs : j ≠ 0 ∨ s ≠ 1) :
    LFunction (fun k ↦ 𝕖 (j * k)) s = expZeta (ZMod.toAddCircle j) s := by
  let U := if j = 0 then {z : ℂ | z ≠ 1} else univ -- region of analyticity of both functions
  let V := {z : ℂ | 1 < re z} -- convergence region
  have hUo : IsOpen U := by
    by_cases h : j = 0
    · simpa only [h, ↓reduceIte, U] using! isOpen_compl_singleton
    · simp only [h, ↓reduceIte, isOpen_univ, U]
  let f := LFunction (fun k ↦ stdAddChar (j * k))
  let g := expZeta (toAddCircle j)
  have hU {u} : u ∈ U ↔ u ≠ 1 ∨ j ≠ 0 := by simp only [mem_ite_univ_right, U]; tauto
  -- hypotheses for uniqueness of analytic continuation
  have hf : AnalyticOnNhd ℂ f U := by
    refine DifferentiableOn.analyticOnNhd (fun u hu ↦ ?_) hUo
    refine (differentiableAt_LFunction _ _ ((hU.mp hu).imp_right fun h ↦ ?_)).differentiableWithinAt
    simp only [mul_comm j, AddChar.sum_mulShift _ (isPrimitive_stdAddChar _), h,
      ↓reduceIte, CharP.cast_eq_zero]
  have hg : AnalyticOnNhd ℂ g U := by
    refine DifferentiableOn.analyticOnNhd (fun u hu ↦ ?_) hUo
    refine (differentiableAt_expZeta _ _ ((hU.mp hu).imp_right fun h ↦ ?_)).differentiableWithinAt
    rwa [ne_eq, toAddCircle_eq_zero]
  have hUc : IsPreconnected U := by
    by_cases h : j = 0
    · simpa only [h, ↓reduceIte, U] using!
        (isConnected_compl_singleton_of_one_lt_rank (by simp) _).isPreconnected
    · simpa only [h, ↓reduceIte, U] using isPreconnected_univ
  have hV : V ∈ 𝓝 2 := (continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds (by simp)
  have hUmem : 2 ∈ U := by simp [U]
  have hUmem' : s ∈ U := hU.mpr hjs.symm
  -- apply uniqueness result
  refine hf.eqOn_of_preconnected_of_eventuallyEq hg hUc hUmem ?_ hUmem'
  -- now remains to prove equality on `1 < re s`
  filter_upwards [hV] with z using LFunction_stdAddChar_eq_expZeta_of_one_lt_re _

/-- Explicit formula for the L-function of `𝓕 Φ`, where `𝓕` is the discrete Fourier transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZMod/Variant1f9947deec2bf48b4d8ffaaa3fa365f513b3634000999b57997d5534786ebda6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZMod/Variant1f9947deec2bf48b4d8ffaaa3fa365f513b3634000999b57997d5534786ebda6.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06c7cd326b587933ac3e0f4d6908e508aec2505e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
