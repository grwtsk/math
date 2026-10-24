# overlapPolynomial2_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:861b41fc-d8c2-606f-d884-4b9b7a2de382",
  "kind": "theorem",
  "lexical_name": "overlapPolynomial2_upper",
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
  "slug": "overlappolynomial2-upper--f89fa7668a6bb6fdc2f9bf8c",
  "source": {
    "blob": "ba9fef194c076b14a85e9f3a9db50b7b2266d397",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 85,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant719a0c094894fc0fdf6f7c60dc84b5f513dbc7fbd7588b1c83edb5585bddcd90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f89fa7668a6bb6fdc2f9bf8c95cb80bacfa437499b664dc0296c923350312125",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant719a0c094894fc0fdf6f7c60dc84b5f513dbc7fbd7588b1c83edb5585bddcd90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:861b41fc-d8c2-606f-d884-4b9b7a2de382`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlapPolynomial2_upper {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    overlapPolynomial2 u≤(1024/35:ℝ)*(2-u)^7 := by
  have hp := overlapFactor1_nonneg hu.1
  have hsub : 0≤(2-u)*(overlapFactor1 u+u*overlapFactor1Prime u) :=
    mul_nonneg (by linarith [hu.2]) (add_nonneg hp.1 (mul_nonneg hu.1 hp.2))
  have hx : u*overlapFactor1 u≤2*164736 :=
    mul_le_mul hu.2 (overlapFactor1_bound hu) hp.1 (by norm_num)
  have hi : 8*u*overlapFactor1 u-
      (2-u)*(overlapFactor1 u+u*overlapFactor1Prime u)≤16*164736 := by
    nlinarith
  have hm := mul_le_mul_of_nonneg_left hi
    (pow_nonneg (by linarith [hu.2] : 0≤2-u) 7)
  have hq := div_le_div_of_nonneg_right hm (by norm_num : (0:ℝ)≤90090)
  rw [overlapPolynomial2_factor]
  calc
    _ ≤ (2-u)^7*(16*164736)/90090 := hq
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant719a0c094894fc0fdf6f7c60dc84b5f513dbc7fbd7588b1c83edb5585bddcd90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant719a0c094894fc0fdf6f7c60dc84b5f513dbc7fbd7588b1c83edb5585bddcd90.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba9fef194c076b14a85e9f3a9db50b7b2266d397` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
