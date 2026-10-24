# norm_logDeriv_mulSubOne_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c153464c65a1419b366735889c1f9cc641239cb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77c4be85-1fff-a609-5ac5-b7a347dc2734",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23c4f4e8-f5bb-426c-08b9-8fb324663eab",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_mulSubOne_le",
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
  "slug": "norm-logderiv-mulsubone-le--ee138b77e820a6ab204e64ca",
  "source": {
    "blob": "c153464c65a1419b366735889c1f9cc641239cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 433,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee138b77e820a6ab204e64cabd2beb50d6c5a55eb08ced3bf70c90f9b731eff5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23c4f4e8-f5bb-426c-08b9-8fb324663eab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_mulSubOne_le {s : ℂ} (hs : s.im ≠ 0) :
    ‖logDeriv mulSubOne s‖ ≤ 2 / |s.im| := by
  have h0 : s ≠ 0 := fun h => hs (by simp [h])
  have h1 : s ≠ 1 := fun h => hs (by simp [h])
  have him0 : 0 < |s.im| := abs_pos.mpr hs
  have hn1 : |s.im| ≤ ‖s‖ := Complex.abs_im_le_norm s
  have hn2 : |s.im| ≤ ‖s - 1‖ := by
    have := Complex.abs_im_le_norm (s - 1); simpa using this
  rw [logDeriv_mulSubOne_eq h0 h1]
  calc ‖1 / s + 1 / (s - 1)‖ ≤ ‖1 / s‖ + ‖1 / (s - 1)‖ := norm_add_le _ _
    _ = 1 / ‖s‖ + 1 / ‖s - 1‖ := by simp
    _ ≤ 1 / |s.im| + 1 / |s.im| :=
        add_le_add (one_div_le_one_div_of_le him0 hn1) (one_div_le_one_div_of_le him0 hn2)
    _ = 2 / |s.im| := by ring

/-- good heights for s(s−1): R_j = j (j ≥ 2), ‖1/s + 1/(s−1)‖ ≤ 1 ≤ log²(j+3). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c153464c65a1419b366735889c1f9cc641239cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
