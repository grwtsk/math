# actual_six_cutoff_birth_is_not_ae_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa382fe5-1600-54ed-7a80-f71b4151b40f",
  "kind": "theorem",
  "lexical_name": "actual_six_cutoff_birth_is_not_ae_zero",
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
  "slug": "actual-six-cutoff-birth-is-not-ae-zero--f4e1c3da47f54bd8126009be",
  "source": {
    "blob": "984eea1a460c440da69743265363e48dd1633e04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCutoffBirth/Variant73df528275d81d74f9038f84d47db031a9b4d72b62a8457b261fdb1808e44921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4e1c3da47f54bd8126009beb891a20b028d86fbfa16b4b4898fc285047edd2d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCutoffBirth/Variant73df528275d81d74f9038f84d47db031a9b4d72b62a8457b261fdb1808e44921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa382fe5-1600-54ed-7a80-f71b4151b40f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_six_cutoff_birth_is_not_ae_zero {A : ℝ} (hA : 1 ≤ A) {k : ℕ}
    (hk : 1 ≤ k) (hcut : Real.log (6 * k : ℕ) = 2 * A) :
    ShellArithmetic.coefficient (6 * k) *
        sourceCorrelation explicitSecondDerivative A (Real.log (6 * k : ℕ)) = 0 ∧
      ¬ rawAtom A (6 * k) =ᵐ[volume] (0 : ℝ → ℝ) := by
  constructor
  · rw [hcut, sourceCorrelation_upper_endpoint A (by linarith), mul_zero]
  · exact actual_six_raw_atom_nonzero_ae hA hk

end
end GRWTSK.RiemannHypothesis.Conversation.NativeCutoffBirth
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCutoffBirth/Variant73df528275d81d74f9038f84d47db031a9b4d72b62a8457b261fdb1808e44921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCutoffBirth/Variant73df528275d81d74f9038f84d47db031a9b4d72b62a8457b261fdb1808e44921.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984eea1a460c440da69743265363e48dd1633e04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
