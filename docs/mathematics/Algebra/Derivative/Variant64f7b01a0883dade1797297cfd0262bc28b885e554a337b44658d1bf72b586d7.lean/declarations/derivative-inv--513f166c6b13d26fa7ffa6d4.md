# derivative_inv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:798b740b-7c87-5c17-c9bb-ce93a74bd77c",
  "kind": "theorem",
  "lexical_name": "derivative_inv'",
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
  "slug": "derivative-inv--513f166c6b13d26fa7ffa6d4",
  "source": {
    "blob": "c1a24bf97583e3d2d7cbffcaf3d881986a1f0368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 166,
    "path": "GRWTSK/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:513f166c6b13d26fa7ffa6d4a7756d9de02f892c67a93f73f1ce93fdaf6fb091",
  "verification": {
    "reference": "docs/verification/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:798b740b-7c87-5c17-c9bb-ce93a74bd77c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem derivative_inv' {R} [Field R] (f : R⟦X⟧) : d⁄dX R f⁻¹ = -f⁻¹ ^ 2 * d⁄dX R f := by
  by_cases h : constantCoeff R f = 0
  · suffices f⁻¹ = 0 by
      rw [this, pow_two, zero_mul, neg_zero, zero_mul, map_zero]
    rwa [MvPowerSeries.inv_eq_zero]
  apply Derivation.leibniz_of_mul_eq_one
  exact PowerSeries.inv_mul_cancel (h := h)

end PowerSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Derivative/Variant64f7b01a0883dade1797297cfd0262bc28b885e554a337b44658d1bf72b586d7.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1a24bf97583e3d2d7cbffcaf3d881986a1f0368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
