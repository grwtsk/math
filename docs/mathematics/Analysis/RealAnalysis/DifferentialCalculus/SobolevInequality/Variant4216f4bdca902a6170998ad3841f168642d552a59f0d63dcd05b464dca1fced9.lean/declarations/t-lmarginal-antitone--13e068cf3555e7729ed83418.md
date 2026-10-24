# T_lmarginal_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7146d1d3bcc835725b3310445922e60c3b456c1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:caf19a08-9e8e-d0fb-67b9-f6e908173643",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a7f6a9d-1591-dc92-ac1a-c51a68486e30",
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
  "slug": "t-lmarginal-antitone--13e068cf3555e7729ed83418",
  "source": {
    "blob": "7146d1d3bcc835725b3310445922e60c3b456c1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 219,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variant4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13e068cf3555e7729ed834184a2fee8591a78b28d15934214a7b7036770409ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variant4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a7f6a9d-1591-dc92-ac1a-c51a68486e30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–258.

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
  convert! T_insert_le_T_lmarginal_singleton μ hp₀ s ?_ i hi (hf.lmarginal μ) using 2
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variant4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variant4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7146d1d3bcc835725b3310445922e60c3b456c1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
