# KernelFork.isLimitOfIsLimitOfIff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0270851cc2108e827ef1fb5b8b484e3a4f56d987087a58620a893eb0e99de8b3",
  "kind": "def",
  "lexical_name": "KernelFork.isLimitOfIsLimitOfIff'",
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
  "slug": "kernelfork-islimitofislimitofiff--1b8191f19896332ff8ced36f",
  "source": {
    "blob": "78a328b903e3d59b187b41841d3933dfd03158b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 219,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta1ee409136589d064f66f1f14d6fd3a324bcc2736ed852177dfc85a5625bac81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b8191f19896332ff8ced36fccbfb62e02b7a22e6a1c48dee4ff57aa70135309",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta1ee409136589d064f66f1f14d6fd3a324bcc2736ed852177dfc85a5625bac81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0270851cc2108e827ef1fb5b8b484e3a4f56d987087a58620a893eb0e99de8b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def KernelFork.isLimitOfIsLimitOfIff' {X Y : C} {g : X ⟶ Y} {c : KernelFork g} (hc : IsLimit c)
    {Y' : C} (g' : X ⟶ Y')
    (iff : ∀ ⦃W : C⦄ (φ : W ⟶ X), φ ≫ g = 0 ↔ φ ≫ g' = 0) :
    IsLimit (KernelFork.ofι (f := g') c.ι (by simp [← iff])) :=
  IsLimit.ofIsoLimit (isLimitOfIsLimitOfIff hc g' (Iso.refl _) (by simpa using iff))
    (Fork.ext (Iso.refl _))

end

namespace KernelFork

variable {f} {X' Y' : C} {f' : X' ⟶ Y'}

/-- The morphism between points of kernel forks induced by a morphism
in the category of arrows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta1ee409136589d064f66f1f14d6fd3a324bcc2736ed852177dfc85a5625bac81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta1ee409136589d064f66f1f14d6fd3a324bcc2736ed852177dfc85a5625bac81.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78a328b903e3d59b187b41841d3933dfd03158b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
