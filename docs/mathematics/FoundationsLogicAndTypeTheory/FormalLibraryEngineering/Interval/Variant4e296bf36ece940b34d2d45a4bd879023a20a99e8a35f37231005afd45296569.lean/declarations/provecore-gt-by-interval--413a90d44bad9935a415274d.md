# proveCore_gt_by_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6a8cc71ebb6e3b4f890141cdf4bac4adddc6f3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1601c93d-9c6e-3063-66e0-d70dc227de22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0bd86c33-0525-ee29-2af9-dabdb7bdc9e3",
  "kind": "theorem",
  "lexical_name": "proveCore_gt_by_interval",
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
  "slug": "provecore-gt-by-interval--413a90d44bad9935a415274d",
  "source": {
    "blob": "c6a8cc71ebb6e3b4f890141cdf4bac4adddc6f3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:413a90d44bad9935a415274df1a7e3f1c50192d1d731711d3078de3f83705a35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bd86c33-0525-ee29-2af9-dabdb7bdc9e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proveCore_gt_by_interval (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (c : ℚ) (cfg : EvalConfig := {}) (x : ℝ) (hx : x ∈ I)
    (hdom : evalDomainValid1 e I cfg)
    (hdec : decide (c < (evalIntervalCore1 e I cfg).lo) = true) :
    c < Expr.eval (fun _ => x) e := by
  have hlo := (intervalCore_lo_gt_decide e I c cfg).mpr hdec
  exact exprCore_gt_of_interval_lo_gt e hsupp I c cfg hdom hlo x hx

/-! ### Universal quantifier versions (core, computable) -/

/-- Prove ∀ x ∈ I, f(x) ≤ c by core interval arithmetic.
    Works with native_decide for expressions in ExprSupportedCore.
    Requires domain validity (e.g., log arguments must be positive). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6a8cc71ebb6e3b4f890141cdf4bac4adddc6f3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
