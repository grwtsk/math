# CokernelCofork.IsColimit.ofπ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a88fe4104421303e8a863872cbf7bb67f70e7c3e66365a390dd5c9c2517252b",
  "kind": "def",
  "lexical_name": "CokernelCofork.IsColimit.ofπ",
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
  "slug": "cokernelcofork-iscolimit-of--dfbff1e4f0aedd472fa79610",
  "source": {
    "blob": "094edfbc4fcf82652f00b5ce2ed644d55f22968b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 599,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfbff1e4f0aedd472fa796109409c3180bf1061068eb341df1f0866675cddde1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a88fe4104421303e8a863872cbf7bb67f70e7c3e66365a390dd5c9c2517252b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CokernelCofork.IsColimit.ofπ {Z : C} (g : Y ⟶ Z) (eq : f ≫ g = 0)
    (desc : ∀ {Z' : C} (g' : Y ⟶ Z') (_ : f ≫ g' = 0), Z ⟶ Z')
    (fac : ∀ {Z' : C} (g' : Y ⟶ Z') (eq' : f ≫ g' = 0), g ≫ desc g' eq' = g')
    (uniq :
      ∀ {Z' : C} (g' : Y ⟶ Z') (eq' : f ≫ g' = 0) (m : Z ⟶ Z') (_ : g ≫ m = g'), m = desc g' eq') :
    IsColimit (CokernelCofork.ofπ g eq) :=
  isColimitAux _ (fun s => desc s.π s.condition) (fun s => fac s.π s.condition) fun s =>
    uniq s.π s.condition

/-- This is a more convenient formulation to show that a `CokernelCofork` of the form
`CokernelCofork.ofπ p _` is a colimit cocone when we know that `p` is an epimorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `094edfbc4fcf82652f00b5ce2ed644d55f22968b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
