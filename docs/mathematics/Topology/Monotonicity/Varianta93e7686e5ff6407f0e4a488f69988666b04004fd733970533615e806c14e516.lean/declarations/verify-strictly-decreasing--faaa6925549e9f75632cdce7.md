# verify_strictly_decreasing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b4e057b-22ca-5853-b354-63928d704dd8",
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
  "slug": "verify-strictly-decreasing--faaa6925549e9f75632cdce7",
  "source": {
    "blob": "1fd90288805fd1c6206ef35645e9940031b45bf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 90,
    "path": "GRWTSK/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faaa6925549e9f75632cdce733e13e15bea112ad401af5762504651e38769384",
  "verification": {
    "reference": "docs/verification/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b4e057b-22ca-5853-b354-63928d704dd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–103.

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

[Verification target and public status](../../../../../verification/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Monotonicity/Varianta93e7686e5ff6407f0e4a488f69988666b04004fd733970533615e806c14e516.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fd90288805fd1c6206ef35645e9940031b45bf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
