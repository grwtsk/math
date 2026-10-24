# deriv_inv_log_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4be191c-d437-6e07-b6e5-c5e94172d276",
  "kind": "theorem",
  "lexical_name": "deriv_inv_log_apply",
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
  "slug": "deriv-inv-log-apply--2aba368ebb8a81f493703c3e",
  "source": {
    "blob": "09b53ea2bc8614a4b821513b01889248b2017f34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aba368ebb8a81f493703c3eeacfa636e8d9916635df83a32cc71a0e26dd9f86",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4be191c-d437-6e07-b6e5-c5e94172d276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_inv_log_apply {x : ℝ} : deriv (fun x ↦ (log x)⁻¹) x = -x⁻¹ / log x ^ 2 := by
  have := mt (continuousAt (𝕜 := ℝ)) not_continuousAt_inv_log_neg_one
  have := mt (continuousAt (𝕜 := ℝ)) not_continuousAt_inv_log_one
  have := not_differentiableAt_inv_log_zero
  obtain (⟨_, _, _⟩ | rfl | rfl | rfl) :
      (x ≠ -1 ∧ x ≠ 0 ∧ x ≠ 1) ∨ x = -1 ∨ x = 0 ∨ x = 1 := by tauto
  · simp_all
  all_goals rw [deriv_zero_of_not_differentiableAt ‹_›]; simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b53ea2bc8614a4b821513b01889248b2017f34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
