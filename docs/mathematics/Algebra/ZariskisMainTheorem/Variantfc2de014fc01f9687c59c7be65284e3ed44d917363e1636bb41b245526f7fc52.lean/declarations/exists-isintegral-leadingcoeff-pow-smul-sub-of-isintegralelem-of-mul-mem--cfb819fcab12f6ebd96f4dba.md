# exists_isIntegral_leadingCoeff_pow_smul_sub_of_isIntegralElem_of_mul_mem_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04c80bdf-af07-68ee-124d-ae5a12168846",
  "kind": "lemma",
  "lexical_name": "exists_isIntegral_leadingCoeff_pow_smul_sub_of_isIntegralElem_of_mul_mem_range",
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
  "slug": "exists-isintegral-leadingcoeff-pow-smul-sub-of-isintegralelem-of-mul-mem--cfb819fcab12f6ebd96f4dba",
  "source": {
    "blob": "a3f1e7dee44739a43e1e47c0de40ea175ad71eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 199,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfb819fcab12f6ebd96f4dba1e588d6cf9ddb6f10fcc5eea6585e67099581527",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04c80bdf-af07-68ee-124d-ae5a12168846`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isIntegral_leadingCoeff_pow_smul_sub_of_isIntegralElem_of_mul_mem_range
    (ht : φ.IsIntegralElem t) (hp : φ p * t ∈ φ.range) :
    ∃ q n, IsIntegral R (p.leadingCoeff ^ n • t - φ q) := by
  set a := p.leadingCoeff
  let R' := Localization.Away a
  let S' := Localization.Away (algebraMap R S a)
  let : Algebra R' S' := (Localization.awayMap (algebraMap R S) a).toAlgebra
  have : IsScalarTower R R' S' := .of_algebraMap_eq (by
    simp +zetaDelta [RingHom.algebraMap_toAlgebra, IsLocalization.Away.map, ← algebraMap_apply R S])
  have ha : IsUnit (algebraMap R R' a) := IsLocalization.Away.algebraMap_isUnit a
  have H : (aeval ((algebraMap S S') (φ X))).toRingHom.comp (mapRingHom (algebraMap R R')) =
    (algebraMap S S').comp φ := by ext <;>
      simp [-Polynomial.algebraMap_apply, ← Polynomial.algebraMap_eq, ← algebraMap_apply]
  obtain ⟨q, hq⟩ := exists_isIntegral_sub_of_isIntegralElem_of_mul_mem_range (R := R')
    (aeval (algebraMap S S' (φ X))) (algebraMap S S' t) (C ha.unit⁻¹.1 * p.map (algebraMap _ _)) (by
      obtain ⟨q, hqm, hq⟩ := ht
      refine ⟨q.map (mapRingHom (algebraMap _ _)), hqm.map _, ?_⟩
      rw [eval₂_map, H, ← hom_eval₂, ← AlgHom.toRingHom_eq_coe, hq, map_zero]) (by
      nontriviality R'
      simp [Monic, leadingCoeff_C_mul_of_isUnit,
        leadingCoeff_map_of_leadingCoeff_ne_zero _ ha.ne_zero, a]) (by
      obtain ⟨r, hr : φ r = _⟩ := hp
      use C ha.unit⁻¹.1 * mapRingHom (algebraMap R R') r
      simp [aeval_algebraMap_apply, aeval_algHom_apply, hr, mul_assoc])
  obtain ⟨_, ⟨n, rfl⟩, e⟩ := IsLocalization.integerNormalization_spec (.powers a) q
  generalize IsLocalization.integerNormalization (.powers a) q = q' at e
  have : IsIntegral R' ((algebraMap S S') (a ^ n • t - φ q')) := by
    have : algebraMap S S' (φ q') = (algebraMap R S' a) ^ n * aeval (algebraMap S S' (φ X)) q := by
      simpa [Algebra.smul_def, aeval_algebraMap_apply, aeval_algHom_apply, ← algebraMap_apply] using
        congr(aeval (algebraMap S S' (φ X)) $e)
    simpa [Algebra.smul_def, ← mul_sub, ← algebraMap_apply, this] using
      (isIntegral_algebraMap (A := S') (x := algebraMap R R' a ^ n)).mul hq
  obtain ⟨⟨_, m, rfl⟩, hm⟩ := this.exists_multiple_integral_of_isLocalization (.powers a) _
  simp only [Algebra.smul_def, Submonoid.smul_def, algebraMap_apply R S S', ← map_mul] at hm
  obtain ⟨_, ⟨k, rfl⟩, hk⟩ := IsLocalization.exists_isIntegral_smul_of_isIntegral_map (.powers a) hm
  refine ⟨C a ^ (k + m) * q', k + m + n, ?_⟩
  convert! hk using 1
  simp only [Algebra.smul_def, map_pow, ← Polynomial.algebraMap_eq, map_mul, AlgHom.commutes]
  ring

@[stacks 00PX]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f1e7dee44739a43e1e47c0de40ea175ad71eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
