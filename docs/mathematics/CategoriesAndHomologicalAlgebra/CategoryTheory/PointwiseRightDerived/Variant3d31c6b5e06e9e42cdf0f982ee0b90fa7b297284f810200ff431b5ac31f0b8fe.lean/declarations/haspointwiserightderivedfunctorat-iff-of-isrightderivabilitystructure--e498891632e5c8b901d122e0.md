# hasPointwiseRightDerivedFunctorAt_iff_of_isRightDerivabilityStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99811450-3bde-d53a-2919-43c8cd4999db",
  "kind": "lemma",
  "lexical_name": "hasPointwiseRightDerivedFunctorAt_iff_of_isRightDerivabilityStructure",
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
  "slug": "haspointwiserightderivedfunctorat-iff-of-isrightderivabilitystructure--e498891632e5c8b901d122e0",
  "source": {
    "blob": "7fe42ac8e15ae905adddaf9746bf6d3e83ef9649",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant3d31c6b5e06e9e42cdf0f982ee0b90fa7b297284f810200ff431b5ac31f0b8fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e498891632e5c8b901d122e038fc43d5012294dc89ed5ddf798686b0dd975238",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant3d31c6b5e06e9e42cdf0f982ee0b90fa7b297284f810200ff431b5ac31f0b8fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99811450-3bde-d53a-2919-43c8cd4999db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasPointwiseRightDerivedFunctorAt_iff_of_isRightDerivabilityStructure (X : C₁) :
    (Φ.functor ⋙ F).HasPointwiseRightDerivedFunctorAt W₁ X ↔
      F.HasPointwiseRightDerivedFunctorAt W₂ (Φ.functor.obj X) := by
  let e : W₂.Q.obj _ ≅ (Φ.localizedFunctor W₁.Q W₂.Q).obj _ := ((Φ.catCommSq W₁.Q W₂.Q).iso).app X
  rw [F.hasPointwiseRightDerivedFunctorAt_iff W₂.Q W₂ (Φ.functor.obj X),
    (Φ.functor ⋙ F).hasPointwiseRightDerivedFunctorAt_iff W₁.Q W₁ X,
    TwoSquare.hasPointwiseLeftKanExtensionAt_iff ((Φ.catCommSq W₁.Q W₂.Q).iso).hom,
    Functor.hasPointwiseLeftKanExtensionAt_iff_of_iso W₂.Q F e]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant3d31c6b5e06e9e42cdf0f982ee0b90fa7b297284f810200ff431b5ac31f0b8fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant3d31c6b5e06e9e42cdf0f982ee0b90fa7b297284f810200ff431b5ac31f0b8fe.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fe42ac8e15ae905adddaf9746bf6d3e83ef9649` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
