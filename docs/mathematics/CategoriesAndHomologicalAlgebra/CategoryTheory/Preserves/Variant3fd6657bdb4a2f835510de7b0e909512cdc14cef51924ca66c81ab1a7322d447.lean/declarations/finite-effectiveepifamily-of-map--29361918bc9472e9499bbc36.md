# finite_effectiveEpiFamily_of_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8eab790-68fb-34f5-df73-be4a7b152bad",
  "kind": "lemma",
  "lexical_name": "finite_effectiveEpiFamily_of_map",
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
  "slug": "finite-effectiveepifamily-of-map--29361918bc9472e9499bbc36",
  "source": {
    "blob": "f7c9b62c68bec4821fba9efe14d36fd4b88f804e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 256,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3fd6657bdb4a2f835510de7b0e909512cdc14cef51924ca66c81ab1a7322d447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29361918bc9472e9499bbc36078b48afe5d8c13d84a97993580f635ee3f34d91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3fd6657bdb4a2f835510de7b0e909512cdc14cef51924ca66c81ab1a7322d447.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8eab790-68fb-34f5-df73-be4a7b152bad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_effectiveEpiFamily_of_map (F : C ⥤ D) [ReflectsFiniteEffectiveEpiFamilies F]
    {α : Type} [Finite α] {B : C} (X : α → C) (π : (a : α) → (X a ⟶ B))
    (h : EffectiveEpiFamily (fun a ↦ F.obj (X a)) (fun a ↦ F.map (π a))) :
    EffectiveEpiFamily X π :=
  ReflectsFiniteEffectiveEpiFamilies.reflects X π h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3fd6657bdb4a2f835510de7b0e909512cdc14cef51924ca66c81ab1a7322d447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3fd6657bdb4a2f835510de7b0e909512cdc14cef51924ca66c81ab1a7322d447.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7c9b62c68bec4821fba9efe14d36fd4b88f804e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
