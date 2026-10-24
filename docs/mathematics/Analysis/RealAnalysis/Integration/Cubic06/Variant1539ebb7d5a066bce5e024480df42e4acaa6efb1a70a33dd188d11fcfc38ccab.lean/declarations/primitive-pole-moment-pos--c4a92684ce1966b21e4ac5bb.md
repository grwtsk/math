# primitive_pole_moment_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cb0691a-ffda-6cb1-1cfa-433cb76a1d5f",
  "kind": "theorem",
  "lexical_name": "primitive_pole_moment_pos",
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
  "slug": "primitive-pole-moment-pos--c4a92684ce1966b21e4ac5bb",
  "source": {
    "blob": "51b4c7225dbfd8bf07e3617e034018eea19c17fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 303,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic06/Variant1539ebb7d5a066bce5e024480df42e4acaa6efb1a70a33dd188d11fcfc38ccab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4a92684ce1966b21e4ac5bb92f0265297b543e0ee3cbe2a4400108dbc51efd0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cubic06/Variant1539ebb7d5a066bce5e024480df42e4acaa6efb1a70a33dd188d11fcfc38ccab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cb0691a-ffda-6cb1-1cfa-433cb76a1d5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_pole_moment_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < primitivePoleMoment A := by
  have hp : 0 < A := by linarith
  have hc := (normalizedPrimitiveBump_contDiff hp).continuous
  have hs := normalizedPrimitiveBump_hasCompactSupport hp
  have hf : Continuous (fun x : ℝ => Real.exp (x/2)*normalizedPrimitiveBump A x) := by fun_prop
  have hn (x : ℝ) : 0 ≤ Real.exp (x/2)*normalizedPrimitiveBump A x := by
    apply mul_nonneg (Real.exp_pos _).le
    rw [normalizedPrimitiveBump,scaledBump_eq_indicator A hp]
    by_cases hx : x ∈ Icc (-A) A
    · rw [indicator_of_mem hx]
      unfold bumpInterior
      positivity
    · rw [indicator_of_notMem hx]
      simp
  have hzero : Real.exp ((0 : ℝ)/2)*normalizedPrimitiveBump A 0 ≠ 0 := by
    rw [normalizedPrimitiveBump_eq_interior hp (by constructor <;> linarith)]
    unfold bumpInterior
    have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
    apply ne_of_gt
    simp only [zero_div,Real.exp_zero,one_mul]
    positivity
  exact hf.integral_pos_of_hasCompactSupport_nonneg_nonzero hs.mul_left hn hzero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cubic06/Variant1539ebb7d5a066bce5e024480df42e4acaa6efb1a70a33dd188d11fcfc38ccab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cubic06/Variant1539ebb7d5a066bce5e024480df42e4acaa6efb1a70a33dd188d11fcfc38ccab.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b4c7225dbfd8bf07e3617e034018eea19c17fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
