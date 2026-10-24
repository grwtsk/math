# perronTerm_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee0cbb9c54512a697d1f0aa0a35c0a5d031d1e4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0bb50ef-791d-b175-e231-800e2871daf1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a20362f8-5598-4396-f877-cf6a37cf1c6a",
  "kind": "theorem",
  "lexical_name": "perronTerm_tsum",
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
  "slug": "perronterm-tsum--89df5e9013ffe75f095efccf",
  "source": {
    "blob": "ee0cbb9c54512a697d1f0aa0a35c0a5d031d1e4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89df5e9013ffe75f095efccf35b23ab98a44d0853eb12c3bf073fd2eb6422ccf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a20362f8-5598-4396-f877-cf6a37cf1c6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perronTerm_tsum (c x : ℝ) (hc : 0 < c) (t : ℝ) :
    (∑' n : ℕ, perronTerm c x n t) =
      (x : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
        (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
          riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I)) := by
  simp only [perronTerm, tsum_mul_left]
  change perronIntegrand c x t *
    LSeries (fun m => (ArithmeticFunction.moebius m : ℂ))
      (1 + (c : ℂ) + (t : ℂ) * Complex.I) = _
  rw [mobiusDirichlet_reciprocal _ (by simpa using hc)]
  simp only [perronIntegrand, div_eq_mul_inv, mul_inv_rev, one_mul]
  ring

/-- Positive integer scaling retains exactly the original signed coefficient and source cutoff
ratio. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0cbb9c54512a697d1f0aa0a35c0a5d031d1e4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
