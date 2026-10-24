# Phi_circ.poles

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
      "line": 1372,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5dc10301-a97c-bce5-7a37-41dda97403d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0019f0dc-54f1-8d87-8b49-71cf258a4fbf",
  "kind": "theorem",
  "lexical_name": "Phi_circ.poles",
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
  "slug": "phi-circ-poles--b97a1e805d054431ce37e202",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1434,
    "line": 1372,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b97a1e805d054431ce37e202ad20ec5dbd8dd4bbadfb396e708b6a6261501cc4",
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

Occurrence: `result:0019f0dc-54f1-8d87-8b49-71cf258a4fbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1372–1434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Phi_circ.poles (ν ε : ℝ) (_hν : ν > 0) (z : ℂ) :
    meromorphicOrderAt (Phi_circ ν ε) z < 0 ↔ ∃ n : ℤ, z = n - I * ν / (2 * π) := by
  -- Step 1: Reduce Phi_circ to coth (w/2)
  let w : ℂ → ℂ := fun z ↦ -2 * π * I * z + ν
  have h_ord_eq : meromorphicOrderAt (Phi_circ ν ε) z < 0 ↔ meromorphicOrderAt (fun z ↦ coth (w z / 2)) z < 0 := by
    rw [show Phi_circ ν ε = (fun _ ↦ (1 / 2 : ℂ)) * (fun z ↦ coth (w z / 2) + ε) from rfl]
    rw [meromorphicOrderAt_mul_of_ne_zero (analyticAt_const (v := (1/2 : ℂ)) (x := z)) (by norm_num : (1/2 : ℂ) ≠ 0)]
    have h_coth_mero : MeromorphicAt (fun z ↦ coth (w z / 2)) z := by fun_prop
    constructor
    · intro h
      contrapose! h
      have h_sum := meromorphicOrderAt_add h_coth_mero (MeromorphicAt.const (ε : ℂ) z)
      rw [meromorphicOrderAt_const] at h_sum
      split_ifs at h_sum with h_eps
      · simp_all [gt_iff_lt, add_zero, le_top, inf_of_le_left]
      · exact (le_min (by simpa using h) le_rfl).trans h_sum
    · intro h
      have h_ne : meromorphicOrderAt (fun z ↦ coth (w z / 2)) z ≠ meromorphicOrderAt (fun _ ↦ (ε : ℂ)) z := by
        rw [meromorphicOrderAt_const]; split_ifs <;> simp [h.ne_top, h.ne]
      rw [show (fun z ↦ coth (w z / 2) + ε) = (fun z ↦ coth (w z / 2)) + (fun _ ↦ (ε : ℂ)) from rfl]
      rw [meromorphicOrderAt_add_of_ne h_coth_mero (by fun_prop) h_ne]
      simp [h]
  -- Step 2: Apply "pole of coth iff zero of sinh" via composition
  have h_pole_iff : meromorphicOrderAt (fun z ↦ coth (w z / 2)) z < 0 ↔ (Complex.sinh (w z / 2) = 0) := by
    have h_mero_w : AnalyticAt ℂ (fun z => w z / 2) z := by dsimp [w]; fun_prop
    have h_deriv_w : deriv (fun z => w z / 2) z ≠ 0 := by
      have hd : HasDerivAt (fun z : ℂ ↦ w z / 2) (-π * I) z := by
        convert (((hasDerivAt_id z).const_mul (-2 * π * I)).add (hasDerivAt_const z (ν:ℂ))).div_const 2 using 1
        ring
      rw [hd.deriv]; simp [pi_ne_zero, I_ne_zero]
    have h_comp : meromorphicOrderAt (fun z ↦ coth (w z / 2)) z = meromorphicOrderAt coth (w z / 2) :=
      meromorphicOrderAt_comp_of_deriv_ne_zero (f := coth) h_mero_w h_deriv_w
    rw [h_comp]
    exact meromorphicOrderAt_coth_lt_zero_iff _
  -- Step 3: Rewrite with sinh_zero_iff and solve the linear equation
  rw [h_ord_eq, h_pole_iff, sinh_zero_iff]
  constructor
  · rintro ⟨k, hk⟩
    use -k
    apply (mul_left_inj' (show (2 * π * I : ℂ) ≠ 0 by simp [pi_ne_zero])).mp
    field_simp [pi_ne_zero, I_ne_zero] at hk ⊢
    have h1 : 2 * π * I * z = ν - 2 * k * π * I := by rw [← hk]; dsimp [w]; ring
    calc
      (2 * π * z : ℂ) = (2 * π * I * z) * (-I) := by ring_nf; simp
      _ = (ν - 2 * k * π * I) * (-I) := by rw [h1]
      _ = 2 * k * π * Complex.I^2 - I * ν := by ring
      _ = 2 * π * ↑(-k) - I * ν := by simp; ring
  · rintro ⟨n, rfl⟩
    use -n
    dsimp [w]
    field_simp [pi_ne_zero, I_ne_zero]
    ring_nf
    simp

@[blueprint
  "Phi-circ-residues"
  (title := "$\\Phi^{\\pm,\\circ}_\\nu$ residues")
  (statement := /--
  The residue of $$\Phi^{\pm,\circ}_\nu(z)$$ at $n - i \nu/2\pi$ is $i/2\pi$.
  -/)
  (proof := /-- This follows from the definition of $\Phi^{\pm,\circ}_\nu$ and the properties of the $\coth$ function. -/)
  (latexEnv := "lemma")
  (discussion := 1071)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L1372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
