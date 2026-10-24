# IsSelfAdjoint.spectralRadius_eq_nnnorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:539ae2cc-56f6-ea2b-b0ce-d9fb72b4cdee",
  "kind": "theorem",
  "lexical_name": "IsSelfAdjoint.spectralRadius_eq_nnnorm",
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
  "slug": "isselfadjoint-spectralradius-eq-nnnorm--50b3ff673d2b802fcebe0361",
  "source": {
    "blob": "f5a9603fbf1f74769e0c3ea58cc75febad5722c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50b3ff673d2b802fcebe0361da65f99e490e92b7225e59889786e2bdd3edd11e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:539ae2cc-56f6-ea2b-b0ce-d9fb72b4cdee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSelfAdjoint.spectralRadius_eq_nnnorm {a : A} (ha : IsSelfAdjoint a) :
    spectralRadius ℂ a = ‖a‖₊ := by
  have hconst : Tendsto (fun _n : ℕ => (‖a‖₊ : ℝ≥0∞)) atTop _ := tendsto_const_nhds
  refine tendsto_nhds_unique ?_ hconst
  convert
    (spectrum.pow_nnnorm_pow_one_div_tendsto_nhds_spectralRadius (a : A)).comp
      (Nat.tendsto_pow_atTop_atTop_of_one_lt one_lt_two) using 1
  refine funext fun n => ?_
  rw [Function.comp_apply, ha.nnnorm_pow_two_pow, ENNReal.coe_pow, ← rpow_natCast, ← rpow_mul]
  simp

/-- In a C⋆-algebra, the spectral radius of a self-adjoint element is equal to its norm.
See `IsSelfAdjoint.toReal_spectralRadius_eq_norm` for a version involving
`spectralRadius ℝ a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a9603fbf1f74769e0c3ea58cc75febad5722c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
