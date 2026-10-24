# logDeriv_zero_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7348ed3e-9126-bd64-52d6-c14d9b89990d",
  "kind": "lemma",
  "lexical_name": "logDeriv_zero_prod",
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
  "slug": "logderiv-zero-prod--a44556aa59ea93a6d4bc5940",
  "source": {
    "blob": "3d9c80530a90ef7c15f46b2ef6b7fee38a116e8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a44556aa59ea93a6d4bc5940a0e9ae479172b7a389e3a5686befaf55e2d5eeaa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7348ed3e-9126-bd64-52d6-c14d9b89990d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_zero_prod {s : Finset ℂ} {m : ℂ → ℕ} {z : ℂ} (hz : ∀ ρ ∈ s, z ≠ ρ) :
    logDeriv (fun w => ∏ ρ ∈ s, (w - ρ) ^ m ρ) z = ∑ ρ ∈ s, (m ρ : ℂ) / (z - ρ) := by
  rw [logDeriv_prod (f := fun ρ w => (w - ρ) ^ m ρ)
    (fun ρ hρ => pow_ne_zero _ (sub_ne_zero.mpr (hz ρ hρ))) (fun ρ _ => by fun_prop)]
  refine Finset.sum_congr rfl fun ρ _ => ?_
  have hd : HasDerivAt (fun w : ℂ => w - ρ) 1 z := (hasDerivAt_id z).sub_const ρ
  rw [logDeriv_fun_pow hd.differentiableAt, logDeriv_apply, hd.deriv]
  ring

/-- logDeriv splits into the zero sum plus the regular part, at non-zeros inside the divided
ball. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d9c80530a90ef7c15f46b2ef6b7fee38a116e8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
