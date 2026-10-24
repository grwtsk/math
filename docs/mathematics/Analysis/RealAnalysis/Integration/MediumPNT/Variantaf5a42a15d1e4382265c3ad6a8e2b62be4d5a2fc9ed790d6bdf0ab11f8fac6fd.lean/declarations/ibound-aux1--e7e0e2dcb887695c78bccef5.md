# IBound_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "604b95747e0aa01200c88c373c411d36cd0cb748",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1741,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe6589c9-85fd-2784-6406-5da6d94c8fec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc2afc96-b6ea-9635-03c0-9d15e660ed3d",
  "kind": "lemma",
  "lexical_name": "IBound_aux1",
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
  "slug": "ibound-aux1--e7e0e2dcb887695c78bccef5",
  "source": {
    "blob": "604b95747e0aa01200c88c373c411d36cd0cb748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1827,
    "line": 1741,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7e0e2dcb887695c78bccef55ca8d50a36e74a6ad552660a0c0b5cfb0fa1cfd0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc2afc96-b6ea-9635-03c0-9d15e660ed3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1741–1827.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IBound_aux1 (X₀ : ℝ) (X₀pos : X₀ > 0) (k : ℕ) : ∃ C ≥ 1, ∀ X ≥ X₀, Real.log X ^ k ≤ C * X := by
  -- When X is large, the ratio goes to 0.
  have ⟨M, hM⟩ := Filter.eventually_atTop.mp (isLittleO_log_rpow_rpow_atTop k zero_lt_one).eventuallyLE
  -- When X is small, use the extreme value theorem.
  let f := fun X ↦ Real.log X ^ k / X
  let I := Icc X₀ M
  have : 0 ∉ I := notMem_Icc_of_lt X₀pos
  have f_cont : ContinuousOn f (Icc X₀ M) :=
    ((continuousOn_log.pow k).mono (subset_compl_singleton_iff.mpr this)).div
    continuous_id.continuousOn (fun x hx ↦ ne_of_mem_of_not_mem hx this)
  have ⟨C₁, hC₁⟩ := isCompact_Icc.exists_bound_of_continuousOn f_cont
  use max C₁ 1, le_max_right C₁ 1
  intro X hX
  have Xpos : X > 0 := lt_of_lt_of_le X₀pos hX
  by_cases hXM : X ≤ M
  · rw[← div_le_iff₀ Xpos]
    calc
      f X ≤ ‖f X‖ := le_norm_self _
      _ ≤ C₁ := hC₁ X ⟨hX, hXM⟩
      _ ≤ max C₁ 1 := le_max_left C₁ 1
  · calc
      Real.log X ^ k ≤ ‖Real.log X ^ k‖ := le_norm_self _
      _ ≤ ‖X ^ 1‖ := by exact_mod_cast hM X (by linarith[hXM])
      _ = 1 * X := by
        rw[pow_one, one_mul]
        apply norm_of_nonneg
        exact Xpos.le
      _ ≤ max C₁ 1 * X := by
        rw[mul_le_mul_iff_left₀ Xpos]
        exact le_max_right C₁ 1

@[blueprint
  (title := "I1Bound")
  (statement := /--
  We have that
  $$
  \left|I_{1}(\nu, \epsilon, X, T)\
  \right| \ll \frac{X}{\epsilon T}
  .
  $$
  Same with $I_9$.
  -/)
  (proof := /--
    Unfold the definitions and apply the triangle inequality.
  $$
  \left|I_{1}(\nu, \epsilon, X, T)\right| =
  \left|
  \frac{1}{2\pi i} \int_{-\infty}^{-T}
  \left(
  \frac{-\zeta'}\zeta(\sigma_0 + t i)
  \right)
   \mathcal M(\widetilde 1_\epsilon)(\sigma_0 + t i)
  X^{\sigma_0 + t i}
  \ i \ dt
  \right|
  $$
  By Theorem \ref{dlog_riemannZeta_bdd_on_vertical_lines} (once fixed!!),
  $\zeta'/\zeta (\sigma_0 + t i)$ is bounded by $\zeta'/\zeta(\sigma_0)$, and
  Theorem \ref{riemannZetaLogDerivResidue} gives $\ll 1/(\sigma_0-1)$ for the latter. This gives:
  $$
  \leq
  \frac{1}{2\pi}
  \left|
   \int_{-\infty}^{-T}
  C \log X\cdot
   \frac{C'}{\epsilon|\sigma_0 + t i|^2}
  X^{\sigma_0}
  \ dt
  \right|
  ,
  $$
  where we used Theorem \ref{MellinOfSmooth1b}.
  Continuing the calculation, we have
  $$
  \leq
  \log X \cdot
  C'' \frac{X^{\sigma_0}}{\epsilon}
  \int_{-\infty}^{-T}
  \frac{1}{t^2}
  \ dt
  \ \leq \
  C''' \frac{X\log X}{\epsilon T}
  ,
  $$
  where we used that $\sigma_0=1+1/\log X$, and $X^{\sigma_0} = X\cdot X^{1/\log X}=e \cdot X$.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean#L1741).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `604b95747e0aa01200c88c373c411d36cd0cb748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
