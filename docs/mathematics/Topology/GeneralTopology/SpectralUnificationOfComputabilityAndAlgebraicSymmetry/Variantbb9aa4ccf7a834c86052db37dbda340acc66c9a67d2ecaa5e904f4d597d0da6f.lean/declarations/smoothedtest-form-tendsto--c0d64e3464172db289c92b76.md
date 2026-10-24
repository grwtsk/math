# smoothedTest_form_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fa1a852-9ebd-86a4-a699-e39fdbf525b6",
  "kind": "theorem",
  "lexical_name": "smoothedTest_form_tendsto",
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
  "slug": "smoothedtest-form-tendsto--c0d64e3464172db289c92b76",
  "source": {
    "blob": "7c69611e5d880fa859edd7ff57e7898ee47c6f09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbb9aa4ccf7a834c86052db37dbda340acc66c9a67d2ecaa5e904f4d597d0da6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0d64e3464172db289c92b76bd72a4830e67cf150acbe33e9fc6b657f49c91ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbb9aa4ccf7a834c86052db37dbda340acc66c9a67d2ecaa5e904f4d597d0da6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fa1a852-9ebd-86a4-a699-e39fdbf525b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothedTest_form_tendsto {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ realArithmeticForm (A + 1) (smoothedTest A (ε i) (hε i)))
      l (𝓝 (realArithmeticForm A (actualTest A))) := by
  have he := testError_logarithmicNorm_tendsto_zero A hA ε hε hlim
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hpoly : Tendsto (fun i ↦ formCoefficient (A + 1) *
      logarithmicNorm (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) *
      (logarithmicNorm (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) +
        2 * logarithmicNorm (actualTest A))) l (𝓝 0) := by
    simpa using (he.const_mul (formCoefficient (A + 1))).mul
      (he.add_const (2 * logarithmicNorm (actualTest A)))
  have hnorm : Tendsto (fun i ↦
      |realArithmeticForm (A + 1) (smoothedTest A (ε i) (hε i)) -
        realArithmeticForm (A + 1) (actualTest A)|) l (𝓝 0) := by
    apply squeeze_zero' (Eventually.of_forall fun _ ↦ abs_nonneg _) _ hpoly
    filter_upwards [hsmall] with i hi
    exact smoothedTest_form_error_le A (ε i) hA (hε i) hi
  rw [ZeroFormSupport.actual_form_support_consistent A (A + 1) hA (by linarith)] at hnorm
  exact tendsto_iff_dist_tendsto_zero.2 (by simpa only [Real.dist_eq] using hnorm)

/-- The actual source form converges as the strictly positive smoothing scale approaches zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbb9aa4ccf7a834c86052db37dbda340acc66c9a67d2ecaa5e904f4d597d0da6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbb9aa4ccf7a834c86052db37dbda340acc66c9a67d2ecaa5e904f4d597d0da6f.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c69611e5d880fa859edd7ff57e7898ee47c6f09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
