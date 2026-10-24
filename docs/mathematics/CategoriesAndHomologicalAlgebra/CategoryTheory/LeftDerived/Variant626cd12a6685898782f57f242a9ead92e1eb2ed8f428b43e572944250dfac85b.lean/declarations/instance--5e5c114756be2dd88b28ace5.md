# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54acbc6153d2c67a5efa11f1bfe8fc480f60e6a02b550e3acf6ea95368d8772d",
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
  "slug": "instance--5e5c114756be2dd88b28ace5",
  "source": {
    "blob": "f358ce3a309f2db4b45ecbf2ff5096b8b9f9eff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant626cd12a6685898782f57f242a9ead92e1eb2ed8f428b43e572944250dfac85b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e5c114756be2dd88b28ace59e5224157a6d75f54929543f7d25676c183a1c68",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant626cd12a6685898782f57f242a9ead92e1eb2ed8f428b43e572944250dfac85b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54acbc6153d2c67a5efa11f1bfe8fc480f60e6a02b550e3acf6ea95368d8772d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (F.totalLeftDerived L W).IsLeftDerivedFunctor
    (F.totalLeftDerivedCounit L W) W where
  isRightKanExtension := by
    dsimp [totalLeftDerived, totalLeftDerivedCounit]
    infer_instance

end

end Functor

namespace LocalizerMorphism

variable {C₁ C₂ H₁ H₂ D : Type*} [Category* C₁] [Category* C₂] [Category* D]
  [Category* H₁] [Category* H₂] {W₁ : MorphismProperty C₁} {W₂ : MorphismProperty C₂}
  (Φ : LocalizerMorphism W₁ W₂) [Φ.IsLocalizedEquivalence] [Φ.functor.IsEquivalence]

open CategoryTheory.Functor in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant626cd12a6685898782f57f242a9ead92e1eb2ed8f428b43e572944250dfac85b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant626cd12a6685898782f57f242a9ead92e1eb2ed8f428b43e572944250dfac85b.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f358ce3a309f2db4b45ecbf2ff5096b8b9f9eff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
