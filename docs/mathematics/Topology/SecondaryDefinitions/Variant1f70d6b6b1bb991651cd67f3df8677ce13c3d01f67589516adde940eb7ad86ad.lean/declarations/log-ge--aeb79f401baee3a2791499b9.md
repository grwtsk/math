# log_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d446061d-2570-6d04-1dcc-e926d39349fa",
  "kind": "theorem",
  "lexical_name": "log_ge",
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
  "slug": "log-ge--aeb79f401baee3a2791499b9",
  "source": {
    "blob": "8502608bcd3e9e88bb6a2a9e6ddc0a6b05e8d05c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 55,
    "path": "GRWTSK/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aeb79f401baee3a2791499b92f0f9f1c65949bd3769064ab2d0ff3dd20739c4d",
  "verification": {
    "reference": "docs/verification/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d446061d-2570-6d04-1dcc-e926d39349fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_ge {t : ℝ} (ht : 0 ≤ t) : t - t ^ 2 / 2 ≤ log (1 + t) := by
  rcases ht.eq_or_lt with rfl | ht
  · simp
  let f : ℝ → ℝ := fun s ↦ log (1 + s) - (s - s ^ 2 / 2)
  have hf_deriv_pos : ∀ s > 0, 0 ≤ deriv f s := by
    intro s hs
    unfold f
    rw [deriv_fun_sub, deriv.log _ (by linarith), deriv_fun_sub, deriv_fun_add]
    · simp
      ring_nf
      nlinarith [inv_mul_cancel₀ (by positivity : (1 + s) ≠ 0)]
    all_goals fun_prop (disch := linarith)
  have h_mvt : ∃ c ∈ Set.Ioo 0 t, deriv f c = (f t - f 0) / (t - 0) := by
    refine exists_deriv_eq_slope _ ht ?_ ?_
    · intro x hx
      exact ContinuousAt.continuousWithinAt (by fun_prop (disch := grind))
    · intro x hx
      exact DifferentiableAt.differentiableWithinAt (by fun_prop (disch := grind))
  norm_num +zetaDelta at h_mvt
  obtain ⟨c, ⟨hc₁, hc₂⟩, hc⟩ := h_mvt
  nlinarith [hf_deriv_pos c hc₁,
    mul_div_cancel₀ (log (1 + t) - (t - t ^ 2 / 2)) (by positivity)]

@[blueprint
  "log_lower_2"
  (title := "Second log lower bound")
  (statement := /--
    For $0 \leq t \leq t_0 < 1$, one has
    $\frac{t}{t_0} \log (1-t_0) \leq \log(1-t)$. -/)
  (proof := /-- Use concavity of log. -/)
  (latexEnv := "sublemma")
  (discussion := 766)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SecondaryDefinitions/Variant1f70d6b6b1bb991651cd67f3df8677ce13c3d01f67589516adde940eb7ad86ad.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8502608bcd3e9e88bb6a2a9e6ddc0a6b05e8d05c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
