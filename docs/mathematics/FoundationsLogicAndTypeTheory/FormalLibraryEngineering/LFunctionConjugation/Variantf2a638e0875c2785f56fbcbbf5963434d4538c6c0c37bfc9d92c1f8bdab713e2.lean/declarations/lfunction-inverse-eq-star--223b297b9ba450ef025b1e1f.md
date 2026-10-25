# LFunction_inverse_eq_star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f1a8f64-7a80-3919-3244-15eff7049d5a",
  "kind": "theorem",
  "lexical_name": "LFunction_inverse_eq_star",
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
  "slug": "lfunction-inverse-eq-star--223b297b9ba450ef025b1e1f",
  "source": {
    "blob": "c8d7f1e106da50c6734848a35308df021643cef6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionConjugation/Variantf2a638e0875c2785f56fbcbbf5963434d4538c6c0c37bfc9d92c1f8bdab713e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:223b297b9ba450ef025b1e1f6f7dbfc6d56fc6c4dd4ac72fd8fbda8137e886df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionConjugation/Variantf2a638e0875c2785f56fbcbbf5963434d4538c6c0c37bfc9d92c1f8bdab713e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f1a8f64-7a80-3919-3244-15eff7049d5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LFunction_inverse_eq_star
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    {s : ℂ} (hs : s ≠ 1) :
    DirichletCharacter.LFunction chi⁻¹ s =
      star (DirichletCharacter.LFunction chi (star s)) := by
  let U : Set ℂ := ({1}ᶜ : Set ℂ)
  let g : ℂ → ℂ :=
    fun z ↦ star (DirichletCharacter.LFunction chi (star z))
  have hUopen : IsOpen U := isOpen_compl_singleton
  have hUpre : IsPreconnected U := by
    exact (isConnected_compl_singleton_of_one_lt_rank
      (rank_real_complex ▸ Nat.one_lt_ofNat) (1 : ℂ)).isPreconnected
  have hleft : AnalyticOnNhd ℂ
      (DirichletCharacter.LFunction chi⁻¹) U := by
    apply DifferentiableOn.analyticOnNhd _ hUopen
    intro z hz
    exact (DirichletCharacter.differentiableAt_LFunction chi⁻¹ z
      (.inl hz)).differentiableWithinAt
  have hright : AnalyticOnNhd ℂ g U := by
    apply DifferentiableOn.analyticOnNhd _ hUopen
    intro z hz
    have hzstar : star z ≠ (1 : ℂ) := by
      intro h
      apply hz
      have := congrArg (starRingEnd ℂ) h
      simpa using this
    have hdiff :=
      (DirichletCharacter.differentiableAt_LFunction chi (star z)
        (.inl hzstar)).star_conj
    simpa [g, Function.comp_def] using hdiff.differentiableWithinAt
  have htwo : (2 : ℂ) ∈ U := by simp [U]
  have hevent : DirichletCharacter.LFunction chi⁻¹ =ᶠ[nhds (2 : ℂ)] g := by
    have hopen : IsOpen {z : ℂ | 1 < z.re} :=
      isOpen_lt continuous_const continuous_re
    have hmem : (2 : ℂ) ∈ {z : ℂ | 1 < z.re} := by norm_num
    filter_upwards [hopen.mem_nhds hmem] with z hz
    rw [DirichletCharacter.LFunction_eq_LSeries chi⁻¹ hz]
    change LSeries (chi⁻¹ ·) z =
      star (DirichletCharacter.LFunction chi (star z))
    have hzstar : 1 < (star z).re := by simpa using hz
    rw [DirichletCharacter.LFunction_eq_LSeries chi hzstar]
    exact LSeries_inverse_eq_star chi z
  have hall := hleft.eqOn_of_preconnected_of_eventuallyEq
    hright hUpre htwo hevent
  exact hall hs

/-- Mathlib's root number of a primitive Dirichlet character is nonzero.
This follows without a separate Gauss-sum norm theorem: a zero root number
would make the functional equation force the completed function to vanish
at `2`, contradicting Euler-product nonvanishing there. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionConjugation/Variantf2a638e0875c2785f56fbcbbf5963434d4538c6c0c37bfc9d92c1f8bdab713e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionConjugation/Variantf2a638e0875c2785f56fbcbbf5963434d4538c6c0c37bfc9d92c1f8bdab713e2.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8d7f1e106da50c6734848a35308df021643cef6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
