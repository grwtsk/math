# mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4b06c2a-8575-3a04-f64f-f6bccc8d8bd0",
  "kind": "theorem",
  "lexical_name": "mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_zero",
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
  "slug": "mul-dist-eq-mul-dist-of-cospherical-of-angle-eq-zero--c3f261aeb23d6e272b670b5d",
  "source": {
    "blob": "49548dbc20367c94288544c373ea993b8f703f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 124,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3f261aeb23d6e272b670b5dc9b00d8964245f240d14543a4ad1ef0a6dd2c4e2",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4b06c2a-8575-3a04-f64f-f6bccc8d8bd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_zero {a b c d p : P}
    (h : Cospherical ({a, b, c, d} : Set P)) (hab : a ≠ b) (hcd : c ≠ d) (hapb : ∠ a p b = 0)
    (hcpd : ∠ c p d = 0) : dist a p * dist b p = dist c p * dist d p := by
  obtain ⟨-, k₁, -, hab₁⟩ := angle_eq_zero_iff.mp hapb
  obtain ⟨-, k₂, -, hcd₁⟩ := angle_eq_zero_iff.mp hcpd
  refine mul_dist_eq_mul_dist_of_cospherical h ⟨k₁, ?_, hab₁⟩ ⟨k₂, ?_, hcd₁⟩ <;> by_contra hnot <;>
    simp_all only [Classical.not_not, one_smul]
  exacts [hab (vsub_left_cancel hab₁).symm, hcd (vsub_left_cancel hcd₁).symm]

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variantcac736fd98dfe0930fae600a4741da688376aa860b709d425b0984a4db534ea7.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49548dbc20367c94288544c373ea993b8f703f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
