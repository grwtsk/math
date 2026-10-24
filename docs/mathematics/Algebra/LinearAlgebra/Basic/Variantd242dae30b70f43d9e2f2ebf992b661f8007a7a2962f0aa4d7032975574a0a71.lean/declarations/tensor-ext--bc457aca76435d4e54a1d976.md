# tensor_ext₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5427366e-a667-18e1-96bb-ddbc06760e85",
  "kind": "lemma",
  "lexical_name": "tensor_ext₃",
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
  "slug": "tensor-ext--bc457aca76435d4e54a1d976",
  "source": {
    "blob": "0c71dd8183fd26443509f8d6b17134d6d4696efd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 292,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd242dae30b70f43d9e2f2ebf992b661f8007a7a2962f0aa4d7032975574a0a71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc457aca76435d4e54a1d9762c27777300985fc95f59cf84aa1ebfbb75a04656",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd242dae30b70f43d9e2f2ebf992b661f8007a7a2962f0aa4d7032975574a0a71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5427366e-a667-18e1-96bb-ddbc06760e85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensor_ext₃ {f g : M₁ ⊗ (M₂ ⊗ M₃) ⟶ M₄}
    (h : ∀ m₁ m₂ m₃, f (m₁ ⊗ₜ (m₂ ⊗ₜ m₃)) = g (m₁ ⊗ₜ (m₂ ⊗ₜ m₃))) :
    f = g := by
  rw [← cancel_epi (α_ _ _ _).hom]
  exact tensor_ext₃' h

end MonoidalCategory

end SemimoduleCat

namespace ModuleCat

variable {R : Type u} [CommRing R]

@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd242dae30b70f43d9e2f2ebf992b661f8007a7a2962f0aa4d7032975574a0a71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd242dae30b70f43d9e2f2ebf992b661f8007a7a2962f0aa4d7032975574a0a71.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c71dd8183fd26443509f8d6b17134d6d4696efd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
