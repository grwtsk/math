# KernelFork.IsLimit.ofι'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c117ce054c2a66fc36f3fe7b57b7f6c4934b588e00ed6175ea446a6786a636b",
  "kind": "def",
  "lexical_name": "KernelFork.IsLimit.ofι'",
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
  "slug": "kernelfork-islimit-of--72c5950ed6c04ff24b2d6d68",
  "source": {
    "blob": "9b4ec68a0c0da22eab44424ebb5b5468d8d73b60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta28dc6f0be93640c91c58ba13a83d7f926866c6ae635660565b2d3c61dc9a7d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72c5950ed6c04ff24b2d6d68244eabe02c7b872a9957ae0b72f4a56bab549f1e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta28dc6f0be93640c91c58ba13a83d7f926866c6ae635660565b2d3c61dc9a7d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c117ce054c2a66fc36f3fe7b57b7f6c4934b588e00ed6175ea446a6786a636b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def KernelFork.IsLimit.ofι' {X Y K : C} {f : X ⟶ Y} (i : K ⟶ X) (w : i ≫ f = 0)
    (h : ∀ {A : C} (k : A ⟶ X) (_ : k ≫ f = 0), { l : A ⟶ K // l ≫ i = k}) [hi : Mono i] :
    IsLimit (KernelFork.ofι i w) :=
  ofι _ _ (fun {_} k hk => (h k hk).1) (fun {_} k hk => (h k hk).2) (fun {A} k hk m hm => by
    rw [← cancel_mono i, (h k hk).2, hm])

/-- Every kernel of `f` induces a kernel of `f ≫ g` if `g` is mono. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta28dc6f0be93640c91c58ba13a83d7f926866c6ae635660565b2d3c61dc9a7d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta28dc6f0be93640c91c58ba13a83d7f926866c6ae635660565b2d3c61dc9a7d0.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b4ec68a0c0da22eab44424ebb5b5468d8d73b60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
