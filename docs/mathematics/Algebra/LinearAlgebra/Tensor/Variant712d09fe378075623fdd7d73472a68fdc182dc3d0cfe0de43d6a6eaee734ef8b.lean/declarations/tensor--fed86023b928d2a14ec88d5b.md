# tensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e0f27901030e6ada50870d3db48ff363f615ef79974640b1019699861d45503",
  "kind": "def",
  "lexical_name": "tensor",
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
  "slug": "tensor--fed86023b928d2a14ec88d5b",
  "source": {
    "blob": "dfd33c564834db77f979edab60f5babb0d03c88a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fed86023b928d2a14ec88d5b941eb7e2f27b83f1f8dcc4d7e61c444fc4b13287",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e0f27901030e6ada50870d3db48ff363f615ef79974640b1019699861d45503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def tensor : (relations₁.tensor relations₂).Solution (M₁ ⊗[A] M₂) where
  var := fun ⟨g₁, g₂⟩ => solution₁.var g₁ ⊗ₜ solution₂.var g₂
  linearCombination_var_relation := by
    rintro (⟨r₁, g₂⟩ | ⟨g₁, r₂⟩)
    · dsimp
      rw [Finsupp.linearCombination_embDomain]
      exact (solution₁.postcomp (curry (TensorProduct.comm A M₂ M₁).toLinearMap
        (solution₂.var g₂))).linearCombination_var_relation r₁
    · dsimp
      rw [Finsupp.linearCombination_embDomain]
      exact (solution₂.postcomp (curry .id (solution₁.var g₁))).linearCombination_var_relation r₂

variable {solution₁ solution₂} (h₁ : solution₁.IsPresentation) (h₂ : solution₂.IsPresentation)

/-- The tensor product of two modules admits a presentation by generators and relations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tensor/Variant712d09fe378075623fdd7d73472a68fdc182dc3d0cfe0de43d6a6eaee734ef8b.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfd33c564834db77f979edab60f5babb0d03c88a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
