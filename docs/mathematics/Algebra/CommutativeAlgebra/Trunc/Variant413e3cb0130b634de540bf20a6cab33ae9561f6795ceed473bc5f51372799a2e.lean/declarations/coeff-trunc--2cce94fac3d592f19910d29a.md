# coeff_trunc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c5e65a2c660a736d79f6c14a16cb2cc643f5aee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:959cc959-8095-e02d-66c0-d5a166ed037a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b83bc0e3-9753-0018-f6c5-5bf7eee73e12",
  "kind": "theorem",
  "lexical_name": "coeff_trunc",
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
  "slug": "coeff-trunc--2cce94fac3d592f19910d29a",
  "source": {
    "blob": "0c5e65a2c660a736d79f6c14a16cb2cc643f5aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 190,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cce94fac3d592f19910d29a7115acb6ef15b14031c899410315cd66626a6d6b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b83bc0e3-9753-0018-f6c5-5bf7eee73e12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_trunc (m n : σ →₀ ℕ) (φ : MvPowerSeries σ R) :
    (trunc R n φ).coeff m = if m < n then coeff m φ else 0 := by
  simpa using! coeff_truncFinset (s := Iio n) (x := m) φ

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c5e65a2c660a736d79f6c14a16cb2cc643f5aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
