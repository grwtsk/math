# gl_smul_eq_self_iff_re_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfd4ebfd-2995-f2c0-ccc2-fe4f1c9252ae",
  "kind": "theorem",
  "lexical_name": "gl_smul_eq_self_iff_re_eq",
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
  "slug": "gl-smul-eq-self-iff-re-eq--8fed46844192b3f443fcceae",
  "source": {
    "blob": "8f3cb21f4417916793fc7585d7a0402e302db6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 58,
    "path": "GRWTSK/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fed46844192b3f443fcceae8c52d6fd822819ab159ce47df9b60497e2088c93",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfd4ebfd-2995-f2c0-ccc2-fe4f1c9252ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gl_smul_eq_self_iff_re_eq (htrace : g.val.trace = 0) (hc : g 1 0 = 0) :
    g • z = z ↔ z.re = g 0 1 / (2 * g 1 1) := by
  rw [Matrix.trace_fin_two, add_eq_zero_iff_eq_neg] at htrace
  have h₀ : g 1 1 ≠ 0 := by
    intro h₀
    simpa [Matrix.det_fin_two, hc, h₀] using g.det_ne_zero
  have h : g.val.det < 0 := by simp [Matrix.det_fin_two, *]
  simp [gl_smul_eq_iff_num_eq, Complex.ext_iff, htrace, hc, num, denom, σ, h.not_gt, mul_comm,
    eq_div_iff, h₀]
  grind

/-- If `g` is an orientation reversing matrix with trace zero and `c ≠ 0`,
then its action on the upper half plane has a half-circle of fixed points.
In the hyperbolic geometry, this half-circle is a line.
If `c = 0`, then this line is a vertical half-line in the usual geometry,
see `gl_smul_eq_self_iff_re_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3cb21f4417916793fc7585d7a0402e302db6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
