# nativeWasserstein_le_displacementWasserstein

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d17e05e-b89e-1a5f-b855-7e4da6164e51",
  "kind": "theorem",
  "lexical_name": "nativeWasserstein_le_displacementWasserstein",
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
  "slug": "nativewasserstein-le-displacementwasserstein--3c9a3a5e8f496347ff72be6e",
  "source": {
    "blob": "e25426cc8f872ace3c71cdca31e94788df5b9b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 167,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variante1cd8905d68c325600e1c07b6e10bee3ea1b97d13264d55960ffb649826f8701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c9a3a5e8f496347ff72be6e9a2006bbb9a7a935a37251e9d95aec0f6b66dec0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variante1cd8905d68c325600e1c07b6e10bee3ea1b97d13264d55960ffb649826f8701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d17e05e-b89e-1a5f-b855-7e4da6164e51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nativeWasserstein_le_displacementWasserstein {A : ℝ} (hA : 200 ≤ A)
    (x : ι → ℝ) (y : κ → ℝ) (u : ι → ℝ) (v : κ → ℝ)
    (P : ι → κ → ℝ) (hP : IsPlan u v P) :
    nativeWasserstein A x y u v ≤
      (Real.sqrt 5 / A) * displacementWasserstein x y u v := by
  have hp : 0 < A := by linarith
  have hc : 0 < Real.sqrt 5 / A := by positivity
  have hb : nativeWasserstein A x y u v / (Real.sqrt 5 / A) ≤
      displacementWasserstein x y u v := by
    apply le_csInf (costSet_nonempty u v (displacementCost x y) P hP)
    rintro z ⟨Q, hQ, rfl⟩
    apply (div_le_iff₀ hc).2
    have hmin : nativeWasserstein A x y u v ≤ sourcePlanCost A x y Q :=
      csInf_le (sourceCostSet_bddBelow A x y u v) ⟨Q, hQ, rfl⟩
    exact (hmin.trans (sourcePlanCost_le_displacement hA x y Q hQ.1)).trans_eq
      (mul_comm _ _)
  exact ((div_le_iff₀ hc).1 hb).trans_eq (mul_comm _ _)

end Plan

section Shell

variable {ι : Type*} [Fintype ι]

/-- Every coefficient in each of the two channels is charged by its own error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variante1cd8905d68c325600e1c07b6e10bee3ea1b97d13264d55960ffb649826f8701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variante1cd8905d68c325600e1c07b6e10bee3ea1b97d13264d55960ffb649826f8701.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e25426cc8f872ace3c71cdca31e94788df5b9b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
