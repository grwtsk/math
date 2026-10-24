# T_lmarginal_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c74269da-e235-bd4d-32de-61e398dd0102",
  "kind": "theorem",
  "lexical_name": "T_lmarginal_antitone",
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
  "slug": "t-lmarginal-antitone--201ba4b9a4555c0ce241ec92",
  "source": {
    "blob": "7f77ea7698c69b09fd175fb6d232115ceab6fe56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 225,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:201ba4b9a4555c0ce241ec92451d970f764e0ea81dc6e4fd46b42fd9e480d503",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c74269da-e235-bd4d-32de-61e398dd0102`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem T_lmarginal_antitone [Fintype ι] [∀ i, SigmaFinite (μ i)]
    (hp₀ : 0 ≤ p) (hp : (#ι - 1 : ℝ) * p ≤ 1) {f : (∀ i, A i) → ℝ≥0∞} (hf : Measurable f) :
    Antitone (fun s ↦ T μ p (∫⋯∫⁻_sᶜ, f ∂μ) s) := by
  -- Reformulate (by induction): a function is decreasing on `Finset ι` if it decreases under the
  -- insertion of any element to any set.
  rw [Finset.antitone_iff_forall_insert_le]
  intro s i hi
  -- apply the lemma designed to encapsulate the inductive step
  convert T_insert_le_T_lmarginal_singleton μ hp₀ s ?_ i hi (hf.lmarginal μ) using 2
  · rw [← lmarginal_union μ f hf]
    · rw [← insert_compl_insert hi]
      rfl
    rw [Finset.disjoint_singleton_left, notMem_compl]
    exact mem_insert_self i s
  · -- the main nontrivial point is to check that an exponent `p` satisfying `0 ≤ p` and
    -- `(#ι - 1) * p ≤ 1` is in the valid range for the inductive-step lemma
    refine le_trans ?_ hp
    gcongr
    suffices (s.card : ℝ) + 1 ≤ #ι by linarith
    rw [← card_add_card_compl s]
    norm_cast
    gcongr
    have hi' : sᶜ.Nonempty := ⟨i, by rwa [Finset.mem_compl]⟩
    rwa [← card_pos] at hi'

end GridLines

/-- The "grid-lines lemma" (not a standard name), stated with a general parameter `p` as the
exponent.  Compare with `lintegral_prod_lintegral_pow_le`.

For any finite dependent product `Π i : ι, A i` of sigma-finite measure spaces, for any
nonnegative real number `p` such that `(#ι - 1) * p ≤ 1`, for any function `f` from `Π i, A i` into
the extended nonnegative reals, we consider an associated "grid-lines quantity", the integral of an
associated function from `Π i, A i` into the extended nonnegative reals.  The value of this function
at `x : Π i, A i` is obtained by multiplying a certain power of `f` with the product, for each
co-ordinate `i`, of a certain power of the integral of `f` along the "grid line" in the `i`
direction through `x`.

This lemma bounds the Lebesgue integral of the grid-lines quantity by a power of the Lebesgue
integral of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f77ea7698c69b09fd175fb6d232115ceab6fe56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
