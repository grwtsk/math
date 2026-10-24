# verify_upper_bound_smart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b90eb9080a8009f35dc347d504f36f46b6c4cdfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:195a19e9-f08c-a1d4-dc78-346a74991dd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9292f450-a050-0d4f-2a61-8261ac7e45d0",
  "kind": "theorem",
  "lexical_name": "verify_upper_bound_smart",
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
  "slug": "verify-upper-bound-smart--0fa73633e9b06e4e66878fd6",
  "source": {
    "blob": "b90eb9080a8009f35dc347d504f36f46b6c4cdfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 292,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fa73633e9b06e4e66878fd65f6f560f62310e773b86298ce4cfef3e759ac8d1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9292f450-a050-0d4f-2a61-8261ac7e45d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_upper_bound_smart (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (c : ℚ) (cfg : EvalConfig)
    (h_cert : checkUpperBoundSmart e I c cfg = true) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e ≤ c := by
  unfold checkUpperBoundSmart at h_cert
  -- Split on the Bool conditions
  split at h_cert
  · -- Case 1: Standard check passed
    rename_i h_std
    exact verify_upper_bound e hsupp.toCore I c cfg h_std
  · -- Standard check failed, simplify the let binding and split
    rename_i h_std_neg
    simp only at h_cert  -- eliminate let binding
    split at h_cert
    · -- Case 2: Derivative strictly positive (increasing), max at hi
      rename_i h_pos
      intro x hx
      have hhi_mem : (I.hi : ℝ) ∈ IntervalRat.singleton I.hi := IntervalRat.mem_singleton I.hi
      -- Extract domain validity and bound from the combined check
      simp only [Bool.and_eq_true, decide_eq_true_eq] at h_cert
      have hdom := checkDomainValid1_correct e (IntervalRat.singleton I.hi) cfg h_cert.1
      have hbound := h_cert.2
      have heval := evalIntervalCore1_correct e hsupp.toCore I.hi (IntervalRat.singleton I.hi) hhi_mem cfg hdom
      simp only [IntervalRat.mem_def] at heval
      have hmono := increasing_max_at_right_core e hsupp I cfg h_pos x hx
      calc Expr.eval (fun _ => x) e ≤ Expr.eval (fun _ => I.hi) e := hmono
        _ ≤ (evalIntervalCore1 e (IntervalRat.singleton I.hi) cfg).hi := heval.2
        _ ≤ c := by exact_mod_cast hbound
    · -- Not increasing, split on decreasing condition
      rename_i h_pos_neg
      split at h_cert
      · -- Case 3: Derivative strictly negative (decreasing), max at lo
        rename_i h_neg
        intro x hx
        have hlo_mem : (I.lo : ℝ) ∈ IntervalRat.singleton I.lo := IntervalRat.mem_singleton I.lo
        -- Extract domain validity and bound from the combined check
        simp only [Bool.and_eq_true, decide_eq_true_eq] at h_cert
        have hdom := checkDomainValid1_correct e (IntervalRat.singleton I.lo) cfg h_cert.1
        have hbound := h_cert.2
        have heval := evalIntervalCore1_correct e hsupp.toCore I.lo (IntervalRat.singleton I.lo) hlo_mem cfg hdom
        simp only [IntervalRat.mem_def] at heval
        have hmono := decreasing_max_at_left_core e hsupp I cfg h_neg x hx
        calc Expr.eval (fun _ => x) e ≤ Expr.eval (fun _ => I.lo) e := hmono
          _ ≤ (evalIntervalCore1 e (IntervalRat.singleton I.lo) cfg).hi := heval.2
          _ ≤ c := by exact_mod_cast hbound
      · -- Neither increasing nor decreasing => impossible since h_cert = true
        exact absurd h_cert Bool.false_ne_true

end LeanCert.Validity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90eb9080a8009f35dc347d504f36f46b6c4cdfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
