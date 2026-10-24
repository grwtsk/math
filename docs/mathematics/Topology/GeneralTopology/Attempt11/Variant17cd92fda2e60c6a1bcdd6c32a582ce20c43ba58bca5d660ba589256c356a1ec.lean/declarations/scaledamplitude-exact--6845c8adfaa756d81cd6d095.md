# scaledAmplitude_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba35867d-b95d-3c97-8ed3-4c304f4bfcab",
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
  "slug": "scaledamplitude-exact--6845c8adfaa756d81cd6d095",
  "source": {
    "blob": "8b97b6605f55e290edf4e32dde1cdfae781d0ad9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt11/Variant17cd92fda2e60c6a1bcdd6c32a582ce20c43ba58bca5d660ba589256c356a1ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6845c8adfaa756d81cd6d09595ee55f7a739662d51815b01770b5310a5573d81",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt11/Variant17cd92fda2e60c6a1bcdd6c32a582ce20c43ba58bca5d660ba589256c356a1ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba35867d-b95d-3c97-8ed3-4c304f4bfcab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–119.

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
    _ = _ := by rw [hnum]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt11/Variant17cd92fda2e60c6a1bcdd6c32a582ce20c43ba58bca5d660ba589256c356a1ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt11/Variant17cd92fda2e60c6a1bcdd6c32a582ce20c43ba58bca5d660ba589256c356a1ec.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b97b6605f55e290edf4e32dde1cdfae781d0ad9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
