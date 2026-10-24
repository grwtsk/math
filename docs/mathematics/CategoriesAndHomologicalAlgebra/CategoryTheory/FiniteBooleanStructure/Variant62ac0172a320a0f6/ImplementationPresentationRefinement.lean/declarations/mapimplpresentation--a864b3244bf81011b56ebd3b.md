# mapImplPresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7664fb75b7fd7b835e8db0cebeb850db907e4ac4f4810ccef6994d8c8664e77c",
  "kind": "def",
  "lexical_name": "mapImplPresentation",
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
  "slug": "mapimplpresentation--a864b3244bf81011b56ebd3b",
  "source": {
    "blob": "67d1ec754241d09199089cf59b795584a5399efa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteBooleanStructure/Variant62ac0172a320a0f6/ImplementationPresentationRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a864b3244bf81011b56ebd3b802dd5e7b1a4b8ca0befa1ee3ec00b6f159f08b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteBooleanStructure/Variant62ac0172a320a0f6/ImplementationPresentationRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7664fb75b7fd7b835e8db0cebeb850db907e4ac4f4810ccef6994d8c8664e77c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapImplPresentation (m n : Nat) : DAF.Fabric.Presentation where
  system := BitMatrix.Adapters.mapImplSystem m n
  invariant := fun _ => True
  invariant_step := by intros; trivial
  name := `BitMatrix.MapImplementation
  version := ⟨0, 1, 0⟩

/-- The adapter's executable implementation is exactly the existing refinement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteBooleanStructure/Variant62ac0172a320a0f6/ImplementationPresentationRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteBooleanStructure/Variant62ac0172a320a0f6/ImplementationPresentationRefinement.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67d1ec754241d09199089cf59b795584a5399efa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
