# hingePrimitive_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad49e323-8046-860a-12e6-5ac93ec926c3",
  "kind": "theorem",
  "lexical_name": "hingePrimitive_continuousAt",
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
  "slug": "hingeprimitive-continuousat--b53da722e2d460a4770c9f8d",
  "source": {
    "blob": "74bda4cc1552e84a6e9afb805bd572e7425c3f37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 124,
    "path": "GRWTSK/Analysis/ArithmeticPrimitive/Variant5127f119301f172b415e6acb3262b7cc5634c2dbcc8362a206a4afaf962f226e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b53da722e2d460a4770c9f8db14292e2b069339ad538257e3bd966fda56c2fb4",
  "verification": {
    "reference": "docs/verification/Analysis/ArithmeticPrimitive/Variant5127f119301f172b415e6acb3262b7cc5634c2dbcc8362a206a4afaf962f226e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad49e323-8046-860a-12e6-5ac93ec926c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hingePrimitive_continuousAt (b : ℕ → ℝ) (M : ℕ) {x : ℝ} (hx : 0 < x) :
    ContinuousAt (hingePrimitive b M) x := by
  have hinv : ContinuousAt (fun y : ℝ => (1 : ℝ) / Real.sqrt y) x :=
    continuousAt_const.div Real.continuous_sqrt.continuousAt (Real.sqrt_pos.2 hx).ne'
  apply continuousAt_const.mul
  apply tendsto_finsetSum
  intro n _
  exact continuousAt_const.mul ((continuousAt_const.sub hinv).max continuousAt_const)

/-- The actual closed inventory is continuous across every integer birth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ArithmeticPrimitive/Variant5127f119301f172b415e6acb3262b7cc5634c2dbcc8362a206a4afaf962f226e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ArithmeticPrimitive/Variant5127f119301f172b415e6acb3262b7cc5634c2dbcc8362a206a4afaf962f226e.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74bda4cc1552e84a6e9afb805bd572e7425c3f37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
