# half_scale_cancellation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:612df10d-7e3a-a061-5123-27fb3bd4f6cb",
  "kind": "theorem",
  "lexical_name": "half_scale_cancellation",
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
  "slug": "half-scale-cancellation--4b879b09afb1ab386e39f3f2",
  "source": {
    "blob": "fc2fb352a57fd2cc8e05d192cacec872731e6ceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 102,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/C6ModEight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b879b09afb1ab386e39f3f2fba8fafbc15937deed6b70ed42f94dcd4b6d9d2a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:612df10d-7e3a-a061-5123-27fb3bd4f6cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_scale_cancellation {R : Type*} [CommRing R] {K : Type*}
    [Field K] [CharZero K] [Algebra R K]
    (hinj : Function.Injective (algebraMap R K))
    (W : WeierstrassCurve K) (C : VariableChange K) (W' : WeierstrassCurve R)
    (hmodel : W'.baseChange K=C • W) (ε : Rˣ)
    (hu : (C.u : K)=2*algebraMap R K (ε : R)) (F : R)
    (hraw : W.c₆= -32*algebraMap R K F) :
    F = -2*(ε : R)^6*W'.c₆ := by
  have hi : algebraMap R K W'.c₆=(C • W).c₆ := by
    rw [← hmodel,WeierstrassCurve.baseChange,WeierstrassCurve.map_c₆]
  have hs : algebraMap R K W'.c₆*(C.u : K)^6=W.c₆ := by
    rw [hi,variableChange_c₆,Units.val_inv_eq_inv_val]
    field_simp [C.u.ne_zero]
  rw [hu,hraw] at hs
  apply hinj
  simp only [map_mul,map_neg,map_ofNat,map_pow]
  have hh : (32 : K)*(algebraMap R K F)=
      32*(-2*(algebraMap R K (ε : R))^6*algebraMap R K W'.c₆) := by
    linear_combination hs
  exact mul_left_cancel₀ (by norm_num : (32 : K)≠0) hh

end GRWTSK.AlgebraicGeometry.EllipticCurve.C6ModEight
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/C6ModEight.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc2fb352a57fd2cc8e05d192cacec872731e6ceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
