# one_add_norm_le_twice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f15eb3c058119292d773c6a294329204bf5a066",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 422,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:420bf292-003f-0a55-8bac-d889e9011030",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b692b0f2-6a2a-2728-6c3a-b1265a4ba5c8",
  "kind": "theorem",
  "lexical_name": "one_add_norm_le_twice",
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
  "slug": "one-add-norm-le-twice--eae7f59989c0606c2be2f32c",
  "source": {
    "blob": "5f15eb3c058119292d773c6a294329204bf5a066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 422,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eae7f59989c0606c2be2f32c5dbc0e99147e0b9e811e0d5d7eec261ee1f1e5f7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b692b0f2-6a2a-2728-6c3a-b1265a4ba5c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_add_norm_le_twice (w : ℂ) (hw : 0 ≤ w.re) :
    1 + ‖w‖ ≤ 2 * ‖1 + w‖ := by
  have h1 : 1 ≤ ‖1 + w‖ := by
    have h := Complex.re_le_norm (1 + w)
    simp only [Complex.add_re, Complex.one_re] at h
    linarith
  have hsq : ‖w‖^2 ≤ ‖1+w‖^2 := by
    simp only [← Complex.normSq_eq_norm_sq, Complex.normSq_apply,
      Complex.add_re, Complex.one_re, Complex.add_im, Complex.one_im, zero_add]
    nlinarith
  nlinarith [norm_nonneg w, norm_nonneg (1+w)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f15eb3c058119292d773c6a294329204bf5a066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
