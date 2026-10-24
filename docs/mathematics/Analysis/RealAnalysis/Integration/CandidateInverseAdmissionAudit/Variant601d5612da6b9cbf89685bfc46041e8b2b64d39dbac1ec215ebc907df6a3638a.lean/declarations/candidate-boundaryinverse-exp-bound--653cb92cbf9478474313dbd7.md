# candidate_boundaryInverse_exp_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bdcce8e-b19f-5460-2e0f-f84ea6509290",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_exp_bound",
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
  "slug": "candidate-boundaryinverse-exp-bound--653cb92cbf9478474313dbd7",
  "source": {
    "blob": "935d6f0deee0d385f5dd67a75316b57f334d6e14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 286,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionAudit/Variant601d5612da6b9cbf89685bfc46041e8b2b64d39dbac1ec215ebc907df6a3638a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:653cb92cbf9478474313dbd73216c065fa5ed2e8ee9e3408d77e87c3bb237ae6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionAudit/Variant601d5612da6b9cbf89685bfc46041e8b2b64d39dbac1ec215ebc907df6a3638a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bdcce8e-b19f-5460-2e0f-f84ea6509290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_exp_bound (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ x : ℝ,
      ‖boundaryInverse (candidate X ε h) x‖ ≤ C * Real.exp (-(ε / 2) * x) := by
  obtain ⟨C, hC, hb⟩ := candidate_boundaryInverse_bounded X hX (ε / 2) h
    (by positivity) hh hh1
  refine ⟨C, hC, fun x => ?_⟩
  rw [candidate_boundaryInverse_half_shift X hX ε h hε hh hh1 x, norm_mul,
    Complex.norm_real, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left (hb x) (Real.exp_nonneg _)

/-- The actual causal inverse is genuinely integrable on the complete real line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionAudit/Variant601d5612da6b9cbf89685bfc46041e8b2b64d39dbac1ec215ebc907df6a3638a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionAudit/Variant601d5612da6b9cbf89685bfc46041e8b2b64d39dbac1ec215ebc907df6a3638a.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `935d6f0deee0d385f5dd67a75316b57f334d6e14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
