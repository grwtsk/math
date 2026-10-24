# functorPushforward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:708469f5a8decd1a7e546e7cb63e52e77a4f96502b0aaecc5c3dc9e6d5a69c14",
  "kind": "def",
  "lexical_name": "functorPushforward",
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
  "slug": "functorpushforward--e72d10f4a81f9ce7fc287ac6",
  "source": {
    "blob": "c608b66f79d2476f71be004df68104da609bc11a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 682,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Varianta2a237a699b1ff7d837617af8a1625473fdf4629b020d02cf69370399c4ec513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e72d10f4a81f9ce7fc287ac6be221001ffb9a5fd51b79a4ddb066b1fd2fc877f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Varianta2a237a699b1ff7d837617af8a1625473fdf4629b020d02cf69370399c4ec513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:708469f5a8decd1a7e546e7cb63e52e77a4f96502b0aaecc5c3dc9e6d5a69c14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 682–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorPushforward (R : Sieve X) : Sieve (F.obj X) where
  arrows := R.arrows.functorPushforward F
  downward_closed := by
    intro _ _ f h g
    obtain ⟨X, α, β, hα, rfl⟩ := h
    exact ⟨X, α, g ≫ β, hα, by simp⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Varianta2a237a699b1ff7d837617af8a1625473fdf4629b020d02cf69370399c4ec513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Varianta2a237a699b1ff7d837617af8a1625473fdf4629b020d02cf69370399c4ec513.lean#L682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c608b66f79d2476f71be004df68104da609bc11a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
