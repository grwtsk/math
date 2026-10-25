# lt_ratSqrt_add_inv_prec_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8054694a0be89aa2efd05116b5fadf302068af30",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/9205f4a43754c737d96f87a24445fce73e37f8418191b65b52c884f6ae664770.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c87c1bd-a339-8d85-f282-f724e707cb25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bac2fe87-76c3-e55f-07ca-18e42f22b60f",
  "kind": "theorem",
  "lexical_name": "lt_ratSqrt_add_inv_prec_sq",
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
  "slug": "lt-ratsqrt-add-inv-prec-sq--9d3baeb5e4838ee3dd6241cc",
  "source": {
    "blob": "8054694a0be89aa2efd05116b5fadf302068af30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant9205f4a43754c737d96f87a24445fce73e37f8418191b65b52c884f6ae664770.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d3baeb5e4838ee3dd6241ccd1f9ca3aa56a1ab581f3ae6bc11b417f627a4f09",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Defs/Variant9205f4a43754c737d96f87a24445fce73e37f8418191b65b52c884f6ae664770.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bac2fe87-76c3-e55f-07ca-18e42f22b60f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_ratSqrt_add_inv_prec_sq (x : ℕ) {prec : ℕ} (h : 0 < prec) :
    x < (ratSqrt x prec + 1 / prec) ^ 2 := by
  unfold ratSqrt
  rw [← mul_lt_mul_iff_of_pos_right (a := (prec ^ 2 : ℚ)) (by positivity)]
  rw [← mul_pow, add_mul]
  rw [div_mul_cancel₀, div_mul_cancel₀]
  · norm_cast
    exact lt_succ_sqrt' (x * prec ^ 2)
  all_goals norm_cast; positivity

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Defs/Variant9205f4a43754c737d96f87a24445fce73e37f8418191b65b52c884f6ae664770.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant9205f4a43754c737d96f87a24445fce73e37f8418191b65b52c884f6ae664770.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8054694a0be89aa2efd05116b5fadf302068af30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
