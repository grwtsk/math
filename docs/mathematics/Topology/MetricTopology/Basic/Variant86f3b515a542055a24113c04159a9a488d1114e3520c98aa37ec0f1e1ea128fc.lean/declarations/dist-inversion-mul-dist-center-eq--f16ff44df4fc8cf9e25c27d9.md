# dist_inversion_mul_dist_center_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9795d9c-03e2-7a39-fae3-442c85afe005",
  "kind": "theorem",
  "lexical_name": "dist_inversion_mul_dist_center_eq",
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
  "slug": "dist-inversion-mul-dist-center-eq--f16ff44df4fc8cf9e25c27d9",
  "source": {
    "blob": "29906d71d40aff862123d44634945ae14980abe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 167,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f16ff44df4fc8cf9e25c27d97ef28746b66094e572546abf733a7ba2d2afb119",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9795d9c-03e2-7a39-fae3-442c85afe005`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_inversion_mul_dist_center_eq (hx : x ≠ c) (hy : y ≠ c) :
    dist (inversion c R x) y * dist x c = dist x (inversion c R y) * dist y c := by
  rcases eq_or_ne R 0 with rfl | hR; · simp [dist_comm, mul_comm]
  have hy' : inversion c R y ≠ c := by simp [*]
  conv in dist _ y => rw [← inversion_inversion c hR y]
  rw [dist_inversion_inversion hx hy', dist_inversion_center]
  have : dist x c ≠ 0 := dist_ne_zero.2 hx
  -- used to be `field_simp`, but was really slow; replaced by `simp only ...` to speed up
  -- TODO(https://github.com/leanprover-community/mathlib4/issues/15486): reinstate `field_simp` once it is faster.
  simp (disch := field_simp_discharge) only [mul_div_assoc', div_div_eq_mul_div, div_mul_eq_mul_div,
    div_eq_iff]
  ring

/-!
### Ptolemy's inequality
-/

include V in
/-- **Ptolemy's inequality**: in a quadrangle `ABCD`, `|AC| * |BD| ≤ |AB| * |CD| + |BC| * |AD|`. If
`ABCD` is a convex cyclic polygon, then this inequality becomes an equality, see
`EuclideanGeometry.mul_dist_add_mul_dist_eq_mul_dist_of_cospherical`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29906d71d40aff862123d44634945ae14980abe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
