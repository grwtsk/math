# normalizedFactorsMapEquivNormalizedFactorsMinPolyMk_symm_apply_eq_span

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
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2020ea92-b0db-5f55-9e87-14d9aba2bb35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7268b10-2bad-094e-80cd-ad65a2e9df68",
  "kind": "theorem",
  "lexical_name": "normalizedFactorsMapEquivNormalizedFactorsMinPolyMk_symm_apply_eq_span",
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
  "slug": "normalizedfactorsmapequivnormalizedfactorsminpolymk-symm-apply-eq-span--992dc55679425abea0b5f23b",
  "source": {
    "blob": "fe5ef008f9f2e170119ac8804ed601be3e50a8e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 212,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:992dc55679425abea0b5f23bf2c6b7837294522aa9111c95211768a0d7d774bd",
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

Occurrence: `result:d7268b10-2bad-094e-80cd-ad65a2e9df68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedFactorsMapEquivNormalizedFactorsMinPolyMk_symm_apply_eq_span
    (hI : I.IsMaximal) {Q : R[X]}
    (hQ : Q.map (Ideal.Quotient.mk I) ∈ normalizedFactors ((minpoly R x).map (Ideal.Quotient.mk I)))
    (hI' : I ≠ ⊥) (hx : (conductor R x).comap (algebraMap R S) ⊔ I = ⊤) (hx' : IsIntegral R x) :
    ((normalizedFactorsMapEquivNormalizedFactorsMinPolyMk hI hI' hx hx').symm ⟨_, hQ⟩).val =
    span (I.map (algebraMap R S) ∪ {Q.aeval x}) := by
  unfold normalizedFactorsMapEquivNormalizedFactorsMinPolyMk
    Ideal.normalizedFactorsEquivSpanNormalizedFactors
  rw [Equiv.symm_trans_apply, IsDedekindDomain.normalizedFactorsEquivOfQuotEquiv_symm]
  unfold IsDedekindDomain.normalizedFactorsEquivOfQuotEquiv
  rw [Equiv.coe_fn_mk, Equiv.symm_symm, Equiv.ofBijective_apply]
  dsimp only
  unfold IsDedekindDomain.idealFactorsEquivOfQuotEquiv
  rw [OrderIso.ofHomInv_apply]
  erw [IsDedekindDomain.idealFactorsFunOfQuotHom_coe_coe]
  dsimp only
  rw [map_span, image_singleton, map_span, image_singleton, coe_coe,
    quotMapEquivQuotQuotMap_symm_apply, span_union, span_eq, sup_comm,
    ← image_singleton, ← map_span, Ideal.comap_map_of_surjective' _ Ideal.Quotient.mk_surjective,
    Ideal.mk_ker]

end KummerDedekind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe5ef008f9f2e170119ac8804ed601be3e50a8e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
