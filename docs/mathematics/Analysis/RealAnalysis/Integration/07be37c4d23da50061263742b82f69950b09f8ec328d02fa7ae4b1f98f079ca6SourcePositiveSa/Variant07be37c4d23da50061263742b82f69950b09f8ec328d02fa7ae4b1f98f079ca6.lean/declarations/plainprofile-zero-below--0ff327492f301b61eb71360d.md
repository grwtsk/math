# plainProfile_zero_below

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eab3e1186d5e3f21a3db6048e01c196bfcf70d29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc15fd75-f330-8ad7-d922-8eea86bf11ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20fc7ece-5633-0d59-2da5-623279768f65",
  "kind": "theorem",
  "lexical_name": "plainProfile_zero_below",
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
  "slug": "plainprofile-zero-below--0ff327492f301b61eb71360d",
  "source": {
    "blob": "eab3e1186d5e3f21a3db6048e01c196bfcf70d29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6SourcePositiveSa/Variant07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ff327492f301b61eb71360db96706ab035a18c6db505c167f5b737b28c88b49",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6SourcePositiveSa/Variant07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20fc7ece-5633-0d59-2da5-623279768f65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plainProfile_zero_below {A : ℝ} (hA : 0 < A) (k : ℝ) {u : ℝ}
    (hu : u ≤ Real.exp (-2 * A - Real.log k)) : plainProfile A k u = 0 := by
  by_cases hu0 : 0 < u
  · have hl := Real.log_le_log hu0 hu
    rw [Real.log_exp] at hl
    have hs : 2 * A ≤ |Real.log k + Real.log u| := by
      linarith [neg_le_abs (Real.log k + Real.log u)]
    rw [plainProfile_eq_of_pos A k hu0, sourcePlainSamplingTerm,
      sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hA hs, mul_zero]
  · simp [plainProfile, hu0]

/-- The actual upper support endpoint vanishes, including equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6SourcePositiveSa/Variant07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6SourcePositiveSa/Variant07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eab3e1186d5e3f21a3db6048e01c196bfcf70d29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
