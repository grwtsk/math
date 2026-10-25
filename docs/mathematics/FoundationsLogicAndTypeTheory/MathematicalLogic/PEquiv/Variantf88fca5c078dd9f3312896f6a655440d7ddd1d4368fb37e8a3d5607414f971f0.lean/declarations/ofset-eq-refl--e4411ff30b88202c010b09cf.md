# ofSet_eq_refl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39cbb822f847b30d66ecb6207c9de3a3a47c85bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f88fca5c078dd9f3312896f6a655440d7ddd1d4368fb37e8a3d5607414f971f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:355317a4-bb40-7faa-6c59-331a7fbb91c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7fdd64f-f01c-37d3-236e-df93d1484b65",
  "kind": "theorem",
  "lexical_name": "ofSet_eq_refl",
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
  "slug": "ofset-eq-refl--e4411ff30b88202c010b09cf",
  "source": {
    "blob": "39cbb822f847b30d66ecb6207c9de3a3a47c85bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 232,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantf88fca5c078dd9f3312896f6a655440d7ddd1d4368fb37e8a3d5607414f971f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4411ff30b88202c010b09cf4f06257d2574b3b1f691bd1838fff36188ff7e2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantf88fca5c078dd9f3312896f6a655440d7ddd1d4368fb37e8a3d5607414f971f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7fdd64f-f01c-37d3-236e-df93d1484b65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofSet_eq_refl {s : Set α} [DecidablePred (· ∈ s)] :
    ofSet s = PEquiv.refl α ↔ s = Set.univ :=
  ⟨fun h => by
    rw [Set.eq_univ_iff_forall]
    intro
    rw [← mem_ofSet_self_iff, h]
    exact rfl, fun h => by simp only [← ofSet_univ, h]⟩

end OfSet

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantf88fca5c078dd9f3312896f6a655440d7ddd1d4368fb37e8a3d5607414f971f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantf88fca5c078dd9f3312896f6a655440d7ddd1d4368fb37e8a3d5607414f971f0.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39cbb822f847b30d66ecb6207c9de3a3a47c85bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
