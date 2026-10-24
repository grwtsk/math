# rlp_eq_of_le_rlp_of_hasFactorization_of_isStableUnderRetracts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3b6c705ceb2496647cce69d00847898316540c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c5cb9c2-5efd-8aca-b56e-6b9dcfb0a6ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:605c365d-c930-dfed-74c0-88ffcb31bf01",
  "kind": "lemma",
  "lexical_name": "rlp_eq_of_le_rlp_of_hasFactorization_of_isStableUnderRetracts",
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
  "slug": "rlp-eq-of-le-rlp-of-hasfactorization-of-isstableunderretracts--bd6e3ba5ccf16fe4289f5cbd",
  "source": {
    "blob": "a3b6c705ceb2496647cce69d00847898316540c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd6e3ba5ccf16fe4289f5cbd63352108a2cdcdc2d07775f3df32ed1cac344b04",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:605c365d-c930-dfed-74c0-88ffcb31bf01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rlp_eq_of_le_rlp_of_hasFactorization_of_isStableUnderRetracts
    [HasFactorization W₁ W₂] [W₂.IsStableUnderRetracts] (h₂ : W₂ ≤ W₁.rlp) :
    W₁.rlp = W₂ :=
  le_antisymm (fun X Y p hp ↦ by
    have h := factorizationData W₁ W₂ p
    have := hp _ h.hi
    simpa using of_retract (RetractArrow.ofRightLiftingProperty h.fac) h.hp) h₂

end MorphismProperty

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant3cfac3b037d76326804308c69eaabdcda7ddcf222b5c3d254a855bd10d3dd5a8.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b6c705ceb2496647cce69d00847898316540c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
