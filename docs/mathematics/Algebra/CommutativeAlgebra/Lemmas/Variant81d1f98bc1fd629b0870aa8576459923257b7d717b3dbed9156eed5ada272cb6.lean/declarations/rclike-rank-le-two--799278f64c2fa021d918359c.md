# RCLike.rank_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1990ad092ed9a52cdc13e64b519e2939980fdf32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ceb7e43c-1c97-13b9-2ed4-38f7618b5526",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66ae060f-209d-4ba3-2a40-f59fc8a2fe46",
  "kind": "lemma",
  "lexical_name": "RCLike.rank_le_two",
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
  "slug": "rclike-rank-le-two--799278f64c2fa021d918359c",
  "source": {
    "blob": "1990ad092ed9a52cdc13e64b519e2939980fdf32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 29,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:799278f64c2fa021d918359c64fa7c70221f09b759e6eb0064688f2da7fe2081",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66ae060f-209d-4ba3-2a40-f59fc8a2fe46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RCLike.rank_le_two : Module.rank ℝ K ≤ 2 :=
  calc
    _ = Module.rank ℝ ↥(Submodule.span ℝ ({1, I} : Set K)) := by rw [span_one_I]; simp
    _ ≤ #({1, I} : Finset K) := by
      -- TODO: `simp` doesn't rewrite inside the type argument to `Module.rank`, but `rw` does.
      -- We should introduce `Submodule.rank` to fix this.
      have := rank_span_finset_le (R := ℝ) (M := K) {1, I}
      rw [Finset.coe_pair] at this
      simpa [span_one_I] using this
    _ ≤ 2 := mod_cast Finset.card_le_two

variable (K) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1990ad092ed9a52cdc13e64b519e2939980fdf32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
