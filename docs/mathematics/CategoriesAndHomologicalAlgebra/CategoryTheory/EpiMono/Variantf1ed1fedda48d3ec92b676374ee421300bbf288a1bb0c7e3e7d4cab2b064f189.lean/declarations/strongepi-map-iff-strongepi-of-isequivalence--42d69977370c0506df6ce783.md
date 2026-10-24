# strongEpi_map_iff_strongEpi_of_isEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5e733749ce52ae2c2297c8a83545c17ba9a2a09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c061e37-1c7f-17b6-1a73-e094e9843cef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:074b0f70-dd20-5610-6b9a-e2fd2e4b128c",
  "kind": "theorem",
  "lexical_name": "strongEpi_map_iff_strongEpi_of_isEquivalence",
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
  "slug": "strongepi-map-iff-strongepi-of-isequivalence--42d69977370c0506df6ce783",
  "source": {
    "blob": "b5e733749ce52ae2c2297c8a83545c17ba9a2a09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 280,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42d69977370c0506df6ce783e2edef0872085007f249806e3c2f3529955f5cb9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:074b0f70-dd20-5610-6b9a-e2fd2e4b128c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strongEpi_map_iff_strongEpi_of_isEquivalence [IsEquivalence F] :
    StrongEpi (F.map f) ↔ StrongEpi f := by
  constructor
  · intro
    have e : Arrow.mk f ≅ Arrow.mk (F.inv.map (F.map f)) :=
      Arrow.isoOfNatIso F.asEquivalence.unitIso (Arrow.mk f)
    rw [StrongEpi.iff_of_arrow_iso e]
    infer_instance
  · intro
    infer_instance

end CategoryTheory.Functor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1ed1fedda48d3ec92b676374ee421300bbf288a1bb0c7e3e7d4cab2b064f189.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5e733749ce52ae2c2297c8a83545c17ba9a2a09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
