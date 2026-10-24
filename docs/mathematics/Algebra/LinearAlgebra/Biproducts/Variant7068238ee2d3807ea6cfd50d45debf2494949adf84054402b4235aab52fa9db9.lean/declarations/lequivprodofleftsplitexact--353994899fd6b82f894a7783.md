# lequivProdOfLeftSplitExact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ca3947a3b25e17395865c1d332f32a5cd3996320ac7c39b1dfdef855d70c4fb",
  "kind": "def",
  "lexical_name": "lequivProdOfLeftSplitExact",
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
  "slug": "lequivprodofleftsplitexact--353994899fd6b82f894a7783",
  "source": {
    "blob": "8c114a23ecb5ed7db409c8a0aff5ab95e7eff5ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 203,
    "path": "GRWTSK/Algebra/LinearAlgebra/Biproducts/Variant7068238ee2d3807ea6cfd50d45debf2494949adf84054402b4235aab52fa9db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:353994899fd6b82f894a778331d71eef38b0527cd1065f0b1ee181e992b1e50f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Biproducts/Variant7068238ee2d3807ea6cfd50d45debf2494949adf84054402b4235aab52fa9db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ca3947a3b25e17395865c1d332f32a5cd3996320ac7c39b1dfdef855d70c4fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def lequivProdOfLeftSplitExact {f : M →ₗ[R] A} (hg : Function.Surjective g)
    (exac : LinearMap.range j = LinearMap.ker g) (h : f.comp j = LinearMap.id) : (A × B) ≃ₗ[R] M :=
  have := lequivProdOfLeftSplitExact'
    (A := ULift.{max uA uM uB} A) (M := ULift.{max uA uM uB} M) (B := ULift.{max uA uM uB} B)
    (f := ULift.moduleEquiv.symm.toLinearMap ∘ₗ f ∘ₗ ULift.moduleEquiv.toLinearMap)
    (j := ULift.moduleEquiv.symm.toLinearMap ∘ₗ j ∘ₗ ULift.moduleEquiv.toLinearMap)
    (g := ULift.moduleEquiv.symm.toLinearMap ∘ₗ g ∘ₗ ULift.moduleEquiv.toLinearMap)
    (by simpa using hg)
    (by simp [LinearMap.range_comp, LinearMap.ker_comp, exac, Submodule.comap_equiv_eq_map_symm])
    (by ext x; simpa using congr($h x.down))
  ULift.moduleEquiv.symm.prodCongr ULift.moduleEquiv.symm ≪≫ₗ this ≪≫ₗ ULift.moduleEquiv

end universe_polymorphic

end SplitExact
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Biproducts/Variant7068238ee2d3807ea6cfd50d45debf2494949adf84054402b4235aab52fa9db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Biproducts/Variant7068238ee2d3807ea6cfd50d45debf2494949adf84054402b4235aab52fa9db9.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c114a23ecb5ed7db409c8a0aff5ab95e7eff5ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
