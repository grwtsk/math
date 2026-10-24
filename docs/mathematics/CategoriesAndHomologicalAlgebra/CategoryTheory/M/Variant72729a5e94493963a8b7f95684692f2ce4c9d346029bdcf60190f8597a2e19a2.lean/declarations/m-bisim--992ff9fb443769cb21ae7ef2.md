# M.bisim'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b970881-caa7-7a64-066a-54ce7063548e",
  "kind": "theorem",
  "lexical_name": "M.bisim'",
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
  "slug": "m-bisim--992ff9fb443769cb21ae7ef2",
  "source": {
    "blob": "04078ab8aa21bbe7faa5a226b874842ca5a28995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 284,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:992ff9fb443769cb21ae7ef200b51684de5f20c27466fc5381efa6ccba93dedf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b970881-caa7-7a64-066a-54ce7063548e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem M.bisim' {α : TypeVec n} (R : P.M α → P.M α → Prop)
    (h : ∀ x y, R x y → (id ::: Quot.mk R) <$$> M.dest _ x = (id ::: Quot.mk R) <$$> M.dest _ y)
    (x y) (r : R x y) : x = y := by
  have := M.bisim₀ P (Relation.EqvGen R) ?_ ?_
  · solve_by_elim [Relation.EqvGen.rel]
  · apply Relation.EqvGen.is_equivalence
  · clear r x y
    introv Hr
    have : ∀ x y, R x y → Relation.EqvGen R x y := @Relation.EqvGen.rel _ R
    induction Hr
    · rw [← Quot.factor_mk_eq R (Relation.EqvGen R) this]
      rwa [appendFun_comp_id, ← MvFunctor.map_map, ← MvFunctor.map_map, h]
    all_goals simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04078ab8aa21bbe7faa5a226b874842ca5a28995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
