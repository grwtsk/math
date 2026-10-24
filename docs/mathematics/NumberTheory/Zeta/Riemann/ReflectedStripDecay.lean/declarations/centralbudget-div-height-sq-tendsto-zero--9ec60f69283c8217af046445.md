# centralBudget_div_height_sq_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:659cb3fa-3269-5211-15ec-06bb6dfb97d3",
  "kind": "theorem",
  "lexical_name": "centralBudget_div_height_sq_tendsto_zero",
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
  "slug": "centralbudget-div-height-sq-tendsto-zero--9ec60f69283c8217af046445",
  "source": {
    "blob": "6a8d7935113a23e1e6009ffcb44f54a0785efce3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ec60f69283c8217af04644534ec8f1adae0142ea2b8be197635c1a844ec0947",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:659cb3fa-3269-5211-15ec-06bb6dfb97d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centralBudget_div_height_sq_tendsto_zero :
    Tendsto (fun N : ℕ => centralBudget N / (separatedHeight N) ^ 2)
      atTop (𝓝 0) := by
  have ht := ((growthLog_div_height_tendsto_zero.pow 2).const_mul
    (8 / (Real.log (12 / 11 : ℝ) * Real.log (6 / 5 : ℝ)))).add
    ((growthLog_div_height_tendsto_zero.mul inv_height_tendsto_zero).const_mul
      (80 + 5 / Real.log (12 / 11 : ℝ)))
  convert ht using 1
  · funext N
    unfold centralBudget
    rw [budget_eq_quadratic]
    simp only [div_eq_mul_inv, mul_pow, inv_pow]
    ring
  · simp

/-- No caller supplies the normalized growth condition from the old ray theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ReflectedStripDecay.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a8d7935113a23e1e6009ffcb44f54a0785efce3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
