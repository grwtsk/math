# range_ad_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15f8a283d51bb7060fc03691cf3430b9e5bbb5c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4852fab-3ea4-e39f-97eb-6c4159b731b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f77f205-3304-942a-8ac0-6bcd23321356",
  "kind": "lemma",
  "lexical_name": "range_ad_eq_top",
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
  "slug": "range-ad-eq-top--fbcce99749d8720b9ac4dbf9",
  "source": {
    "blob": "15f8a283d51bb7060fc03691cf3430b9e5bbb5c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbcce99749d8720b9ac4dbf96cee83b6bb9591f0616d604074cedfb7e0700c35",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f77f205-3304-942a-8ac0-6bcd23321356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_ad_eq_top : 𝕀 = ⊤ := by
  rw [← LieSubalgebra.toSubmodule_inj]
  apply LinearMap.BilinForm.eq_top_of_restrict_nondegenerate_of_orthogonal_eq_bot
    (LieModule.traceForm_isSymm R 𝔻 𝔻).isRefl (killingForm_restrict_range_ad_nondegenerate R L)
  refine (Submodule.eq_bot_iff _).mpr fun D hD ↦ ext fun x ↦ ?_
  simpa using ad_mem_ker_killingForm_ad_range_of_mem_orthogonal hD x

variable {R L} in
/-- Every derivation of a finite-dimensional Killing Lie algebra is an inner derivation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15f8a283d51bb7060fc03691cf3430b9e5bbb5c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
