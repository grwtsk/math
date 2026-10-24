# KernelFork.IsLimit.ofι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ce88d63d2f25c0a079d90a11239dbca76ba1918c899a634f45c9aca183b67bf",
  "kind": "def",
  "lexical_name": "KernelFork.IsLimit.ofι",
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
  "slug": "kernelfork-islimit-of--305005131dd6a33269ed3429",
  "source": {
    "blob": "094edfbc4fcf82652f00b5ce2ed644d55f22968b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:305005131dd6a33269ed3429f7ceb45f6bab83d63466d503e4055e5fe6bcc7af",
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

Occurrence: `declaration:0ce88d63d2f25c0a079d90a11239dbca76ba1918c899a634f45c9aca183b67bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def KernelFork.IsLimit.ofι {W : C} (g : W ⟶ X) (eq : g ≫ f = 0)
    (lift : ∀ {W' : C} (g' : W' ⟶ X) (_ : g' ≫ f = 0), W' ⟶ W)
    (fac : ∀ {W' : C} (g' : W' ⟶ X) (eq' : g' ≫ f = 0), lift g' eq' ≫ g = g')
    (uniq :
      ∀ {W' : C} (g' : W' ⟶ X) (eq' : g' ≫ f = 0) (m : W' ⟶ W) (_ : m ≫ g = g'), m = lift g' eq') :
    IsLimit (KernelFork.ofι g eq) :=
  isLimitAux _ (fun s => lift s.ι s.condition) (fun s => fac s.ι s.condition) fun s =>
    uniq s.ι s.condition

/-- This is a more convenient formulation to show that a `KernelFork` of the form
`KernelFork.ofι i _` is a limit cone when we know that `i` is a monomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `094edfbc4fcf82652f00b5ce2ed644d55f22968b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
