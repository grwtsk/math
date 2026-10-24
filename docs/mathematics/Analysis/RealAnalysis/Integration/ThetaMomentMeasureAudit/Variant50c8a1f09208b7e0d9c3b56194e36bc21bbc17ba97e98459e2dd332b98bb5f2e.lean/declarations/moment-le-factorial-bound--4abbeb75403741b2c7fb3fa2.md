# moment_le_factorial_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ce99ede775e5c4726064fac107c1d878c51c659",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:393331f3-ce62-bf25-cb7b-e987723b30f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30227a6b-7e13-ab0f-928b-4310758a7c43",
  "kind": "theorem",
  "lexical_name": "moment_le_factorial_bound",
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
  "slug": "moment-le-factorial-bound--4abbeb75403741b2c7fb3fa2",
  "source": {
    "blob": "5ce99ede775e5c4726064fac107c1d878c51c659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4abbeb75403741b2c7fb3fa2bbeb2fe035f273b0de17bd709c29d90461127455",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30227a6b-7e13-ab0f-928b-4310758a7c43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moment_le_factorial_bound (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    moment t n ≤ (n.factorial : ℝ) * thetaPhiDecayConstant * Real.exp (-3 * t) := by
  rw [moment_eq_factorial_mul_thetaTail n ht, mul_assoc]
  exact mul_le_mul_of_nonneg_left (thetaTail_le_exp_neg_three_mul (n + 1) ht)
    (by positivity)

/-- The actual magnitude measure is finite; integrability is proved first. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ce99ede775e5c4726064fac107c1d878c51c659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
