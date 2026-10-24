# completedLFunction_ne_zero_of_re_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "924cc5c863b9429d18c53faf2ddb99bf66010592",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1227ca4-f559-390b-e2c3-57e0fe1b698a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f780cb0-e34b-86e9-c56a-40ae7dd289e2",
  "kind": "lemma",
  "lexical_name": "completedLFunction_ne_zero_of_re_nonpos",
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
  "slug": "completedlfunction-ne-zero-of-re-nonpos--6b99afbe68b23207ccb0e721",
  "source": {
    "blob": "924cc5c863b9429d18c53faf2ddb99bf66010592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b99afbe68b23207ccb0e7216489b5256d7e5e0d19e01a499cf2068fd3fec1bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f780cb0-e34b-86e9-c56a-40ae7dd289e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completedLFunction_ne_zero_of_re_nonpos (hq : 1 < q) (hprim : χ.IsPrimitive) {s : ℂ}
    (hs : s.re ≤ 0) : completedLFunction χ s ≠ 0 := by
  have hχ1 := ne_one_of_primitive hq hprim
  have e : s = 1 - (1 - s) := by ring
  rw [e, hprim.completedLFunction_one_sub (1 - s)]
  refine mul_ne_zero (mul_ne_zero ?_ (rootNumber_ne_zero hq hprim)) ?_
  · intro h
    exact natCast_q_ne_zero (q := q) ((cpow_eq_zero_iff _ _).mp h).1
  · exact completedLFunction_ne_zero_of_one_le_re (χ := χ⁻¹) hq (inv_ne_one hχ1)
      (by simp; linarith)

/-- The zeros of Λ(·,χ) are exactly the nontrivial zeros of L(·,χ) (primitive χ mod q > 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CountByIntegralChi/Variantb385ea789543a5e9e88d6676a7f732ead433c08b0f70b989b041b5c3a40d2e8f.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924cc5c863b9429d18c53faf2ddb99bf66010592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
