# normalizedFactors_ideal_map_eq_normalizedFactors_min_poly_mk_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe5ef008f9f2e170119ac8804ed601be3e50a8e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89aabc15-5973-7231-d518-77cb8572cf31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0c62fa3-b1cd-1531-b97f-ed4583a6c0e7",
  "kind": "theorem",
  "lexical_name": "normalizedFactors_ideal_map_eq_normalizedFactors_min_poly_mk_map",
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
  "slug": "normalizedfactors-ideal-map-eq-normalizedfactors-min-poly-mk-map--ef91018beb47ec4afbceb09f",
  "source": {
    "blob": "fe5ef008f9f2e170119ac8804ed601be3e50a8e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 134,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef91018beb47ec4afbceb09f281196179832cac27b99a348868f536abacaffee",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variant108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0c62fa3-b1cd-1531-b97f-ed4583a6c0e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedFactors_ideal_map_eq_normalizedFactors_min_poly_mk_map (hI : IsMaximal I)
    (hI' : I ≠ ⊥) (hx : (conductor R x).comap (algebraMap R S) ⊔ I = ⊤) (hx' : IsIntegral R x) :
    normalizedFactors (I.map (algebraMap R S)) =
      Multiset.map
        (fun f =>
          ((normalizedFactorsMapEquivNormalizedFactorsMinPolyMk hI hI' hx hx').symm f : Ideal S))
        (normalizedFactors (Polynomial.map (Ideal.Quotient.mk I) (minpoly R x))).attach := by
  ext J
  -- WLOG, assume J is a normalized factor
  by_cases hJ : J ∈ normalizedFactors (I.map (algebraMap R S))
  swap
  · rw [Multiset.count_eq_zero.mpr hJ, eq_comm, Multiset.count_eq_zero, Multiset.mem_map]
    simp only [not_exists]
    rintro J' ⟨_, rfl⟩
    exact
      hJ ((normalizedFactorsMapEquivNormalizedFactorsMinPolyMk hI hI' hx hx').symm J').prop
  -- Then we just have to compare the multiplicities, which we already proved are equal.
  have := emultiplicity_factors_map_eq_emultiplicity hI hI' hx hx' hJ
  rw [emultiplicity_eq_count_normalizedFactors, emultiplicity_eq_count_normalizedFactors,
    UniqueFactorizationMonoid.normalize_normalized_factor _ hJ,
    UniqueFactorizationMonoid.normalize_normalized_factor, Nat.cast_inj] at this
  · refine this.trans ?_
    -- Get rid of the `map` by applying the equiv to both sides.
    generalize hJ' :
      (normalizedFactorsMapEquivNormalizedFactorsMinPolyMk hI hI' hx hx') ⟨J, hJ⟩ = J'
    have : ((normalizedFactorsMapEquivNormalizedFactorsMinPolyMk hI hI' hx hx').symm J' : Ideal S) =
        J := by
      rw [← hJ', Equiv.symm_apply_apply _ _, Subtype.coe_mk]
    subst this
    -- Get rid of the `attach` by applying the subtype `coe` to both sides.
    rw [Multiset.count_map_eq_count' fun f =>
        ((normalizedFactorsMapEquivNormalizedFactorsMinPolyMk hI hI' hx hx').symm f :
          Ideal S),
      Multiset.count_attach]
    · exact Subtype.coe_injective.comp (Equiv.injective _)
  · exact (normalizedFactorsMapEquivNormalizedFactorsMinPolyMk hI hI' hx hx' _).prop
  · exact irreducible_of_normalized_factor _
        (normalizedFactorsMapEquivNormalizedFactorsMinPolyMk hI hI' hx hx' _).prop
  · exact Polynomial.map_monic_ne_zero (minpoly.monic hx')
  · exact irreducible_of_normalized_factor _ hJ
  · rwa [← bot_eq_zero, Ne,
      map_eq_bot_iff_of_injective (FaithfulSMul.algebraMap_injective R S)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe5ef008f9f2e170119ac8804ed601be3e50a8e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
