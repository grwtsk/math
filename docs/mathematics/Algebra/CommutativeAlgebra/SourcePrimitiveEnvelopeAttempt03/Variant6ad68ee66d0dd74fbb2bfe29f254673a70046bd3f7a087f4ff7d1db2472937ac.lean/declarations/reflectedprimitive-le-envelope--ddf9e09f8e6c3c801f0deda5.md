# reflectedPrimitive_le_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27ac39ba-f9bd-0e8b-ee47-354d76a5a6e9",
  "kind": "theorem",
  "lexical_name": "reflectedPrimitive_le_envelope",
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
  "slug": "reflectedprimitive-le-envelope--ddf9e09f8e6c3c801f0deda5",
  "source": {
    "blob": "12be02b53e08dd6280a90ad561351dd0f33442ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 142,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt03/Variant6ad68ee66d0dd74fbb2bfe29f254673a70046bd3f7a087f4ff7d1db2472937ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddf9e09f8e6c3c801f0deda50d4a8e062a007fc344adf97348721429fb4cfd72",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt03/Variant6ad68ee66d0dd74fbb2bfe29f254673a70046bd3f7a087f4ff7d1db2472937ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27ac39ba-f9bd-0e8b-ee47-354d76a5a6e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedPrimitive_le_envelope {A y : ℝ} (hA : 1≤A)
    (hy : y∈Icc (0:ℝ) (2*A)) : reflectedPrimitive A y≤reflectedEnvelope y := by
  have hp : 0<A := by linarith
  have hy0 : 0≤y := hy.1
  have hu : (2*A-y)/A∈Icc (0:ℝ) 2 := by
    constructor
    · exact div_nonneg (by linarith [hy.2]) hp.le
    · exact (div_le_iff₀ hp).mpr (by linarith [hy.1])
  have he : 2-(2*A-y)/A=y/A := by field_simp <;> ring
  have h0 := mul_le_mul_of_nonneg_left (overlapPolynomial0_upper hu) (pow_nonneg hp.le 9)
  have h1 := mul_le_mul_of_nonneg_left (overlapPolynomial1_upper hu) (pow_nonneg hp.le 8)
  have h2 := mul_le_mul_of_nonneg_left (overlapPolynomial2_upper hu) (pow_nonneg hp.le 7)
  rw [he] at h0 h1 h2
  have e0 : A^9*((128/315:ℝ)*(y/A)^9)=(128/315:ℝ)*y^9 := by field_simp
  have e1 : A^8*((128/35:ℝ)*(y/A)^8)=(128/35:ℝ)*y^8 := by field_simp
  have e2 : A^7*((1024/35:ℝ)*(y/A)^7)=(1024/35:ℝ)*y^7 := by field_simp
  rw [e0] at h0
  rw [e1] at h1
  rw [e2] at h2
  have hb : A^7*overlapPolynomial2 ((2*A-y)/A)-A^8*overlapPolynomial1 ((2*A-y)/A)+
      A^9*overlapPolynomial0 ((2*A-y)/A)/4≤
      (1024/35:ℝ)*y^7+(128/35:ℝ)*y^8+(32/315:ℝ)*y^9 := by
    nlinarith
  have hz := source_normalization_pos A hA
  have hn : 0≤(1024/35:ℝ)*y^7+(128/35:ℝ)*y^8+(32/315:ℝ)*y^9 := by positivity
  rw [reflectedPrimitive_polynomial]
  have hm := mul_le_mul_of_nonneg_left hb (by positivity : 0≤Real.exp (-y/2)/sourceNormalization A)
  apply hm.trans
  have hd : ((1024/35:ℝ)*y^7+(128/35:ℝ)*y^8+(32/315:ℝ)*y^9)/sourceNormalization A≤
      ((1024/35:ℝ)*y^7+(128/35:ℝ)*y^8+(32/315:ℝ)*y^9)/(4096/109395:ℝ) :=
    div_le_div_of_nonneg_left hn (by norm_num) (source_normalization_lower A)
  have hh := mul_le_mul_of_nonneg_left hd (Real.exp_pos (-y/2)).le
  calc
    _ = Real.exp (-y/2)*(((1024/35:ℝ)*y^7+(128/35:ℝ)*y^8+(32/315:ℝ)*y^9)/sourceNormalization A) := by ring
    _ ≤ _ := hh
    _ = reflectedEnvelope y := by unfold reflectedEnvelope; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt03/Variant6ad68ee66d0dd74fbb2bfe29f254673a70046bd3f7a087f4ff7d1db2472937ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt03/Variant6ad68ee66d0dd74fbb2bfe29f254673a70046bd3f7a087f4ff7d1db2472937ac.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12be02b53e08dd6280a90ad561351dd0f33442ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
