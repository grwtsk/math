# le_exp_of_log_one_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02d6f425b8ec28f6aaf08c956107026dc741795d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/6859adaca57af1bada5c21a3555334b1849b2368797d9622856158b253b090a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2e00e96-855b-ac48-77ed-a595248064a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07c72488-a69f-78f6-f291-8007330f9072",
  "kind": "theorem",
  "lexical_name": "le_exp_of_log_one_add_le",
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
  "slug": "le-exp-of-log-one-add-le--3ad1bccf0ecc6a92c613ff60",
  "source": {
    "blob": "02d6f425b8ec28f6aaf08c956107026dc741795d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/Analysis/SpecialFunctions/PosLog/Variant6859adaca57af1bada5c21a3555334b1849b2368797d9622856158b253b090a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ad1bccf0ecc6a92c613ff6021d89215a62b71c82b4fa88a0a6d3de2bfa5ba9b",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/PosLog/Variant6859adaca57af1bada5c21a3555334b1849b2368797d9622856158b253b090a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07c72488-a69f-78f6-f291-8007330f9072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_exp_of_log_one_add_le {x y : ℝ} (hy : 0 ≤ y) (hxy : log (1 + y) ≤ x) :
    y ≤ exp x := by
  have hpos : 0 < (1 : ℝ) + y := by linarith
  have hone : 1 + y ≤ exp x := (log_le_iff_le_exp hpos).1 hxy
  linarith

/-- Lower bound for `log x` in terms of `log⁺ x⁻¹`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/PosLog/Variant6859adaca57af1bada5c21a3555334b1849b2368797d9622856158b253b090a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/PosLog/Variant6859adaca57af1bada5c21a3555334b1849b2368797d9622856158b253b090a9.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02d6f425b8ec28f6aaf08c956107026dc741795d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
