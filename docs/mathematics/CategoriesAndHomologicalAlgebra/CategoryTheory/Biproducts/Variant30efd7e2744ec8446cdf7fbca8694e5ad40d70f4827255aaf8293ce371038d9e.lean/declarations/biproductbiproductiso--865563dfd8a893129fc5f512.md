# biproductBiproductIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5355c7fcbd0576ba5d59549281c096ecef0c8d6ed52e07e2171e8ef16e84c43",
  "kind": "def",
  "lexical_name": "biproductBiproductIso",
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
  "slug": "biproductbiproductiso--865563dfd8a893129fc5f512",
  "source": {
    "blob": "1ff216a06b1657299522dda1f7d92b28b2fa4ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 669,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:865563dfd8a893129fc5f512de6eeca2ae330f47f9c3bd93dc77b452cc7f1e8f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5355c7fcbd0576ba5d59549281c096ecef0c8d6ed52e07e2171e8ef16e84c43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def biproductBiproductIso (f : ι → Type*) (g : (i : ι) → (f i) → C)
    [∀ i, HasBiproduct (g i)] [HasBiproduct fun i => ⨁ g i] :
    (⨁ fun i => ⨁ g i) ≅ (⨁ fun p : Σ i, f i => g p.1 p.2) where
  hom := biproduct.lift fun ⟨i, x⟩ => biproduct.π _ i ≫ biproduct.π _ x
  inv := biproduct.lift fun i => biproduct.lift fun x => biproduct.π _ (⟨i, x⟩ : Σ i, f i)

section πKernel

section

variable (f : J → C) [HasBiproduct f]

variable (p : J → Prop) [HasBiproduct (Subtype.restrict p f)]

/-- The canonical morphism from the biproduct over a restricted index type to the biproduct of
the full index type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ff216a06b1657299522dda1f7d92b28b2fa4ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
