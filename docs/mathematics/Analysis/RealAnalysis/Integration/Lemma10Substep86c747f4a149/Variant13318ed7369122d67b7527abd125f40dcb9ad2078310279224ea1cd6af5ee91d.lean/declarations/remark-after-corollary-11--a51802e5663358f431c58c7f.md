# remark_after_corollary_11

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a6c649a-a773-9ef5-70f4-38610208f7f4",
  "kind": "theorem",
  "lexical_name": "remark_after_corollary_11",
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
  "slug": "remark-after-corollary-11--a51802e5663358f431c58c7f",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 509,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a51802e5663358f431c58c7ffa737e7196e11e5fc23d64c2a678366ff6dd4385",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a6c649a-a773-9ef5-70f4-38610208f7f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remark_after_corollary_11 :
    ∃ x₀ : ℝ, x₀ ∈ Set.Icc 0.924 0.925 ∧ (∀ x, dawson x ≤ dawson x₀) ∧
      StrictAntiOn dawson (Set.Ioi x₀) := by
  obtain ⟨x₀, hx₀_pos, h_glob_max, h_crit⟩ := dawson_exists_critical_global_max
  have h_crit_eq : 1 - 2 * x₀ * dawson x₀ = 0 := (deriv_dawson x₀).symm.trans h_crit
  have h_deriv_pos_0924 : 1 - 2 * 0.924 * dawson 0.924 > 0 := by linarith [dawson_0924_bound]
  have h_deriv_neg_0925 : 1 - 2 * 0.925 * dawson 0.925 < 0 := by linarith [dawson_0925_bound]
  have h_ge_0924 : 0.924 ≤ x₀ :=
    crit_ge_of_F_pos x₀ 0.924 hx₀_pos (by norm_num) h_crit_eq h_deriv_pos_0924
  have h_le_0925 : x₀ ≤ 0.925 :=
    crit_le_of_F_neg x₀ 0.925 hx₀_pos (by norm_num) h_crit_eq h_deriv_neg_0925
  have h_deriv_neg : ∀ x ∈ Set.Ioi x₀, 1 - 2 * x * dawson x < 0 := by
    intro x hx
    have hF_lt := F_strictAnti hx₀_pos (lt_trans hx₀_pos hx) hx
    dsimp at hF_lt
    rw [h_crit_eq, mul_zero] at hF_lt
    nlinarith [exp_pos (x ^ 2)]
  refine ⟨x₀, ⟨h_ge_0924, h_le_0925⟩, h_glob_max,
    strictAntiOn_of_deriv_neg (convex_Ioi x₀) continuous_dawson.continuousOn (fun x hx ↦ ?_)⟩
  rw [interior_Ioi] at hx
  rw [deriv_dawson]
  exact h_deriv_neg x hx


blueprint_comment /--
\subsection{From asymptotic estimates on psi to asymptotic estimates on theta}

To get from asymptotic estimates on $E_\psi$ to asymptotic estimates on $E_\theta$, the paper cites results and arguments from the previous paper \cite{BKLNW}, which is treated elsewhere in this blueprint.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
