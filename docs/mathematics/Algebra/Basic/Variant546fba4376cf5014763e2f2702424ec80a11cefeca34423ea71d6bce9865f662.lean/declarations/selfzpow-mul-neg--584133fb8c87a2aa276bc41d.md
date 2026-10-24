# selfZPow_mul_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bed43f5f6144ba0ab91e399cabe5050d7f4fb05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 694,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51a110a6-4a5a-b40d-18b5-73492cd39d4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18718f4f-3350-36f6-ac5a-d3ba2e2864ae",
  "kind": "theorem",
  "lexical_name": "selfZPow_mul_neg",
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
  "slug": "selfzpow-mul-neg--584133fb8c87a2aa276bc41d",
  "source": {
    "blob": "8bed43f5f6144ba0ab91e399cabe5050d7f4fb05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 694,
    "path": "GRWTSK/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:584133fb8c87a2aa276bc41d8b673b6bbcd819a2c6a266495ab8217393ca4a15",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18718f4f-3350-36f6-ac5a-d3ba2e2864ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selfZPow_mul_neg (d : ℤ) : selfZPow x B d * selfZPow x B (-d) = 1 := by
  by_cases! hd : d ≤ 0
  · rw [selfZPow_of_nonpos x B hd, selfZPow_of_nonneg, ← map_pow, Int.natAbs_neg,
      Submonoid.pow_apply, IsLocalization.mk'_spec, map_one]
    apply nonneg_of_neg_nonpos
    rwa [neg_neg]
  · rw [selfZPow_of_nonneg x B hd.le, selfZPow_of_nonpos, ← map_pow, Int.natAbs_neg,
      Submonoid.pow_apply, IsLocalization.mk'_spec'_mk, map_one]
    refine nonpos_of_neg_nonneg (le_of_lt ?_)
    rwa [neg_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bed43f5f6144ba0ab91e399cabe5050d7f4fb05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
