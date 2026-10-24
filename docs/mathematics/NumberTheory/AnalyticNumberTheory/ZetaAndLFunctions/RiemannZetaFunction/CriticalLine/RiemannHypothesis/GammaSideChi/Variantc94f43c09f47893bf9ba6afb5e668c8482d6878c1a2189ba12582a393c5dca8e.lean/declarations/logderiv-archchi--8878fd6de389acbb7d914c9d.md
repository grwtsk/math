# logDeriv_archChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07b64e0a553cf16d7498fb2ec52901ec7537d4ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19aed521-8a29-5445-c99e-e5f5125a0fd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff0be45a-1682-d385-b496-ffd3d5f7f266",
  "kind": "theorem",
  "lexical_name": "logDeriv_archChi",
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
  "slug": "logderiv-archchi--8878fd6de389acbb7d914c9d",
  "source": {
    "blob": "07b64e0a553cf16d7498fb2ec52901ec7537d4ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8878fd6de389acbb7d914c9d074f030d7727aa0ba8ec555cf095fbaa659c8151",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff0be45a-1682-d385-b496-ffd3d5f7f266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_archChi {s : ℂ} (hs : 0 < s.re) :
    logDeriv (archChi q κ) s = (Real.log q : ℂ) / 2 +
      (-(Real.log Real.pi : ℂ) / 2 + (1/2 : ℂ) * Complex.digamma ((s + κ) / 2)) := by
  have hκre : 0 < (s + (κ:ℂ)).re := by
    simp only [Complex.add_re, Complex.natCast_re]
    have : (0:ℝ) ≤ κ := Nat.cast_nonneg κ
    linarith
  have hq0 : (q : ℂ) ≠ 0 := by exact_mod_cast (Nat.pos_of_ne_zero (NeZero.ne q)).ne'
  have e : archChi q κ = fun s : ℂ => (q : ℂ) ^ (s / 2) * Complex.Gammaℝ (s + κ) := rfl
  have hf : (fun s : ℂ => (q : ℂ) ^ (s / 2)) s ≠ 0 := q_cpow_ne_zero q s
  have hg : (fun s : ℂ => Complex.Gammaℝ (s + κ)) s ≠ 0 := by
    apply Complex.Gammaℝ_ne_zero_of_re_pos hκre
  have hdf : DifferentiableAt ℂ (fun s : ℂ => (q : ℂ) ^ (s / 2)) s :=
    DifferentiableAt.const_cpow (by fun_prop) (Or.inl hq0)
  have hdg : DifferentiableAt ℂ (fun s : ℂ => Complex.Gammaℝ (s + κ)) s := by
    have hG : DifferentiableAt ℂ Complex.Gammaℝ (s + κ) :=
      (Gammaℝ_differentiableOn (s + κ) hκre).differentiableAt
        (isOpen_rightHalfPlane.mem_nhds hκre)
    have haff : DifferentiableAt ℂ (fun z : ℂ => z + (κ:ℂ)) s := by fun_prop
    have hcomp : DifferentiableAt ℂ (Complex.Gammaℝ ∘ fun z : ℂ => z + (κ:ℂ)) s :=
      DifferentiableAt.comp s hG haff
    exact hcomp
  rw [e, logDeriv_mul (f := fun s : ℂ => (q : ℂ) ^ (s / 2))
    (g := fun s : ℂ => Complex.Gammaℝ (s + κ)) s hf hg hdf hdg]
  have h1 : logDeriv (fun s : ℂ => (q : ℂ) ^ (s / 2)) s = (Real.log q : ℂ) / 2 := by
    have hder : HasDerivAt (fun s : ℂ => (q : ℂ) ^ (s / 2))
        ((q : ℂ) ^ (s / 2) * Complex.log q * (1 / 2)) s := by
      have hd : HasDerivAt (fun s : ℂ => s / 2) (1 / 2 : ℂ) s := by
        simpa using (hasDerivAt_id s).div_const (2:ℂ)
      exact hd.const_cpow (Or.inl hq0)
    rw [logDeriv_apply, hder.deriv]
    have hne : (q : ℂ) ^ (s / 2) ≠ 0 := q_cpow_ne_zero q s
    have hlogq : Complex.log (q : ℂ) = (Real.log q : ℂ) := by
      rw [← Complex.ofReal_natCast, Complex.ofReal_log (Nat.cast_nonneg q)]
    rw [hlogq, mul_assoc, mul_div_cancel_left₀ _ hne]
    ring
  have h2 : logDeriv (fun s : ℂ => Complex.Gammaℝ (s + κ)) s =
      -(Real.log Real.pi : ℂ) / 2 + (1/2 : ℂ) * Complex.digamma ((s + κ) / 2) := by
    have hshift : AnalyticAt ℂ (fun s : ℂ => s + (κ:ℂ)) s := by fun_prop
    have hGd : DifferentiableAt ℂ Complex.Gammaℝ ((fun s : ℂ => s + (κ:ℂ)) s) :=
      (Gammaℝ_differentiableOn (s + κ) hκre).differentiableAt
        (isOpen_rightHalfPlane.mem_nhds hκre)
    have := logDeriv_comp (f := Complex.Gammaℝ) (g := fun s : ℂ => s + (κ:ℂ)) (x := s)
      hGd (by fun_prop)
    rw [show (Complex.Gammaℝ ∘ fun s : ℂ => s + (κ:ℂ)) = fun s => Complex.Gammaℝ (s + κ) from rfl]
      at this
    rw [this, RvM.logDeriv_Gammaℝ hκre]
    have : deriv (fun s : ℂ => s + (κ:ℂ)) s = 1 := by
      rw [deriv_add_const, deriv_id'']
    rw [this]; ring
  rw [h1, h2]

/-- Re logDeriv arch(½+it) = π·μ_χ(t). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07b64e0a553cf16d7498fb2ec52901ec7537d4ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
