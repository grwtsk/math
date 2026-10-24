# isLeftDerivabilityStructure_iff_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c3d739b-02de-740c-4a8e-0c651c70cfc0",
  "kind": "lemma",
  "lexical_name": "isLeftDerivabilityStructure_iff_op",
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
  "slug": "isleftderivabilitystructure-iff-op--b4c3cbe4a71dd118f05491ce",
  "source": {
    "blob": "8d7b9fdd4a6deb6c2d5fc2762a5fc7630f1e83b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4c3cbe4a71dd118f05491cef3496fe0ac84a6603dfd160f2679e749f06a652e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c3d739b-02de-740c-4a8e-0c651c70cfc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLeftDerivabilityStructure_iff_op :
    Φ.IsLeftDerivabilityStructure ↔
      Φ.op.IsRightDerivabilityStructure := by
  let F := Φ.localizedFunctor W₁.Q W₂.Q
  let e : Φ.functor ⋙ W₂.Q ≅ W₁.Q ⋙ F := (Φ.catCommSq W₁.Q W₂.Q).iso
  let e' : Φ.functor.op ⋙ W₂.Q.op ≅ W₁.Q.op ⋙ F.op := NatIso.op e.symm
  have eq : TwoSquare.GuitartExact e'.hom ↔ TwoSquare.GuitartExact e.inv :=
    TwoSquare.guitartExact_op_iff _
  constructor
  · rintro ⟨_, _⟩
    rwa [Φ.op.isRightDerivabilityStructure_iff _ _ _ e', eq]
  · intro
    have : Φ.HasLeftResolutions := by
      rw [hasLeftResolutions_iff_op]
      infer_instance
    refine ⟨inferInstance, ?_⟩
    rw [← eq]
    exact Φ.op.guitartExact_of_isRightDerivabilityStructure' _ _ _ e'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d7b9fdd4a6deb6c2d5fc2762a5fc7630f1e83b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
