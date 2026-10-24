# SolutionSetCondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8353a7909417cacfc10d35af8e0959f3ca53d839d454dd7dc7c5ac2862db7346",
  "kind": "def",
  "lexical_name": "SolutionSetCondition",
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
  "slug": "solutionsetcondition--56248d5ddcb5cb233f6d253f",
  "source": {
    "blob": "241291890909b321243082b13b1e34a4e7f920c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56248d5ddcb5cb233f6d253f09c7da1fe07750db7b2f340f42d9167a14720e30",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8353a7909417cacfc10d35af8e0959f3ca53d839d454dd7dc7c5ac2862db7346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SolutionSetCondition {D : Type u₁} [Category.{v₁} D] (G : D ⥤ C) : Prop :=
  ∀ A : C,
    ∃ (ι : Type w) (B : ι → D) (f : ∀ i : ι, A ⟶ G.obj (B i)),
      ∀ (X) (h : A ⟶ G.obj X), ∃ (i : ι) (g : B i ⟶ X), f i ≫ G.map g = h

section GeneralAdjointFunctorTheorem

variable {D : Type u₁} [Category.{v₁} D]
variable (G : D ⥤ C)

/-- If `G : D ⥤ C` is a right adjoint it satisfies the solution set condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant4fe36986a43c35e560daf5ea5336b26d2dfad2e5aaa798377513f4e9d7e14d6b.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `241291890909b321243082b13b1e34a4e7f920c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
