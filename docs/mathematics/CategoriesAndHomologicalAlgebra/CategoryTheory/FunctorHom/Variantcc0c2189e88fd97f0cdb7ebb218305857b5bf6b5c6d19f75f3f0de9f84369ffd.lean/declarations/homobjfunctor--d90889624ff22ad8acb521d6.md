# homObjFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3fb2b302aaa28825dbb4818faffb1b6fe94e57a4fa87fd84016ffe3954117d4",
  "kind": "def",
  "lexical_name": "homObjFunctor",
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
  "slug": "homobjfunctor--d90889624ff22ad8acb521d6",
  "source": {
    "blob": "c40fa336208485073d6ad8fa43916c1c6b0e410b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 91,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d90889624ff22ad8acb521d67f9e780663ee902cc9fe28b1814f59d57aa9c5ab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3fb2b302aaa28825dbb4818faffb1b6fe94e57a4fa87fd84016ffe3954117d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homObjFunctor : (C ⥤ Type w)ᵒᵖ ⥤ Type max w v' u where
  obj A := HomObj F G A.unop
  map {A A'} f x :=
    { app := fun X a ↦ x.app X (f.unop.app _ a)
      naturality := fun {X Y} φ a ↦ by
        rw [← HomObj.naturality]
        congr 2
        exact congr_fun (f.unop.naturality φ) a }

/-- Composition of `homObjFunctor` with the co-Yoneda embedding, i.e. Hom(F ⊗ coyoneda(-), G).
When `F G : C ⥤ Type max v' v u`, this is the internal hom of `F` and `G`: see
`Mathlib/CategoryTheory/Closed/FunctorToTypes.lean`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c40fa336208485073d6ad8fa43916c1c6b0e410b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
