# errorProfile_tail_of_pnt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85ff86ade806250d5bc9b23fc407c519dd64d703",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/934278a79788ff5cd133e42186afe7fe05b50096012e4d1dd38b2ae7e1a932f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09472581-df66-ca76-fc04-577f1bbe98a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a233a5a-fd67-d30f-8b4e-8ca705fc5d0f",
  "kind": "theorem",
  "lexical_name": "errorProfile_tail_of_pnt",
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
  "slug": "errorprofile-tail-of-pnt--5a09f406bc325228e7341b7a",
  "source": {
    "blob": "85ff86ade806250d5bc9b23fc407c519dd64d703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant934278a79788ff5cd133e42186afe7fe05b50096012e4d1dd38b2ae7e1a932f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a09f406bc325228e7341b7a9671fbd38786fdf6c8f7e448500ee256f4821641",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant934278a79788ff5cd133e42186afe7fe05b50096012e4d1dd38b2ae7e1a932f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a233a5a-fd67-d30f-8b4e-8ca705fc5d0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem errorProfile_tail_of_pnt {c : ℝ} (hc : 0 < c)
    (hpnt : (Chebyshev.psi - id) =O[atTop]
      fun x : ℝ => x * Real.exp (-c * (Real.log x) ^ ((1 : ℝ) / 10))) :
    ∃ C > 0, ∃ T ≥ 1, ∀ A ≥ T, ∀ t ≥ A,
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  obtain ⟨C, hC, T, hT, hb⟩ := errorProfile_eventual_of_pnt hpnt
  refine ⟨C, hC, T, hT, ?_⟩
  intro A hA t ht
  refine (hb t (hA.trans ht)).trans ?_
  apply mul_le_mul_of_nonneg_left _ (mul_nonneg hC.le (Real.exp_pos _).le)
  apply Real.exp_le_exp.mpr
  have hp := Real.rpow_le_rpow (show 0 ≤ A by linarith) ht
    (show (0 : ℝ) ≤ 1 / 10 by norm_num)
  nlinarith

/-- The pinned unconditional PNT theorem transported to the actual signed source error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant934278a79788ff5cd133e42186afe7fe05b50096012e4d1dd38b2ae7e1a932f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant934278a79788ff5cd133e42186afe7fe05b50096012e4d1dd38b2ae7e1a932f8.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85ff86ade806250d5bc9b23fc407c519dd64d703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
