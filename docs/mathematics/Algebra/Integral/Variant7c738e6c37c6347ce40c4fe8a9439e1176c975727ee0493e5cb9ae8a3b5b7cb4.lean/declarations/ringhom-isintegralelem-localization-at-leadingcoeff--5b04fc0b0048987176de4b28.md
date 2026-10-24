# RingHom.isIntegralElem_localization_at_leadingCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1db7410022c05a5b2008f5dcb351677e0954944f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6703d84e-124c-6b65-7580-f66e93c1912e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:045d5075-3ac1-8367-737c-aaf66ef4bcca",
  "kind": "theorem",
  "lexical_name": "RingHom.isIntegralElem_localization_at_leadingCoeff",
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
  "slug": "ringhom-isintegralelem-localization-at-leadingcoeff--5b04fc0b0048987176de4b28",
  "source": {
    "blob": "1db7410022c05a5b2008f5dcb351677e0954944f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 173,
    "path": "GRWTSK/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b04fc0b0048987176de4b28815ba008e8afe62e689df3a781792d37f5bb14d9",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:045d5075-3ac1-8367-737c-aaf66ef4bcca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RingHom.isIntegralElem_localization_at_leadingCoeff {R S : Type*} [CommSemiring R]
    [CommSemiring S] (f : R →+* S) (x : S) (p : R[X]) (hf : p.eval₂ f x = 0) (M : Submonoid R)
    (hM : p.leadingCoeff ∈ M) {Rₘ Sₘ : Type*} [CommRing Rₘ] [CommRing Sₘ] [Algebra R Rₘ]
    [IsLocalization M Rₘ] [Algebra S Sₘ] [IsLocalization (M.map f : Submonoid S) Sₘ] :
    (map Sₘ f M.le_comap_map : Rₘ →+* _).IsIntegralElem (algebraMap S Sₘ x) := by
  by_cases triv : (1 : Rₘ) = 0
  · exact ⟨0, ⟨_root_.trans leadingCoeff_zero triv.symm, eval₂_zero _ _⟩⟩
  haveI : Nontrivial Rₘ := nontrivial_of_ne 1 0 triv
  obtain ⟨b, hb⟩ := isUnit_iff_exists_inv.mp (map_units Rₘ ⟨p.leadingCoeff, hM⟩)
  refine ⟨p.map (algebraMap R Rₘ) * C b, ⟨?_, ?_⟩⟩
  · refine monic_mul_C_of_leadingCoeff_mul_eq_one ?_
    rwa [leadingCoeff_map_of_leadingCoeff_ne_zero (algebraMap R Rₘ)]
    refine fun hfp => zero_ne_one
      (_root_.trans (zero_mul b).symm (hfp ▸ hb) : (0 : Rₘ) = 1)
  · refine eval₂_mul_eq_zero_of_left _ _ _ ?_
    rw [eval₂_map, IsLocalization.map_comp, ← hom_eval₂ _ f (algebraMap S Sₘ) x]
    exact _root_.trans (congr_arg (algebraMap S Sₘ) hf) (RingHom.map_zero _)

/-- Given a particular witness to an element being algebraic over an algebra `R → S`,
We can localize to a submonoid containing the leading coefficient to make it integral.
Explicitly, the map between the localizations will be an integral ring morphism -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant7c738e6c37c6347ce40c4fe8a9439e1176c975727ee0493e5cb9ae8a3b5b7cb4.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db7410022c05a5b2008f5dcb351677e0954944f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
