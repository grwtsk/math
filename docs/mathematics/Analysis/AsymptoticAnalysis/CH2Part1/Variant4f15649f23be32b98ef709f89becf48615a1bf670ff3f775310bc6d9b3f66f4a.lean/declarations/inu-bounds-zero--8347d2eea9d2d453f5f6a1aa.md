# Inu_bounds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:247d5f4f-c56a-7f51-5f44-12c6f1276603",
  "kind": "lemma",
  "lexical_name": "Inu_bounds_zero",
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
  "slug": "inu-bounds-zero--8347d2eea9d2d453f5f6a1aa",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4844,
    "line": 4816,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8347d2eea9d2d453f5f6a1aacd0854686885a0775cdfe4bab986092e413880ae",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:247d5f4f-c56a-7f51-5f44-12c6f1276603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4816–4844.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Inu_bounds_zero (ν : ℝ) (hν : ν > 0) :
    (𝓕 (ϕ_pm ν (-1)) 0).re ≤ Inu ν 0 ∧ Inu ν 0 ≤ (𝓕 (ϕ_pm ν 1) 0).re := by
  rw [show Inu ν 0 = 1 by simp [Inu]]
  have h_cont : ∀ ε : ℝ, Continuous (fun x : ℝ ↦ (𝓕 (ϕ_pm ν ε) x).re) := fun ε ↦
    continuous_re.comp <| VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (by fun_prop) (varphi_integ ν ε hν.ne')
  haveI hbot : Filter.NeBot (nhdsWithin 0 (Set.Ioi (0 : ℝ))) := nhdsWithin_Ioi_neBot le_rfl
  have h_I_rcts : Filter.Tendsto (fun x : ℝ ↦ Inu ν x) (nhdsWithin 0 (Set.Ioi (0 : ℝ))) (nhds 1) := by
    have h_eq : (fun x : ℝ ↦ Inu ν x) =ᶠ[nhdsWithin 0 (Set.Ioi (0 : ℝ))] (fun x ↦ Real.exp (-ν * x)) :=
      eventually_nhdsWithin_of_forall fun _ hx ↦ if_pos (le_of_lt hx)
    have h_tendsto_exp : Filter.Tendsto (fun x ↦ Real.exp (-ν * x)) (nhds 0) (nhds 1) := by
      simpa using Continuous.tendsto (by fun_prop : Continuous fun x ↦ Real.exp (-ν * x)) 0
    exact Filter.Tendsto.congr' h_eq.symm (Filter.Tendsto.mono_left h_tendsto_exp nhdsWithin_le_nhds)
  exact ⟨le_of_tendsto_of_tendsto (hf := (h_cont (-1)).continuousAt.continuousWithinAt) (hg := h_I_rcts)
      (eventually_nhdsWithin_of_forall fun x hx ↦ (Inu_bounds_pos ν x hν hx).1),
    le_of_tendsto_of_tendsto (hf := h_I_rcts) (hg := (h_cont 1).continuousAt.continuousWithinAt)
      (eventually_nhdsWithin_of_forall fun x hx ↦ (Inu_bounds_pos ν x hν hx).2)⟩

@[blueprint
  "Inu_bounds"
  (title := "Bound for $I_\\nu$")
  (statement := /--
For all $x \in \mathbb{R}$,
$$
    \widehat{\varphi_\nu^-}(x) \leq I_\nu(x) \leq \widehat{\varphi_\nu^+}(x).
$$-/)
  (proof := /-- By Lemmas \ref{B-plus-mono}, \ref{B-minus-mono}, the integrands in Lemmas \ref{fourier-formula-neg}, \ref{fourier-formula-pos} are non-negative. Hence, the bound holds for all $x \neq 0$. By definition, $I_\nu$ is right-continuous. Since $\varphi_\nu^\pm \in L^1(\mathbb{R})$, $\widehat{\varphi_\nu^\pm}$ is continuous on $\mathbb{R}$. Thus, letting $x \to 0^+$, we see that the bound holds for $x = 0$ as well.  -/)
  (latexEnv := "corollary")
  (discussion := 1224)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L4816).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
