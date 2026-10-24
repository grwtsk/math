# Phi_star.residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1749,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a79fa52-87bf-48d9-0ba5-aac136d71281",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbd1335c-c01a-46ec-22ee-2a1994a9d118",
  "kind": "theorem",
  "lexical_name": "Phi_star.residue",
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
  "slug": "phi-star-residue--5c5ae80b7d3de849379981d9",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1801,
    "line": 1749,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c5ae80b7d3de849379981d96ef0f0d663985c757535054fbe521dad483ec60a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbd1335c-c01a-46ec-22ee-2a1994a9d118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1749–1801.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Phi_star.residue (ν ε : ℝ) (hν : ν > 0) (n : ℤ) (hn : n ≠ 0) :
    (nhdsWithin (n - I * ν / (2 * π)) {n - I * ν / (2 * π)}ᶜ).Tendsto
      (fun z ↦ (z - (n - I * ν / (2 * π))) * Phi_star ν ε z) (nhds (-I * n / (2 * π))) := by
  set z₀ : ℂ := n - I * ν / (2 * π)
  set w : ℂ → ℂ := fun z ↦ -2 * π * I * z + ν
  have hw_z₀ : w z₀ = -2 * π * I * n := by
    dsimp [w, z₀]
    field_simp [pi_ne_zero]
    ring_nf
    simp [I_sq]
  have h_circ_res := Phi_circ.residue ν ε hν n
  have h_w_lim : Filter.Tendsto w (nhdsWithin z₀ {z₀}ᶜ) (nhds (w z₀)) := by
    apply ContinuousAt.continuousWithinAt
    unfold w
    fun_prop
  have h_const_lim : Filter.Tendsto (fun z ↦ (z - z₀) * B ε ν) (nhdsWithin z₀ {z₀}ᶜ) (nhds 0) := by
    have h : Filter.Tendsto (fun z => z - z₀) (nhds z₀) (nhds (z₀ - z₀)) :=
      Filter.Tendsto.sub Filter.tendsto_id tendsto_const_nhds
    rw [sub_self] at h
    have h2 := Filter.Tendsto.mul_const (B ε ν) h
    rw [zero_mul] at h2
    exact h2.mono_left nhdsWithin_le_nhds
  rw [show (-I * n / (2 * π) : ℂ) = (1 / (2 * π * I)) * (w z₀ * (I / (2 * π)) - 0) by
    rw [hw_z₀]
    have hpi : (π : ℂ) ≠ 0 := by simp [pi_ne_zero]
    field_simp [hpi, I_ne_zero]
    ring_nf]
  refine Filter.Tendsto.congr' ?_ (((h_w_lim.mul h_circ_res).sub h_const_lim).const_mul (1 / (2 * π * I)))
  have hw_cont : ContinuousAt w z₀ := by fun_prop
  have hw_z₀_ne_zero_local : w z₀ ≠ 0 := by
    rw [hw_z₀]
    have hpi : (π : ℂ) ≠ 0 := by simp [pi_ne_zero]
    intro hc
    apply hn
    apply_fun (fun x => x / (-2 * π * I)) at hc
    simpa [hpi, I_ne_zero] using hc
  filter_upwards [nhdsWithin_le_nhds (hw_cont.eventually_ne hw_z₀_ne_zero_local)] with z hz
  have hB : B ε (w z) = w z * (coth (w z / 2) + ε) / 2 := by
    unfold B; split_ifs with h_branch
    · exact False.elim (hz h_branch)
    · rfl
  dsimp only [Phi_star, Phi_circ]
  rw [hB]
  ring

@[blueprint
  "Phi-star-poles-simple"
  (title := "$\\Phi^{\\pm,\\ast}_\\nu$ poles simple")
  (statement := /--
  The poles of $$\Phi^{\pm,\ast}_\nu(z)$$ are all simple.
  -/)
  (proof := /-- This follows from the definition of $\Phi^{\pm,\ast}_\nu$ and the properties of the $B^\pm$ function. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L1749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
