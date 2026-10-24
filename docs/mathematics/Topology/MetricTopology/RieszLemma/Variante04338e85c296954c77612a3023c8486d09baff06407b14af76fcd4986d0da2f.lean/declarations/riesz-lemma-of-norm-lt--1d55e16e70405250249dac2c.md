# riesz_lemma_of_norm_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3ee1805-5a7e-d004-b6f9-36691016da4f",
  "kind": "theorem",
  "lexical_name": "riesz_lemma_of_norm_lt",
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
  "slug": "riesz-lemma-of-norm-lt--1d55e16e70405250249dac2c",
  "source": {
    "blob": "5994394feac314c6492b5ae8c95b2a8555529528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 88,
    "path": "GRWTSK/Topology/MetricTopology/RieszLemma/Variante04338e85c296954c77612a3023c8486d09baff06407b14af76fcd4986d0da2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d55e16e70405250249dac2cfeeff4c1deaaecf7c2b3ba8f2361206c29aeec28",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/RieszLemma/Variante04338e85c296954c77612a3023c8486d09baff06407b14af76fcd4986d0da2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3ee1805-5a7e-d004-b6f9-36691016da4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_lemma_of_norm_lt {c : 𝕜} (hc : 1 < ‖c‖) {R : ℝ} (hR : ‖c‖ < R) {F : Subspace 𝕜 E}
    (hFc : IsClosed (F : Set E)) (hF : ∃ x : E, x ∉ F) :
    ∃ x₀ : E, ‖x₀‖ ≤ R ∧ ∀ y ∈ F, 1 ≤ ‖x₀ - y‖ := by
  have Rpos : 0 < R := (norm_nonneg _).trans_lt hR
  have : ‖c‖ / R < 1 := by
    rw [div_lt_iff₀ Rpos]
    simpa using hR
  rcases riesz_lemma hFc hF this with ⟨x, xF, hx⟩
  have x0 : x ≠ 0 := fun H => by simp [H] at xF
  obtain ⟨d, d0, dxlt, ledx, -⟩ :
    ∃ d : 𝕜, d ≠ 0 ∧ ‖d • x‖ < R ∧ R / ‖c‖ ≤ ‖d • x‖ ∧ ‖d‖⁻¹ ≤ R⁻¹ * ‖c‖ * ‖x‖ :=
    rescale_to_shell hc Rpos x0
  refine ⟨d • x, dxlt.le, fun y hy => ?_⟩
  set y' := d⁻¹ • y
  have yy' : y = d • y' := by simp [y', smul_smul, mul_inv_cancel₀ d0]
  calc
    1 = ‖c‖ / R * (R / ‖c‖) := by field_simp [Rpos.ne', (zero_lt_one.trans hc).ne']
    _ ≤ ‖c‖ / R * ‖d • x‖ := by gcongr
    _ = ‖d‖ * (‖c‖ / R * ‖x‖) := by
      simp only [norm_smul]
      ring
    _ ≤ ‖d‖ * ‖x - y'‖ := by gcongr; exact hx y' (by simp [y', Submodule.smul_mem _ _ hy])
    _ = ‖d • x - y‖ := by rw [yy', ← smul_sub, norm_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/RieszLemma/Variante04338e85c296954c77612a3023c8486d09baff06407b14af76fcd4986d0da2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/RieszLemma/Variante04338e85c296954c77612a3023c8486d09baff06407b14af76fcd4986d0da2f.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5994394feac314c6492b5ae8c95b2a8555529528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
