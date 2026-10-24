# joint_phase_is_not_conjugate_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea3fc663-8bf0-7098-a487-9d7d54d6beac",
  "kind": "theorem",
  "lexical_name": "joint_phase_is_not_conjugate_phase",
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
  "slug": "joint-phase-is-not-conjugate-phase--36550980d9e37019b5af21c3",
  "source": {
    "blob": "185928316d7dbaac63a9a31712d3902a6589e2e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 226,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36550980d9e37019b5af21c3f6755ff7fb1a4cd1159337b4726b3acad2309312",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea3fc663-8bf0-7098-a487-9d7d54d6beac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem joint_phase_is_not_conjugate_phase :
    ∃ ξ : ℝ, (arithmeticPolynomial {2} (fun _ ↦ 1) ξ *
      arithmeticPolynomial {2} (fun _ ↦ 1) ξ).re = -1 ∧
      (arithmeticPolynomial {2} (fun _ ↦ 1) ξ *
        star (arithmeticPolynomial {2} (fun _ ↦ 1) ξ)).re = 1 := by
  let ξ : ℝ := Real.pi / (2 * Real.log 2)
  have hlog : Real.log 2 ≠ 0 := ne_of_gt (Real.log_pos (by norm_num))
  have hphase : ξ * Real.log 2 = Real.pi / 2 := by
    dsimp [ξ]
    field_simp
  have hP : arithmeticPolynomial {2} (fun _ ↦ 1) ξ = Complex.I := by
    simp only [arithmeticPolynomial, Finset.sum_singleton, Complex.ofReal_one, one_mul]
    have he : Complex.I * (ξ : ℂ) * (Real.log (2 : ℕ) : ℂ) =
        ((Real.pi / 2 : ℝ) : ℂ) * Complex.I := by
      calc
        _ = ((ξ * Real.log 2 : ℝ) : ℂ) * Complex.I := by push_cast; ring
        _ = _ := by rw [hphase]
    rw [he, Complex.exp_ofReal_mul_I]
    simp
  refine ⟨ξ, ?_, ?_⟩
  · simp only [hP, Complex.I_mul_I, Complex.neg_re, Complex.one_re]
  · simp [hP]

end
end FormalResearch.RiemannHypothesis.SourceHankelFourier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `185928316d7dbaac63a9a31712d3902a6589e2e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
