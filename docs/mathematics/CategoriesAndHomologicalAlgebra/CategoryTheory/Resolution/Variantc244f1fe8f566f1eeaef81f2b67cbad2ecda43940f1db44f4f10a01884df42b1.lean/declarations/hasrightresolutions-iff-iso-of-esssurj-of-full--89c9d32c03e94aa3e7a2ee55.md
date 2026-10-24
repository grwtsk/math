# hasRightResolutions_iff_iso_of_essSurj_of_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d1f8dfd-90cb-9604-64c2-737e1cf9e07f",
  "kind": "lemma",
  "lexical_name": "hasRightResolutions_iff_iso_of_essSurj_of_full",
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
  "slug": "hasrightresolutions-iff-iso-of-esssurj-of-full--89c9d32c03e94aa3e7a2ee55",
  "source": {
    "blob": "ee2bd4c9701320bcf2823d7416b561a8aa078fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 379,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89c9d32c03e94aa3e7a2ee55c2652cc1d6126742ce3c86dbb054a864cbb156aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d1f8dfd-90cb-9604-64c2-737e1cf9e07f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasRightResolutions_iff_iso_of_essSurj_of_full
    [R.functor.EssSurj] [R.functor.Full] [R.IsInduced] [L.functor.EssSurj] [W₂'.RespectsIso]
    (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor) :
    T.HasRightResolutions ↔ B.HasRightResolutions :=
  ⟨fun _ ↦ hasRightResolutions_of_iso_of_essSurj iso,
    fun _ ↦ hasRightResolutions_of_iso_of_essSurj_of_full iso⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantc244f1fe8f566f1eeaef81f2b67cbad2ecda43940f1db44f4f10a01884df42b1.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2bd4c9701320bcf2823d7416b561a8aa078fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
