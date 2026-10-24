# one_apply_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de848b1e00aaef329fb6add65a8ddb56f745d950",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/181e68fa3ae6299b0400f280c4e0366daf5ee3de9781019672485212792b52d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:922734fa-3b99-7384-cd6d-8940e79ade3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef14d45e-23bc-8cba-9d8a-41e91148f6fb",
  "kind": "lemma",
  "lexical_name": "one_apply_eq_zero_iff",
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
  "slug": "one-apply-eq-zero-iff--85fd30f5df8a02159ba68c20",
  "source": {
    "blob": "de848b1e00aaef329fb6add65a8ddb56f745d950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 243,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variant181e68fa3ae6299b0400f280c4e0366daf5ee3de9781019672485212792b52d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85fd30f5df8a02159ba68c20a0e1d6fcffe4ad1037a81ba93d8d72a271fb2013",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variant181e68fa3ae6299b0400f280c4e0366daf5ee3de9781019672485212792b52d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef14d45e-23bc-8cba-9d8a-41e91148f6fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_apply_eq_zero_iff {M₀ N₀ : Type*} [MulZeroOneClass M₀] [MulZeroOneClass N₀]
    [DecidablePred fun x : M₀ ↦ x = 0] [Nontrivial M₀] [NoZeroDivisors M₀] [Nontrivial N₀]
    {x : M₀} :
    (1 : M₀ →*₀ N₀) x = 0 ↔ x = 0 := by
  rcases eq_or_ne x 0 with rfl | hx <;> simp_all [one_apply_of_ne_zero]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variant181e68fa3ae6299b0400f280c4e0366daf5ee3de9781019672485212792b52d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variant181e68fa3ae6299b0400f280c4e0366daf5ee3de9781019672485212792b52d3.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de848b1e00aaef329fb6add65a8ddb56f745d950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
