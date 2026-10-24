# pullback₃.hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42ea8848-4252-f27e-90f0-020429d7a51a",
  "kind": "lemma",
  "lexical_name": "pullback₃.hom_ext",
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
  "slug": "pullback-hom-ext--c4c58b76578629200450be4c",
  "source": {
    "blob": "cc4f6e3f318a62359e36fbfaecb6e48a2e54780b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 554,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4c58b76578629200450be4cb7b5d60cb15dd77e0cb06af031940dfe2240ba12",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42ea8848-4252-f27e-90f0-020429d7a51a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullback₃.hom_ext [Faithful F] {Z : C} {φ φ' : Z ⟶ pullback₃ hf₁ f₂ f₃}
    (h₁ : φ ≫ pullback₃.p₁ hf₁ f₂ f₃ = φ' ≫ pullback₃.p₁ hf₁ f₂ f₃)
    (h₂ : φ ≫ pullback₃.p₂ hf₁ f₂ f₃ = φ' ≫ pullback₃.p₂ hf₁ f₂ f₃)
    (h₃ : φ ≫ pullback₃.p₃ hf₁ f₂ f₃ = φ' ≫ pullback₃.p₃ hf₁ f₂ f₃) : φ = φ' := by
  apply pullback.hom_ext <;> ext <;> simpa

end Pullbacks₃

end Functor.relativelyRepresentable

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc4f6e3f318a62359e36fbfaecb6e48a2e54780b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
