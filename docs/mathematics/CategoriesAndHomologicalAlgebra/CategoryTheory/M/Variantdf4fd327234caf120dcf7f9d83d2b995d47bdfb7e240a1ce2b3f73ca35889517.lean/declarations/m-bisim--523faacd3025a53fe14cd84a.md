# M.bisim'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac52c845336c1bb1701a040835bd3085c1fe8ca6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df4fd327234caf120dcf7f9d83d2b995d47bdfb7e240a1ce2b3f73ca35889517.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:767c9d1e-58db-64ff-62c5-0834bfba96c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7f3fdfe-fbfc-c9eb-5f6d-8174ea686113",
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
  "slug": "m-bisim--523faacd3025a53fe14cd84a",
  "source": {
    "blob": "ac52c845336c1bb1701a040835bd3085c1fe8ca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 281,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variantdf4fd327234caf120dcf7f9d83d2b995d47bdfb7e240a1ce2b3f73ca35889517.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:523faacd3025a53fe14cd84ab6247390c7273b3b5bac7a4a11ac7d1535c6106f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variantdf4fd327234caf120dcf7f9d83d2b995d47bdfb7e240a1ce2b3f73ca35889517.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7f3fdfe-fbfc-c9eb-5f6d-8174ea686113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–295.

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

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variantdf4fd327234caf120dcf7f9d83d2b995d47bdfb7e240a1ce2b3f73ca35889517.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variantdf4fd327234caf120dcf7f9d83d2b995d47bdfb7e240a1ce2b3f73ca35889517.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac52c845336c1bb1701a040835bd3085c1fe8ca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
