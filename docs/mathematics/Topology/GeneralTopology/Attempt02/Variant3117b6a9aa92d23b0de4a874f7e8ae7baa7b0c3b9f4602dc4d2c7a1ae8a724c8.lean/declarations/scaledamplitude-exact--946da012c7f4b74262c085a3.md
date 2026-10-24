# scaledAmplitude_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:006e0027-f564-3845-7ddc-aa6762f79d96",
  "kind": "theorem",
  "lexical_name": "scaledAmplitude_exact",
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
  "slug": "scaledamplitude-exact--946da012c7f4b74262c085a3",
  "source": {
    "blob": "5905cc592f66bb951cd1979a2e9264e109c878f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant3117b6a9aa92d23b0de4a874f7e8ae7baa7b0c3b9f4602dc4d2c7a1ae8a724c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:946da012c7f4b74262c085a31a5d8c61ee42812247c183f68cf13400088461a0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt02/Variant3117b6a9aa92d23b0de4a874f7e8ae7baa7b0c3b9f4602dc4d2c7a1ae8a724c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:006e0027-f564-3845-7ddc-aa6762f79d96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledAmplitude_exact {A : ℝ} (hA : 1 ≤ A) (z : ℂ) (hz : z ≠ 0) :
    scaledAmplitude A z =
      384*(z^2-1/4)/((Real.sqrt (sourceNormalization A) : ℂ)*z^9)*
        (transformPolynomial ((A : ℂ)*z)/(A : ℂ)^4-
          Complex.exp (-2*(A : ℂ)*z)*
            transformPolynomial (-((A : ℂ)*z))/(A : ℂ)^4) := by
  have hp : 0 < A := by linarith
  have ha : (A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hp.ne'
  have hs : (Real.sqrt A : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr hp).ne'
  have hZ : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  unfold scaledAmplitude
  rw [normalizedTransform_dictionary,ZeroTransform.actual_transform A hp z hz]
  unfold dividedTransform
  rw [ZeroTransform.source_scale A hp]
  push_cast
  have he : Complex.exp (-(A : ℂ)*z)*Complex.exp ((A : ℂ)*z) = 1 := by
    rw [← Complex.exp_add]
    simp
  have hn : Complex.exp (-(A : ℂ)*z)*Complex.exp (-(A : ℂ)*z) =
      Complex.exp (-2*(A : ℂ)*z) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  have hnum : Complex.exp (-(A : ℂ)*z)*
      (Complex.exp ((A : ℂ)*z)*transformPolynomial ((A : ℂ)*z)-
        Complex.exp (-(A : ℂ)*z)*transformPolynomial (-((A : ℂ)*z))) =
      transformPolynomial ((A : ℂ)*z)-
        Complex.exp (-2*(A : ℂ)*z)*transformPolynomial (-((A : ℂ)*z)) := by
    rw [mul_sub,← mul_assoc,he,one_mul,← mul_assoc,hn]
  calc
    _ = 384*(z^2-1/4)/((Real.sqrt (sourceNormalization A) : ℂ)*z^9)*
      (Complex.exp (-(A : ℂ)*z)*
        (Complex.exp ((A : ℂ)*z)*transformPolynomial ((A : ℂ)*z)-
          Complex.exp (-(A : ℂ)*z)*transformPolynomial (-((A : ℂ)*z)))/(A : ℂ)^4) := by
            field_simp
            ring
    _ = _ := by rw [hnum]; ring

end ContinuousResearch.ComplexBoundaryAsymptotic
end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt02/Variant3117b6a9aa92d23b0de4a874f7e8ae7baa7b0c3b9f4602dc4d2c7a1ae8a724c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt02/Variant3117b6a9aa92d23b0de4a874f7e8ae7baa7b0c3b9f4602dc4d2c7a1ae8a724c8.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5905cc592f66bb951cd1979a2e9264e109c878f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
