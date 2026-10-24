# normalizedFactorsMapEquivNormalizedFactorsMinPolyMk_symm_apply_eq_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1365a07-de29-16fb-e085-d0c0f811b0da",
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
  "slug": "normalizedfactorsmapequivnormalizedfactorsminpolymk-symm-apply-eq-span--e0d8cec48a86744aeb92694d",
  "source": {
    "blob": "6c0e3ddc0e3024b53b5b7668a54278d915f00827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 220,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant4d3f5ff177ba8ed84fd4eeaf18410caf8c66e2e5b8ea2781b6b1a46a4231c81e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0d8cec48a86744aeb92694dda7e4909abbbfda1513ba93e7f7f92fbb309882a",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variant4d3f5ff177ba8ed84fd4eeaf18410caf8c66e2e5b8ea2781b6b1a46a4231c81e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1365a07-de29-16fb-e085-d0c0f811b0da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–241.

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

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant4d3f5ff177ba8ed84fd4eeaf18410caf8c66e2e5b8ea2781b6b1a46a4231c81e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant4d3f5ff177ba8ed84fd4eeaf18410caf8c66e2e5b8ea2781b6b1a46a4231c81e.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c0e3ddc0e3024b53b5b7668a54278d915f00827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
