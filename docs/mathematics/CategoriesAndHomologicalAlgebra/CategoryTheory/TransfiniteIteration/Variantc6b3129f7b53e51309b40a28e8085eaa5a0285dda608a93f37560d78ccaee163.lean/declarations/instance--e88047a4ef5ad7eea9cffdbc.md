# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8093f254ce957d9c05daddf4827959b03df271fdeba0c02e4c4b90082d5a808c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e88047a4ef5ad7eea9cffdbc",
  "source": {
    "blob": "ead09d34aad48e43e79cc224c2a997f328a4ee90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e88047a4ef5ad7eea9cffdbc9fd131da3c7eb01db4538d92ac53e2a93a6c5239",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8093f254ce957d9c05daddf4827959b03df271fdeba0c02e4c4b90082d5a808c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (Φ.iterationFunctor J).IsWellOrderContinuous where
  nonempty_isColimit i hi := ⟨by
    let e : (Set.principalSegIio i).monotone.functor ⋙
      (Φ.iterationFunctor J) ≅ restrictionLT (Φ.iter i).F (by simp) :=
      NatIso.ofComponents (fun _ ↦ eqToIso (Φ.iterationFunctor_obj _ _ _)) (by
        rintro ⟨k₁, h₁⟩ ⟨k₂, h₂⟩ f
        apply Arrow.mk_injective
        simpa using Φ.arrowMk_iterationFunctor_map k₁ k₂ (leOfHom f) (Φ.iter i) h₂.le)
    refine (IsColimit.precomposeInvEquiv e _).1 ?_
    refine IsColimit.ofIsoColimit ((Φ.iter i).isColimit i hi (by simp)) ?_
    refine Cocones.ext (eqToIso (Φ.iterationFunctor_obj i (Φ.iter i) (by simp)).symm) ?_
    rintro ⟨k, hk⟩
    apply Arrow.mk_injective
    simp [Φ.arrowMk_iterationFunctor_map k i hk.le (Φ.iter i) (by simp), e]⟩

/-- The isomorphism `(Φ.iterationFunctor J).obj ⊥ ≅ Φ.X₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ead09d34aad48e43e79cc224c2a997f328a4ee90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
