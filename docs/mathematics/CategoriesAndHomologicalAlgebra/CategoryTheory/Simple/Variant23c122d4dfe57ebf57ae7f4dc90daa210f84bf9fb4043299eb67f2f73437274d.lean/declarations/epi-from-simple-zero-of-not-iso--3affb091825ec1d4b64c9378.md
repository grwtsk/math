# epi_from_simple_zero_of_not_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b98e1626445a35a127fef5d4496ed35327528ca0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e20e9c3-a039-5815-bb58-85c10b29c8f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0aa9142-69e8-eaa9-9fe5-06ed018894ef",
  "kind": "theorem",
  "lexical_name": "epi_from_simple_zero_of_not_iso",
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
  "slug": "epi-from-simple-zero-of-not-iso--3affb091825ec1d4b64c9378",
  "source": {
    "blob": "b98e1626445a35a127fef5d4496ed35327528ca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3affb091825ec1d4b64c93789d740bb9a5214ee3583f7fc39a1f9568cec5b734",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0aa9142-69e8-eaa9-9fe5-06ed018894ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_from_simple_zero_of_not_iso {X Y : C} [Simple X] {f : X ⟶ Y} [Epi f]
    (w : IsIso f → False) : f = 0 := by
  classical
    by_contra h
    exact w (isIso_of_epi_of_nonzero h)

end Abelian

section Indecomposable

variable [Preadditive C] [HasBinaryBiproducts C]

-- There are another three potential variations of this lemma,
-- but as any one suffices to prove `indecomposable_of_simple` we will not give them all.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b98e1626445a35a127fef5d4496ed35327528ca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
