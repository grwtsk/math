# generic_signed_tail_sign_change_preserves_compensated_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eeebd0d392cf908f747bd822d99520704ac949e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7f444bcb845adb682a623c3846994e0e5ffd002034c915e3f80cc53da34bfea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ae968db-0737-9751-5d3e-d0e89064a637",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c44cfb8-fd4b-02f5-50bc-a32d6a4f3b1d",
  "kind": "theorem",
  "lexical_name": "generic_signed_tail_sign_change_preserves_compensated_total",
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
  "slug": "generic-signed-tail-sign-change-preserves-compensated-total--c27ebf8b06f8864caad22933",
  "source": {
    "blob": "eeebd0d392cf908f747bd822d99520704ac949e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalCutoffComplementFixtures/Variantd7f444bcb845adb682a623c3846994e0e5ffd002034c915e3f80cc53da34bfea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c27ebf8b06f8864caad22933287bc4ce65b1f8fc731ee1927b25fb8d4e0196c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalCutoffComplementFixtures/Variantd7f444bcb845adb682a623c3846994e0e5ffd002034c915e3f80cc53da34bfea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c44cfb8-fd4b-02f5-50bc-a32d6a4f3b1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generic_signed_tail_sign_change_preserves_compensated_total :
    let f : ℕ → ℝ := fun n => if n = 2 then -2 else if n = 4 then 1 else 0
    (∑ n ∈ Finset.Ioc 1 4, f n) = -1 ∧
    (∑ n ∈ Finset.Ioc 2 4, f n) = 1 ∧
    (∑ n ∈ Finset.Ioc 4 4, f n) = 0 ∧
    (∑ n ∈ Finset.Ioc 7 4, f n) = 0 ∧
    ((∑ n ∈ Finset.Icc 1 1, f n) + (∑ n ∈ Finset.Ioc 1 4, f n)) = -1 ∧
    ((∑ n ∈ Finset.Icc 1 2, f n) + (∑ n ∈ Finset.Ioc 2 4, f n)) = -1 ∧
    ((∑ n ∈ Finset.Icc 1 4, f n) + (∑ n ∈ Finset.Ioc 4 4, f n)) = -1 ∧
    ((∑ n ∈ Finset.Icc 1 7, f n) + (∑ n ∈ Finset.Ioc 7 4, f n)) = -1 := by
  have ht1 : Finset.Ioc (1 : ℕ) 4 = {2, 3, 4} := by decide
  have ht2 : Finset.Ioc (2 : ℕ) 4 = {3, 4} := by decide
  have ht4 : Finset.Ioc (4 : ℕ) 4 = ∅ := by decide
  have ht7 : Finset.Ioc (7 : ℕ) 4 = ∅ := by decide
  have hp1 : Finset.Icc (1 : ℕ) 1 = {1} := by decide
  have hp2 : Finset.Icc (1 : ℕ) 2 = {1, 2} := by decide
  have hp4 : Finset.Icc (1 : ℕ) 4 = {1, 2, 3, 4} := by decide
  have hp7 : Finset.Icc (1 : ℕ) 7 = {1, 2, 3, 4, 5, 6, 7} := by decide
  norm_num [ht1, ht2, ht4, ht7, hp1, hp2, hp4, hp7]

/-- A fixed finite carrier can have growing complete value, defeating a uniform eventual cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalCutoffComplementFixtures/Variantd7f444bcb845adb682a623c3846994e0e5ffd002034c915e3f80cc53da34bfea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalCutoffComplementFixtures/Variantd7f444bcb845adb682a623c3846994e0e5ffd002034c915e3f80cc53da34bfea.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeebd0d392cf908f747bd822d99520704ac949e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
