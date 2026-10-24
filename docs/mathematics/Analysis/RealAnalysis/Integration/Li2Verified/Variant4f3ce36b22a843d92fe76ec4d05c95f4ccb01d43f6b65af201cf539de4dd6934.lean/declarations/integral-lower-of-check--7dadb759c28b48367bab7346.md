# integral_lower_of_check

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8eb251967f2b49e0bad95e0d200c55fb0536be4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74470345-9758-8797-beab-caae6e943003",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26948f9a-f754-f408-92e1-f1169400c1f9",
  "kind": "theorem",
  "lexical_name": "integral_lower_of_check",
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
  "slug": "integral-lower-of-check--7dadb759c28b48367bab7346",
  "source": {
    "blob": "d8eb251967f2b49e0bad95e0d200c55fb0536be4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dadb759c28b48367bab7346461676b8bded2f991d20e576e495346a0781a6a0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26948f9a-f754-f408-92e1-f1169400c1f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_lower_of_check (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (n : ℕ) (hn : 0 < n) (c : ℚ)
    (hcheck : checkIntegralLowerBound e I n c = true)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) MeasureTheory.volume I.lo I.hi) :
    (c : ℝ) ≤ ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e := by
  unfold checkIntegralLowerBound at hcheck
  cases hbound : integratePartitionWithInv e I n with
  | none => simp [hbound] at hcheck
  | some J =>
    simp only [hbound, decide_eq_true_eq] at hcheck
    have hmem := integratePartitionWithInv_correct e hsupp I n hn J hbound hInt
    simp only [IntervalRat.mem_def] at hmem
    calc (c : ℝ) ≤ (J.lo : ℝ) := by exact_mod_cast hcheck
      _ ≤ ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e := hmem.1

/-- Bridge theorem: if `checkIntegralUpperBound` returns true, the integral is ≤ c. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8eb251967f2b49e0bad95e0d200c55fb0536be4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
