# verify_strictly_decreasing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb3df0e91072452b6622122e711f380ffa89d952",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c762f059-fffe-fef8-dd88-c054d65ddf8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8aec8e46-e36b-74d4-96ca-9339805fdf64",
  "kind": "theorem",
  "lexical_name": "verify_strictly_decreasing",
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
  "slug": "verify-strictly-decreasing--c0e02d6089295e70e19425ac",
  "source": {
    "blob": "cb3df0e91072452b6622122e711f380ffa89d952",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 82,
    "path": "GRWTSK/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0e02d6089295e70e19425ac8813e16ed6093bc4156449ef413653110d90818c",
  "verification": {
    "reference": "docs/verification/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aec8e46-e36b-74d4-96ca-9339805fdf64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_strictly_decreasing (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (cfg : EvalConfig)
    (h_check : checkStrictlyDecreasing e I cfg = true) :
    StrictAntiOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc (I.lo : ℝ) I.hi) := by
  simp only [checkStrictlyDecreasing, decide_eq_true_eq] at h_check
  have hneg : (derivIntervalCore e I cfg).hi < 0 := by exact_mod_cast h_check
  exact strictAntiOn_of_derivIntervalCore_neg e hsupp I cfg hneg

/-! ### Alternative Formulations

These theorems provide the monotonicity result in the form
`∀ x y ∈ I, x < y → f(x) < f(y)`, which may be more convenient for some applications. -/

/-- Strictly increasing: x < y implies f(x) < f(y) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Monotonicity/Variantf6ec807a376414aab4c3f8f3ee9586fa4977fd8f9c6441d617657e6f97612b75.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb3df0e91072452b6622122e711f380ffa89d952` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
