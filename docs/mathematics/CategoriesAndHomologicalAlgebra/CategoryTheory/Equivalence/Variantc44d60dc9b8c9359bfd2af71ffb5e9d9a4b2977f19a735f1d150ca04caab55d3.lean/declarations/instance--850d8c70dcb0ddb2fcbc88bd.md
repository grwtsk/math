# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c66a747939a3e00ccbb62e0671a4aa69d2f497af5ed53ac6b6be313632e865d8",
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
  "slug": "instance--850d8c70dcb0ddb2fcbc88bd",
  "source": {
    "blob": "66a42272f49db670d93c69add9dca478751465f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:850d8c70dcb0ddb2fcbc88bd909c4989fcafcae1cc1bea929b3a41c6623edf6c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c66a747939a3e00ccbb62e0671a4aa69d2f497af5ed53ac6b6be313632e865d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 900) [G.IsEquivalence] : IsCoverDense G J where
  is_cover U := by
    let e := (asEquivalence G).symm
    convert J.top_mem U
    ext Y f
    simp only [Sieve.functorPushforward_apply, Presieve.functorPushforward, exists_and_left,
      Sieve.top_apply, iff_true]
    let g : e.inverse.obj _ ⟶ U := (e.unitInv.app Y) ≫ f
    have : (Sieve.coverByImage e.inverse U).arrows g := Presieve.in_coverByImage _ g
    replace := Sieve.downward_closed _ this (e.unit.app Y)
    simpa [g] using this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66a42272f49db670d93c69add9dca478751465f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
