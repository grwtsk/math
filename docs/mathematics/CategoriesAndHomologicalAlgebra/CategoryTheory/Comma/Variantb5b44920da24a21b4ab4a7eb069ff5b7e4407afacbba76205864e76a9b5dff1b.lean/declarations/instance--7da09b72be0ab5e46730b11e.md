# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fc0af1a42e9045125d780ab616a16aca4f4da0beaf21babfd58ec69492ab1fd",
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
  "slug": "instance--7da09b72be0ab5e46730b11e",
  "source": {
    "blob": "e236b1ee32fcb3a431bb977f90a0eeedbda6db35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 420,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb5b44920da24a21b4ab4a7eb069ff5b7e4407afacbba76205864e76a9b5dff1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7da09b72be0ab5e46730b11efba3c84ec50472c6d930d0eb37ae8ec57f835b89",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb5b44920da24a21b4ab4a7eb069ff5b7e4407afacbba76205864e76a9b5dff1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fc0af1a42e9045125d780ab616a16aca4f4da0beaf21babfd58ec69492ab1fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (Comma.isCardinalPresentable F₁ F₂ κ).ι.IsDense where
  isDenseAt f :=
    ⟨Comma.fstSndJointlyReflectColimit
      ((Functor.Final.isColimitWhiskerEquiv (π₁ κ f) _).2
        ((isCardinalPresentable C₁ κ).ι.denseAt f.left))
      ((Functor.Final.isColimitWhiskerEquiv (π₂ κ f) _).2
        ((isCardinalPresentable C₂ κ).ι.denseAt f.right))⟩

end isCardinalAccessibleCategory

variable [IsCardinalAccessibleCategory C₁ κ] [IsCardinalAccessibleCategory C₂ κ]
  [F₁.IsCardinalAccessible κ] [F₂.IsCardinalAccessible κ]
  [F₁.PreservesCardinalPresentable κ] [LocallySmall.{w} D]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb5b44920da24a21b4ab4a7eb069ff5b7e4407afacbba76205864e76a9b5dff1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb5b44920da24a21b4ab4a7eb069ff5b7e4407afacbba76205864e76a9b5dff1b.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e236b1ee32fcb3a431bb977f90a0eeedbda6db35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
