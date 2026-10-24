# KernelFork.IsLimit.isZero_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d40f19e7-33c7-5dc4-6b84-6f04aeae6c4d",
  "kind": "lemma",
  "lexical_name": "KernelFork.IsLimit.isZero_of_mono",
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
  "slug": "kernelfork-islimit-iszero-of-mono--bef9a23445d5cfed6a565dcf",
  "source": {
    "blob": "9b4ec68a0c0da22eab44424ebb5b5468d8d73b60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 234,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta28dc6f0be93640c91c58ba13a83d7f926866c6ae635660565b2d3c61dc9a7d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bef9a23445d5cfed6a565dcfbac96fa5c9aab554b47f71c07491d4cb711d6448",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta28dc6f0be93640c91c58ba13a83d7f926866c6ae635660565b2d3c61dc9a7d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d40f19e7-33c7-5dc4-6b84-6f04aeae6c4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma KernelFork.IsLimit.isZero_of_mono {X Y : C} {f : X ⟶ Y}
    {c : KernelFork f} (hc : IsLimit c) [Mono f] : IsZero c.pt := by
  have := Fork.IsLimit.mono hc
  rw [IsZero.iff_id_eq_zero, ← cancel_mono c.ι, ← cancel_mono f, Category.assoc,
    Category.assoc, c.condition, comp_zero, zero_comp]

end

namespace KernelFork

variable {f} {X' Y' : C} {f' : X' ⟶ Y'}

/-- The morphism between points of kernel forks induced by a morphism
in the category of arrows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta28dc6f0be93640c91c58ba13a83d7f926866c6ae635660565b2d3c61dc9a7d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta28dc6f0be93640c91c58ba13a83d7f926866c6ae635660565b2d3c61dc9a7d0.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b4ec68a0c0da22eab44424ebb5b5468d8d73b60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
