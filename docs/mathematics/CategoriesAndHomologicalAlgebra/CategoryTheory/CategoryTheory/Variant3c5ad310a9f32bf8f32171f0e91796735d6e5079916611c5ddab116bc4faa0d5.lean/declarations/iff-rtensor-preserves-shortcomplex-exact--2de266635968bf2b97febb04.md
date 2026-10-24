# iff_rTensor_preserves_shortComplex_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c424fc0f-50d6-d70e-4e71-5f687fd53fbc",
  "kind": "lemma",
  "lexical_name": "iff_rTensor_preserves_shortComplex_exact",
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
  "slug": "iff-rtensor-preserves-shortcomplex-exact--2de266635968bf2b97febb04",
  "source": {
    "blob": "acadd1e5e52dc3ad62330e584ce8d58aa20a5a20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2de266635968bf2b97febb04ca484779e12d7c38163a416bed0d55c43b539ed1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c424fc0f-50d6-d70e-4e71-5f687fd53fbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_rTensor_preserves_shortComplex_exact :
    Flat R M ↔
    ∀ (C : ShortComplex <| ModuleCat R) (_ : C.Exact), (C.map (tensorRight M) |>.Exact) :=
  ⟨fun _ _ ↦ rTensor_shortComplex_exact _ _, fun H ↦ iff_rTensor_exact.2
    fun _ _ _ _ _ _ _ _ _ f g h ↦
      moduleCat_exact_iff_function_exact _ |>.1 <|
      H (.mk (ModuleCat.ofHom f) (ModuleCat.ofHom g)
        (ModuleCat.hom_ext (DFunLike.ext _ _ h.apply_apply_eq_zero)))
          (moduleCat_exact_iff_function_exact _ |>.2 h)⟩

end Module.Flat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acadd1e5e52dc3ad62330e584ce8d58aa20a5a20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
