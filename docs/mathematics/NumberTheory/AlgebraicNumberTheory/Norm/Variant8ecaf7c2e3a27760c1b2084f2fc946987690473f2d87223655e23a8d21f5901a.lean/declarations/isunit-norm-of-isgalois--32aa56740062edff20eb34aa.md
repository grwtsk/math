# isUnit_norm_of_isGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a047d068-1eca-4600-b2cc-420c2aaad6ae",
  "kind": "theorem",
  "lexical_name": "isUnit_norm_of_isGalois",
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
  "slug": "isunit-norm-of-isgalois--32aa56740062edff20eb34aa",
  "source": {
    "blob": "fc7acfb7bbf33dbc728135d8c265804131b87c3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32aa56740062edff20eb34aa597c76a0bb0c097de5e5f83e52ac56a0ab116a96",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a047d068-1eca-4600-b2cc-420c2aaad6ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_norm_of_isGalois [IsGalois K L] {x : 𝓞 L} : IsUnit (norm K x) ↔ IsUnit x := by
  classical
  refine' ⟨fun hx => _, IsUnit.map _⟩
  replace hx : IsUnit (algebraMap (𝓞 K) (𝓞 L) <| norm K x) := hx.map (algebraMap (𝓞 K) <| 𝓞 L)
  refine' @isUnit_of_mul_isUnit_right (𝓞 L) _
    ⟨(univ \ {AlgEquiv.refl}).prod fun σ : L ≃ₐ[K] L => σ x,
      prod_mem fun σ _ => map_isIntegral (σ : L →+* L).toIntAlgHom x.2⟩ _ _
  convert hx using 1
  ext
  push_cast
  convert_to ((univ \ {AlgEquiv.refl}).prod fun σ : L ≃ₐ[K] L => σ x) *
    ∏ σ : L ≃ₐ[K] L in {AlgEquiv.refl}, σ (x : L) = _
  · rw [prod_singleton, AlgEquiv.coe_refl, _root_.id]
  · rw [prod_sdiff <| subset_univ _, ← norm_eq_prod_automorphisms, coe_algebraMap_norm]
#align ring_of_integers.is_unit_norm_of_is_galois RingOfIntegers.isUnit_norm_of_isGalois

/-- If `L/K` is a finite Galois extension of fields, then, for all `(x : 𝓞 L)` we have that
`x ∣ algebraMap (𝓞 K) (𝓞 L) (norm K x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc7acfb7bbf33dbc728135d8c265804131b87c3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
