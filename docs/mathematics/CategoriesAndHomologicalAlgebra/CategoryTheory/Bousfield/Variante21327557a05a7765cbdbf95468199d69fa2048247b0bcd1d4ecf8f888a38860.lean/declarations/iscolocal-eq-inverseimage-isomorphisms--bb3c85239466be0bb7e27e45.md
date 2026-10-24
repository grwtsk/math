# isColocal_eq_inverseImage_isomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa8ec995-f9dd-2213-18df-13c9f657dbc4",
  "kind": "lemma",
  "lexical_name": "isColocal_eq_inverseImage_isomorphisms",
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
  "slug": "iscolocal-eq-inverseimage-isomorphisms--bb3c85239466be0bb7e27e45",
  "source": {
    "blob": "e566070b7c9452184ec75da6d0b5990a1b26e305",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 275,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variante21327557a05a7765cbdbf95468199d69fa2048247b0bcd1d4ecf8f888a38860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb3c85239466be0bb7e27e4527a323e44f03ea7fa2867844af13d68769cfccb9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variante21327557a05a7765cbdbf95468199d69fa2048247b0bcd1d4ecf8f888a38860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa8ec995-f9dd-2213-18df-13c9f657dbc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isColocal_eq_inverseImage_isomorphisms :
    isColocal (· ∈ Set.range G.obj) = (MorphismProperty.isomorphisms _).inverseImage F := by
  ext P₁ P₂ f
  rw [isColocal_iff_isIso_map adj]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variante21327557a05a7765cbdbf95468199d69fa2048247b0bcd1d4ecf8f888a38860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variante21327557a05a7765cbdbf95468199d69fa2048247b0bcd1d4ecf8f888a38860.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e566070b7c9452184ec75da6d0b5990a1b26e305` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
