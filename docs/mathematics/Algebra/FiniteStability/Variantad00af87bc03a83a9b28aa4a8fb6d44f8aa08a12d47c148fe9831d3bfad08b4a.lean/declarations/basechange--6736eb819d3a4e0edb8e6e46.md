# baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7592fbb9903c40d46dc3305386ee34f11d86b17321c404da8d0f8b0048ad82e2",
  "kind": "instance",
  "lexical_name": "baseChange",
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
  "slug": "basechange--6736eb819d3a4e0edb8e6e46",
  "source": {
    "blob": "2381d76c2c06d4fc4946f5ada6a786fc3e463426",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 59,
    "path": "GRWTSK/Algebra/FiniteStability/Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6736eb819d3a4e0edb8e6e462751ab88f9e68ec8b6e86983586894c42a6e5ee9",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteStability/Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7592fbb9903c40d46dc3305386ee34f11d86b17321c404da8d0f8b0048ad82e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance baseChange [FinitePresentation R A] : FinitePresentation B (B ⊗[R] A) := by
  obtain ⟨n, f, hsurj, hfg⟩ := ‹FinitePresentation R A›
  let g : B ⊗[R] MvPolynomial (Fin n) R →ₐ[B] B ⊗[R] A :=
    Algebra.TensorProduct.map (AlgHom.id B B) f
  have hgsurj : Function.Surjective g := Algebra.FiniteType.baseChangeAux_surj B hsurj
  have hker_eq : RingHom.ker g = Ideal.map Algebra.TensorProduct.includeRight (RingHom.ker f) :=
    Algebra.TensorProduct.lTensor_ker f hsurj
  have hfgg : Ideal.FG (RingHom.ker g) := by
    rw [hker_eq]
    exact Ideal.FG.map hfg _
  let g' : MvPolynomial (Fin n) B →ₐ[B] B ⊗[R] A :=
    AlgHom.comp g (MvPolynomial.algebraTensorAlgEquiv R B).symm.toAlgHom
  refine ⟨n, g', ?_, Ideal.fg_ker_comp _ _ ?_ hfgg ?_⟩
  · simp_all [g, g']
  · show Ideal.FG (RingHom.ker (AlgEquiv.symm (MvPolynomial.algebraTensorAlgEquiv R B)))
    simp only [RingHom.ker_equiv]
    exact Submodule.fg_bot
  · simpa using EquivLike.surjective _

end FinitePresentation

end Algebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteStability/Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteStability/Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2381d76c2c06d4fc4946f5ada6a786fc3e463426` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
