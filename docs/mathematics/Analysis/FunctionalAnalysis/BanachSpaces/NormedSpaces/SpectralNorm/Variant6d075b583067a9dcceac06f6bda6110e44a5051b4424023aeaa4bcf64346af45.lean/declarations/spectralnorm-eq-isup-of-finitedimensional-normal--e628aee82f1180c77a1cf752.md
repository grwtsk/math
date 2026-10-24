# spectralNorm_eq_iSup_of_finiteDimensional_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47afc591-2e8b-c7d2-0b71-eb23c1ff596c",
  "kind": "theorem",
  "lexical_name": "spectralNorm_eq_iSup_of_finiteDimensional_normal",
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
  "slug": "spectralnorm-eq-isup-of-finitedimensional-normal--e628aee82f1180c77a1cf752",
  "source": {
    "blob": "966cc62fcc2a5f696404037c9fc864e171e85938",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 471,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e628aee82f1180c77a1cf7520cf0148e723e39acfb743a3b10cb86cdc0470fda",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47afc591-2e8b-c7d2-0b71-eb23c1ff596c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralNorm_eq_iSup_of_finiteDimensional_normal
    {f : AlgebraNorm K L} (hf_pm : IsPowMul f) (hf_na : IsNonarchimedean f)
    (hf_ext : ∀ (x : K), f (algebraMap K L x) = ‖x‖) (x : L) :
    spectralNorm K L x = ⨆ σ : Gal(L/K), f (σ x) := by
  classical
  have hf1 : f 1 = 1 := by
    rw [← (algebraMap K L).map_one, hf_ext]
    simp
  refine le_antisymm ?_ (ciSup_le fun σ ↦
    norm_root_le_spectralValue hf_pm hf_na
      (minpoly.monic (hn.isIntegral x)) (minpoly.aeval_algHom _ σ.toAlgHom _))
  · set p := minpoly K x
    have hp_sp : Splits ((minpoly K x).map (algebraMap K L)) := hn.splits x
    obtain ⟨s, hs⟩ := splits_iff_exists_multiset.mp hp_sp
    have h_lc : (algebraMap K L) (minpoly K x).leadingCoeff = 1 := by
      rw [minpoly.monic (hn.isIntegral x), map_one]
    rw [leadingCoeff_map, h_lc, map_one, one_mul] at hs
    simp only [spectralNorm]
    rw [← max_norm_root_eq_spectralValue hf_pm hf_na hf1 _ _ hs]
    apply ciSup_le
    intro y
    split_ifs with h
    · obtain ⟨σ, hσ⟩ : ∃ σ : Gal(L/K), σ x = y := minpoly.exists_algEquiv_of_root'
        (Algebra.IsAlgebraic.isAlgebraic x) (aeval_root_of_mapAlg_eq_multiset_prod_X_sub_C s h hs)
      rw [← hσ]
      apply Finite.le_ciSup _ σ
    · exact iSup_nonneg fun σ ↦ apply_nonneg _ _

open IsUltrametricDist

/-- If `L/K` is finite and normal, then `spectralNorm K L = invariantExtension K L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966cc62fcc2a5f696404037c9fc864e171e85938` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
