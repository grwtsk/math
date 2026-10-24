# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c82b06e6bece4a6cdc74b99ce4fe66e3f44fe9e931ddd01f4a7e0f464071dab7",
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
  "slug": "instance--79b0e1212120deced9a4c88b",
  "source": {
    "blob": "0a2d1a1c033a248d70dd132d9e83bc614700180f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 970,
    "line": 957,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbfa2a22d62b0fb2925c810511bf6f86192cb4bf160c2b2452f43b82e2700d26d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79b0e1212120deced9a4c88b5fe57223337cd500751eec6e1909f0b6a365c5ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbfa2a22d62b0fb2925c810511bf6f86192cb4bf160c2b2452f43b82e2700d26d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c82b06e6bece4a6cdc74b99ce4fe66e3f44fe9e931ddd01f4a7e0f464071dab7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 957–970.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [F.Monoidal] : PreservesFiniteProducts F :=
  have (A B : _) : IsIso (CartesianMonoidalCategory.prodComparison F A B) :=
    δ_of_cartesianMonoidalCategory F A B ▸ inferInstance
  have : IsIso (CartesianMonoidalCategory.terminalComparison F) :=
    η_of_cartesianMonoidalCategory F ▸ inferInstance
  have := preservesLimitsOfShape_discrete_walkingPair_of_isIso_prodComparison F
  have := preservesLimit_empty_of_isIso_terminalComparison F
  have := Limits.preservesLimitsOfShape_pempty_of_preservesTerminal F
  .of_preserves_binary_and_terminal _

attribute [local instance] OplaxMonoidal.ofChosenFiniteProducts in
/--
A functor between Cartesian monoidal categories is monoidal iff it preserves finite products.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbfa2a22d62b0fb2925c810511bf6f86192cb4bf160c2b2452f43b82e2700d26d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbfa2a22d62b0fb2925c810511bf6f86192cb4bf160c2b2452f43b82e2700d26d.lean#L957).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a2d1a1c033a248d70dd132d9e83bc614700180f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
