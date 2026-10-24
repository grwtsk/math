# next_order_not_posSemidef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "495eed1099ffcfddb307af2107ed4e7e9562cd25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f10fb97b-cf50-4162-88d8-5d45b9a4d45f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ce7bbdb-45bb-fe60-fba8-67333583e2c1",
  "kind": "theorem",
  "lexical_name": "next_order_not_posSemidef",
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
  "slug": "next-order-not-possemidef--83153fe0d979cb6c6e810bed",
  "source": {
    "blob": "495eed1099ffcfddb307af2107ed4e7e9562cd25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83153fe0d979cb6c6e810bed0aebe591d0b171c1c11f447cdcf750844e2ab704",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ce7bbdb-45bb-fe60-fba8-67333583e2c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem next_order_not_posSemidef (d : ℕ) :
    ¬ Matrix.PosSemidef (Matrix.of (fun i j : Fin (d + 2) ↦ cutoffSequence d (i.val + j.val))) := by
  intro h
  have hn := h.diag_nonneg (i := Fin.last (d + 1))
  have he : d + 1 + (d + 1) = 2 * d + 2 := by omega
  norm_num [cutoffSequence, he] at hn

/-- An arbitrary fixed cutoff admits a witness passing both towers and failing next order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant5142b8f5a857ba54e3658a5237334a9d2bb6adbb9fccff452d40f7f69ce2e9bd.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `495eed1099ffcfddb307af2107ed4e7e9562cd25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
