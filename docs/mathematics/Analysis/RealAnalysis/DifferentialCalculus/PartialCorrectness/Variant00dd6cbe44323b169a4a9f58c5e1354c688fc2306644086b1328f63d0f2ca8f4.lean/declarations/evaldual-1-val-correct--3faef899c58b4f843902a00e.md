# evalDual?1_val_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30ad84c6-166c-31f2-357c-10d26dccb2ab",
  "kind": "theorem",
  "lexical_name": "evalDual?1_val_correct",
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
  "slug": "evaldual-1-val-correct--3faef899c58b4f843902a00e",
  "source": {
    "blob": "dae94a66788cd7cac8eab43666b00a4d89b309c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 231,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3faef899c58b4f843902a00e4fd8c32f41aec9ba85619ac0c08c2f44a06442e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30ad84c6-166c-31f2-357c-10d26dccb2ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalDual?1_val_correct (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (D : DualInterval) (x : ℝ) (hx : x ∈ I)
    (hsome : evalDual?1 e I = some D) :
    Expr.eval (fun _ => x) e ∈ D.val := by
  apply evalDual?_val_correct e hsupp (fun _ => x) (fun _ => DualInterval.varActive I)
  · exact hsome
  · intro _; exact hx

/-- Helper lemma: evalFunc1 for inv unfolds correctly -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant00dd6cbe44323b169a4a9f58c5e1354c688fc2306644086b1328f63d0f2ca8f4.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dae94a66788cd7cac8eab43666b00a4d89b309c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
