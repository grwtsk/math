# Phi_star.poles_simple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1805,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97b932dc-44e7-b8e9-30af-cf02e10372d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eeb4fda5-8b05-0c9c-6bf2-cf93c93b63b6",
  "kind": "theorem",
  "lexical_name": "Phi_star.poles_simple",
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
  "slug": "phi-star-poles-simple--76cb70adae2e3a0c4dee469a",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1838,
    "line": 1805,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76cb70adae2e3a0c4dee469ab638503d3b80f0e031dfcc1465773c2fbc313284",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeb4fda5-8b05-0c9c-6bf2-cf93c93b63b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1805–1838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Phi_star.poles_simple (ν ε : ℝ) (hν : ν > 0) (z : ℂ) :
    meromorphicOrderAt (Phi_star ν ε) z = -1 ↔ ∃ n : ℤ, n ≠ 0 ∧ z = n - I * ν / (2 * π) := by
  constructor
  · exact fun h ↦ (Phi_star.poles ν ε hν z).mp (h ▸ by decide)
  · rintro ⟨n, hn, rfl⟩
    set z₀ := (n : ℂ) - I * ν / (2 * π)
    have hsub : MeromorphicAt (· - z₀) z₀ := by fun_prop
    have hf : MeromorphicAt (Phi_star ν ε) z₀ := by fun_prop
    have heq : (fun z ↦ (z - z₀) * Phi_star ν ε z) =ᶠ[nhdsWithin z₀ {z₀}ᶜ] ((· - z₀) * Phi_star ν ε) :=
      Filter.Eventually.of_forall fun _ ↦ rfl
    have hord₀ : meromorphicOrderAt ((· - z₀) * Phi_star ν ε) z₀ = 0 := by
      rw [← tendsto_ne_zero_iff_meromorphicOrderAt_eq_zero (hsub.mul hf)]
      exact ⟨_, by simp [hn, pi_ne_zero], (Phi_star.residue ν ε hν n hn).congr' heq⟩
    have hord₁ : meromorphicOrderAt (· - z₀) z₀ = (1 : ℤ) := by
      rw [meromorphicOrderAt_eq_int_iff hsub]
      exact ⟨1, analyticAt_const, one_ne_zero, by simp⟩
    rw [meromorphicOrderAt_mul hsub hf, hord₁] at hord₀
    obtain ⟨m, hm⟩ := WithTop.ne_top_iff_exists.mp
      (by rintro h; simp [h] at hord₀ : meromorphicOrderAt (Phi_star ν ε) z₀ ≠ ⊤)
    rw [← hm] at hord₀ ⊢
    have h1 : ((1 : ℤ) + m : WithTop ℤ) = (1 + m : ℤ) := by push_cast; ring_nf
    rw [h1] at hord₀
    have : 1 + m = 0 := by exact_mod_cast hord₀
    change (m : WithTop ℤ) = (-1 : ℤ); congr 1; omega

@[blueprint
  "Phi-cancel"
  (title := "$\\Phi^{\\circ}_\\nu \\pm \\Phi^{\\ast}_\\nu$ pole cancellation")
  (statement := /--
  $\Phi^{\sigma, \circ}_\nu(z) \pm \Phi^{\sigma, \ast}_\nu(z)$ is regular at $\pm 1 - i \nu / 2 \pi$.
  -/)
  (proof := /-- The residues cancel out. -/)
  (latexEnv := "lemma")
  (discussion := 1074)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L1805).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
