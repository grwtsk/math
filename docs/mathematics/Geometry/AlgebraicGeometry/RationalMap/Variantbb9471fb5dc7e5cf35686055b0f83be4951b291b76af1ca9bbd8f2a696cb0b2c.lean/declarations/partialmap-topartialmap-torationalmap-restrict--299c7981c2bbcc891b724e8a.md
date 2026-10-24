# PartialMap.toPartialMap_toRationalMap_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d59b9102d2dfc449e2da16f0d28631b21cda0758",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 519,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ca84cfa-90b9-487a-8ca0-5cbb999ca90c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e3a1702-d06a-6b4e-06ae-aa43e6812c18",
  "kind": "lemma",
  "lexical_name": "PartialMap.toPartialMap_toRationalMap_restrict",
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
  "slug": "partialmap-topartialmap-torationalmap-restrict--299c7981c2bbcc891b724e8a",
  "source": {
    "blob": "d59b9102d2dfc449e2da16f0d28631b21cda0758",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 519,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:299c7981c2bbcc891b724e8a7776e06c817a3fe1acbdadd7e5d8764f6a405329",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e3a1702-d06a-6b4e-06ae-aa43e6812c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PartialMap.toPartialMap_toRationalMap_restrict [IsReduced X] [Y.IsSeparated]
    (f : X.PartialMap Y) : (f.toRationalMap.toPartialMap.restrict _ f.dense_domain
      f.le_domain_toRationalMap).hom = f.hom := by
  dsimp [RationalMap.toPartialMap]
  refine (f.toRationalMap.openCoverDomain.ι_glueMorphisms _ _ ⟨_, f, rfl, rfl⟩).trans ?_
  generalize_proofs _ _ H _
  have : H.choose = f := (equiv_iff_of_domain_eq_of_isSeparated (S := ⊤_ _) H.choose_spec.2).mp
    (toRationalMap_eq_iff.mp H.choose_spec.1)
  exact ((ext_iff _ _).mp this.symm).choose_spec.symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d59b9102d2dfc449e2da16f0d28631b21cda0758` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
