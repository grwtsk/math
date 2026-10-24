# curvature_pairing_of_linear_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f2974e1-c946-ee5f-ac34-81d56a045bf2",
  "kind": "theorem",
  "lexical_name": "curvature_pairing_of_linear_envelope",
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
  "slug": "curvature-pairing-of-linear-envelope--98b59fb7792c0cc6ed1f4fce",
  "source": {
    "blob": "a80c406a4e999df0811385886f3a8710de8cd5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 265,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98b59fb7792c0cc6ed1f4fcecf16d001231c2f178618036d29079e12d822faf1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f2974e1-c946-ee5f-ac34-81d56a045bf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curvature_pairing_of_linear_envelope {A : ℝ} (hA : 1 ≤ A)
    (h : ℝ → ℝ) (hh : Continuous h) (E : ℝ)
    (henv : ∀ t ∈ Icc 0 (2*A), |h t| ≤ E*t) :
    |∫ t in 0..2*A, curvature A t * h t| ≤ (325652/7623)*E := by
  have hp : 0 < A := by linarith
  have hi := curvature_pairing_intervalIntegrable hp h hh
  have hb := intervalIntegral.integral_mono_on (a := 0) (b := 2*A) (μ := volume)
    (f := fun t => |curvature A t * h t|) (g := fun t => E*(t*|curvature A t|))
    (show 0 ≤ 2*A by linarith) hi.abs
    ((continuous_const.mul (continuous_id.mul (curvature_continuous hp).abs)).intervalIntegrable 0 (2*A))
    (fun t ht => by rw [abs_mul]; nlinarith [mul_le_mul_of_nonneg_left (henv t ht) (abs_nonneg (curvature A t))])
  have hE : 0 ≤ E := by
    have hb := henv 1 ⟨by norm_num, by linarith⟩
    linarith [abs_nonneg (h 1)]
  calc
    _ ≤ ∫ t in 0..2*A, |curvature A t * h t| := intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ t in 0..2*A, E*(t*|curvature A t|) := hb
    _ = E*(∫ t in 0..2*A, t*|curvature A t|) := intervalIntegral.integral_const_mul _ _
    _ ≤ E*(325652/7623) := mul_le_mul_of_nonneg_left (curvature_weighted_abs_budget hA) hE
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a80c406a4e999df0811385886f3a8710de8cd5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
