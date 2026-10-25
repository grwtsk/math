# evalAffine2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ab4b1c6a66beb14a5ce65140b748a8e81a6b4d2b0ba1188a64c77ca1f932445",
  "kind": "def",
  "lexical_name": "evalAffine2",
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
  "slug": "evalaffine2--496e586734edd39e6cab7ce4",
  "source": {
    "blob": "5d3ed0fee4e238b31ac1b892245970986b78aab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:496e586734edd39e6cab7ce4e0aa7ca0f8704a2b91d9bd24113d1d8d4a3701f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ab4b1c6a66beb14a5ce65140b748a8e81a6b4d2b0ba1188a64c77ca1f932445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalAffine2 (e : Expr) (I1 I2 : IntervalRat) : IntervalRat :=
  (evalIntervalAffine e (mkAffineEnv2 I1 I2) {}).toInterval

-- x + y - x on x ∈ [-1,1], y ∈ [0,2] should give y's range [0, 2]
#eval evalAffine2 exprXPlusYMinusX testInterval ⟨0, 2, by norm_num⟩
-- Expected: [0, 2] (exact range of y)

-- Compare with rational which loses the x correlation
#eval evalIntervalCore exprXPlusYMinusX
  (fun i => if i == 0 then testInterval else ⟨0, 2, by norm_num⟩) {}
-- Expected: Wider than [0, 2]

/-! ### Neural Network-Like Expressions -/

/-- LayerNorm-style expression: (x - mean) / std where mean and std depend on x -/
-- Simplified: x - (x/2) = x/2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d3ed0fee4e238b31ac1b892245970986b78aab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
