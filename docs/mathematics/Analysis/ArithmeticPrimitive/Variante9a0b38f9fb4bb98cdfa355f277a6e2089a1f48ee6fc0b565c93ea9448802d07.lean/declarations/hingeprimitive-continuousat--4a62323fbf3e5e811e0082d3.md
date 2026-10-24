# hingePrimitive_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4154f010-ffc9-bec4-cef3-5875be30c44b",
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
  "slug": "hingeprimitive-continuousat--4a62323fbf3e5e811e0082d3",
  "source": {
    "blob": "ac976b87b18329264ec1745f48ca0bb9136213dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 102,
    "path": "GRWTSK/Analysis/ArithmeticPrimitive/Variante9a0b38f9fb4bb98cdfa355f277a6e2089a1f48ee6fc0b565c93ea9448802d07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a62323fbf3e5e811e0082d351f5c625fee60a8993b17eaca81b3f5f1cf84aeb",
  "verification": {
    "reference": "docs/verification/Analysis/ArithmeticPrimitive/Variante9a0b38f9fb4bb98cdfa355f277a6e2089a1f48ee6fc0b565c93ea9448802d07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4154f010-ffc9-bec4-cef3-5875be30c44b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–111.

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

[Verification target and public status](../../../../../verification/Analysis/ArithmeticPrimitive/Variante9a0b38f9fb4bb98cdfa355f277a6e2089a1f48ee6fc0b565c93ea9448802d07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ArithmeticPrimitive/Variante9a0b38f9fb4bb98cdfa355f277a6e2089a1f48ee6fc0b565c93ea9448802d07.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac976b87b18329264ec1745f48ca0bb9136213dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
