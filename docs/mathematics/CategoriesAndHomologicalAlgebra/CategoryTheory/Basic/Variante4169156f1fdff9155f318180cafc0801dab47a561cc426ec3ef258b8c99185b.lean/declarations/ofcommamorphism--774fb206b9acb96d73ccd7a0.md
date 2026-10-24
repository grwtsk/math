# ofCommaMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8f1bc9768e294e06c1fd8cef16801968f8052d9f0c2f147b18b7ecf2ba66265",
  "kind": "def",
  "lexical_name": "ofCommaMorphism",
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
  "slug": "ofcommamorphism--774fb206b9acb96d73ccd7a0",
  "source": {
    "blob": "279a2b686f7f16d1e52201927fc8b895e41b60d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 804,
    "line": 790,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4169156f1fdff9155f318180cafc0801dab47a561cc426ec3ef258b8c99185b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:774fb206b9acb96d73ccd7a0bd4597f89a48d7d469671121d819b1e48fa3e3f8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4169156f1fdff9155f318180cafc0801dab47a561cc426ec3ef258b8c99185b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8f1bc9768e294e06c1fd8cef16801968f8052d9f0c2f147b18b7ecf2ba66265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 790–804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofCommaMorphism {c c' : Comma (Functor.const C) (𝟭 (C ⥤ D))} (φ : c ⟶ c') :
    ofCommaObject c ⟶ ofCommaObject c' where
  app x :=
    match x with
    | of x => φ.right.app x
    | star => φ.left
  naturality x y f :=
    match x, y, f with
    | of _, of _, f => by simp
    | star, of a, _ => by simpa [-CommaMorphism.w] using (congrArg (fun f ↦ f.app a) φ.w).symm
    | star, star, _ => by simp

/-- The category of functors `WithInitial C ⥤ D` is equivalent to the category
`Comma (const C) (𝟭 (C ⥤ D))`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4169156f1fdff9155f318180cafc0801dab47a561cc426ec3ef258b8c99185b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4169156f1fdff9155f318180cafc0801dab47a561cc426ec3ef258b8c99185b.lean#L790).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `279a2b686f7f16d1e52201927fc8b895e41b60d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
