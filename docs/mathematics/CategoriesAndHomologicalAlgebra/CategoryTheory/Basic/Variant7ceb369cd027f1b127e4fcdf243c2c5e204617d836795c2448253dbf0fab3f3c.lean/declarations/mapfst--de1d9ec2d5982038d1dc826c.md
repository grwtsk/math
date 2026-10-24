# mapFst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec4f7e4270d9ff732d8bfdf682339684fcf0ddb18e23348ddc1cc097c09f1cbc",
  "kind": "def",
  "lexical_name": "mapFst",
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
  "slug": "mapfst--de1d9ec2d5982038d1dc826c",
  "source": {
    "blob": "79008e7460c6c88831d0516c95dad9b356e410ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 315,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ceb369cd027f1b127e4fcdf243c2c5e204617d836795c2448253dbf0fab3f3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de1d9ec2d5982038d1dc826c5318af6bfa69800c09b5db7fd7bebe874bbff8aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ceb369cd027f1b127e4fcdf243c2c5e204617d836795c2448253dbf0fab3f3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec4f7e4270d9ff732d8bfdf682339684fcf0ddb18e23348ddc1cc097c09f1cbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapFst : map α β ⋙ fst L' R' ≅ fst L R ⋙ F₁ :=
  NatIso.ofComponents (fun _ => Iso.refl _) (by simp)

end

/-- A natural transformation `L₁ ⟶ L₂` induces a functor `Comma L₂ R ⥤ Comma L₁ R`. -/
@[to_dual (attr := simps, implicit_reducible)
/-- A natural transformation `R₁ ⟶ R₂` induces a functor `Comma L R₁ ⥤ Comma L R₂`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ceb369cd027f1b127e4fcdf243c2c5e204617d836795c2448253dbf0fab3f3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ceb369cd027f1b127e4fcdf243c2c5e204617d836795c2448253dbf0fab3f3c.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79008e7460c6c88831d0516c95dad9b356e410ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
