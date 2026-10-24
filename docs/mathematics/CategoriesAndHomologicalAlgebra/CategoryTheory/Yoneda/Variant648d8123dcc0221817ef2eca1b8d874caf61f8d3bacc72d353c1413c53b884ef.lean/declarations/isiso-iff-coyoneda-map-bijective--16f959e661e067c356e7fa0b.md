# isIso_iff_coyoneda_map_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a38e1c67dc5468febd2358339fcc57926cef6914",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e1b9d8f-5f6e-265d-3169-bcd89d07d5fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:568b5937-641b-cf11-262f-15b6cfa47153",
  "kind": "lemma",
  "lexical_name": "isIso_iff_coyoneda_map_bijective",
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
  "slug": "isiso-iff-coyoneda-map-bijective--16f959e661e067c356e7fa0b",
  "source": {
    "blob": "a38e1c67dc5468febd2358339fcc57926cef6914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1145,
    "line": 1139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16f959e661e067c356e7fa0b43666ce1d6507f90808f5f2d1d326709e445ee15",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:568b5937-641b-cf11-262f-15b6cfa47153`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1139–1145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_iff_coyoneda_map_bijective {X Y : C} (f : X ⟶ Y) :
    IsIso f ↔ (∀ (T : C), Function.Bijective (fun (x : Y ⟶ T) => f ≫ x)) := by
  refine ⟨fun _ ↦ ?_, fun hf ↦ isIso_of_coyoneda_map_bijective f hf⟩
  intro T
  rw [bijective_iff_isIso_ofHom]
  exact inferInstanceAs (IsIso ((coyoneda.map f.op).app _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean#L1139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a38e1c67dc5468febd2358339fcc57926cef6914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
