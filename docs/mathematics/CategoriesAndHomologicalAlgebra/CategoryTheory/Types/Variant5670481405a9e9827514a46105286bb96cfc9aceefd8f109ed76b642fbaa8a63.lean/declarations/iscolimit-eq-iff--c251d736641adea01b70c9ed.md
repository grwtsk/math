# isColimit_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa7bf5cb48c47e1ae8ede6d99ec2cca6cde75c07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 560,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00da3a34-67ff-aba4-6ba0-20cb3aa8d1cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f69c355-f957-d137-59db-bd2816ad6c76",
  "kind": "theorem",
  "lexical_name": "isColimit_eq_iff",
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
  "slug": "iscolimit-eq-iff--c251d736641adea01b70c9ed",
  "source": {
    "blob": "aa7bf5cb48c47e1ae8ede6d99ec2cca6cde75c07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 560,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c251d736641adea01b70c9ed15d2a4f12c220b546dd0b347d3e311f48370de79",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f69c355-f957-d137-59db-bd2816ad6c76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isColimit_eq_iff {t : Cocone F} (ht : IsColimit t) {i j : J} {xi : F.obj i} {xj : F.obj j} :
    t.ι.app i xi = t.ι.app j xj ↔ ∃ (k : _) (f : i ⟶ k) (g : j ⟶ k), F.map f xi = F.map g xj := by
  let t' := colimitCocone.{v, u} F
  let e : t' ≅ t := IsColimit.uniqueUpToIso (colimitCoconeIsColimit F) ht
  let e' : t'.pt ≅ t.pt := (Cocones.forget _).mapIso e
  refine' Iff.trans _ (colimit_eq_iff_aux.{v, u} F)
  exact @Equiv.apply_eq_iff_eq _ _ e'.toEquiv ((colimitCocone.{v, u} F).ι.app i xi)
    ((colimitCocone.{v, u} F).ι.app j xj)
#align category_theory.limits.types.filtered_colimit.is_colimit_eq_iff CategoryTheory.Limits.Types.FilteredColimit.isColimit_eq_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa7bf5cb48c47e1ae8ede6d99ec2cca6cde75c07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
