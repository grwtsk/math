# arithmeticResidual_eq_truncated_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a69fb3bc6cac742646e703937ae5faf7457fba5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c79e0c8-d657-ad6a-da63-0ebfe4557b0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eedee7cd-4115-93a5-9be5-278d1c2cf8bd",
  "kind": "theorem",
  "lexical_name": "arithmeticResidual_eq_truncated_prefix",
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
  "slug": "arithmeticresidual-eq-truncated-prefix--6a6246b6792a9e0e9bec2e7a",
  "source": {
    "blob": "5a69fb3bc6cac742646e703937ae5faf7457fba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 218,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a6246b6792a9e0e9bec2e7a8ba50e43f15a23eafc17fb449bea4d6d7cae1130",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eedee7cd-4115-93a5-9be5-278d1c2cf8bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticResidual_eq_truncated_prefix (X : ℕ) (ε x : ℝ)
    (hX : 1 ≤ X) (hx : 1 ≤ x) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, truncatedDivisorCoefficient X ε n : ℝ) : ℂ) +
        (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          FiniteMobiusController.mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) := by
  rw [residual_floor X ε x hX (by linarith), if_pos hx,
    damped_floor_eq_truncated_prefix X ε x hX]
  push_cast
  ring

end
end TruncatedDivisorResidualScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @TruncatedDivisorResidualScratch.truncatedDivisorCoefficient
#print TruncatedDivisorResidualScratch.truncatedDivisorCoefficient
#print axioms TruncatedDivisorResidualScratch.truncatedDivisorCoefficient
#check @TruncatedDivisorResidualScratch.truncatedDivisorCoefficient_eq_full
#print TruncatedDivisorResidualScratch.truncatedDivisorCoefficient_eq_full
#print axioms TruncatedDivisorResidualScratch.truncatedDivisorCoefficient_eq_full
#check @TruncatedDivisorResidualScratch.damped_floor_eq_truncated_prefix
#print TruncatedDivisorResidualScratch.damped_floor_eq_truncated_prefix
#print axioms TruncatedDivisorResidualScratch.damped_floor_eq_truncated_prefix
#check @TruncatedDivisorResidualScratch.arithmeticResidual_eq_truncated_prefix
#print TruncatedDivisorResidualScratch.arithmeticResidual_eq_truncated_prefix
#print axioms TruncatedDivisorResidualScratch.arithmeticResidual_eq_truncated_prefix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a69fb3bc6cac742646e703937ae5faf7457fba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
