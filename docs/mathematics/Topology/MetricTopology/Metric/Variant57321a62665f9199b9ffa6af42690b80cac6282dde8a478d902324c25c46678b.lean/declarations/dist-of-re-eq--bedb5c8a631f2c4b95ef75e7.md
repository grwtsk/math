# dist_of_re_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7256592c-381c-286b-2eee-1f8651c6d50e",
  "kind": "theorem",
  "lexical_name": "dist_of_re_eq",
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
  "slug": "dist-of-re-eq--bedb5c8a631f2c4b95ef75e7",
  "source": {
    "blob": "e7a86170063b026c6051d38a69c6d1bcb31babd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 208,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bedb5c8a631f2c4b95ef75e75c496426342506961b226d170b8990d98a4cbd56",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7256592c-381c-286b-2eee-1f8651c6d50e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem dist_of_re_eq (h : z.re = w.re) : dist z w = dist (log z.im) (log w.im) := by
  have h₀ : 0 < z.im / w.im := by positivity
  rw [dist_eq_iff_dist_coe_center_eq, Real.dist_eq, ← abs_sinh, ← log_div z.im_ne_zero w.im_ne_zero,
    sinh_log h₀, dist_of_re_eq, coe_im, coe_im, center_im, cosh_abs, cosh_log h₀, inv_div] <;>
  [skip; exact h]
  nth_rw 4 [← abs_of_pos w.im_pos]
  simp only [← _root_.abs_mul, coe_im, Real.dist_eq]
  congr 1
  field_simp
  ring
/-- Hyperbolic distance between two points is greater than or equal to the distance between the
logarithms of their imaginary parts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant57321a62665f9199b9ffa6af42690b80cac6282dde8a478d902324c25c46678b.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7a86170063b026c6051d38a69c6d1bcb31babd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
