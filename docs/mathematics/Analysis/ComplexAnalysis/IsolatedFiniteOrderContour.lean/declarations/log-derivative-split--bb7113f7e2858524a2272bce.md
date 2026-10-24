# log_derivative_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00ca0786-265c-fb2f-3120-2a58db2ce6bc",
  "kind": "theorem",
  "lexical_name": "log_derivative_split",
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
  "slug": "log-derivative-split--bb7113f7e2858524a2272bce",
  "source": {
    "blob": "18b494775954f5ce491cdb66df689187be752499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 103,
    "path": "GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb7113f7e2858524a2272bceebc6d58ef2efa0d08663f98732e1032952089a70",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00ca0786-265c-fb2f-3120-2a58db2ce6bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_derivative_split (f g : ℂ → ℂ) (root z : ℂ) (m : ℕ)
    (positiveOrder : 0 < m) (identity : ∀ w, (w - root) ^ m * g w = f w)
    (factorAnalytic : AnalyticAt ℂ g z) (factorNonzero : g z ≠ 0)
    (different : z ≠ root) :
    deriv f z / f z = (m : ℂ) / (z - root) + deriv g z / g z := by
  cases m with
  | zero => omega
  | succ k =>
      have derivative : HasDerivAt (fun w : ℂ => (w - root) ^ (k + 1) * g w)
          (((k + 1 : ℕ) : ℂ) * (z - root) ^ k * g z +
            (z - root) ^ (k + 1) * deriv g z) z := by
        simpa only [Nat.add_sub_cancel, mul_one] using
          (((hasDerivAt_id z).sub_const root).pow (k + 1)).mul
            factorAnalytic.differentiableAt.hasDerivAt
      have functionsEqual : (fun w : ℂ => (w - root) ^ (k + 1) * g w) = f :=
        funext identity
      rw [functionsEqual] at derivative
      rw [derivative.deriv, ← identity z]
      simp only [pow_succ]
      field_simp [factorNonzero, sub_ne_zero.mpr different,
        pow_ne_zero k (sub_ne_zero.mpr different)] <;> ring

/-- The regular part has an analytic extension only after the FULL multiplicity is removed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18b494775954f5ce491cdb66df689187be752499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
