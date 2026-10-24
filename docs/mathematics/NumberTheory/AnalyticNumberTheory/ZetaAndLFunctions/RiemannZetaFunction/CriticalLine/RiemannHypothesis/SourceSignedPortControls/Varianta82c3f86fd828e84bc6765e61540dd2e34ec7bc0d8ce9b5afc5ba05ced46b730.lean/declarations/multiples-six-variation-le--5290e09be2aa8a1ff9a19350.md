# multiples_six_variation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cd6a336-5164-556f-eb81-8eb23854ebe4",
  "kind": "theorem",
  "lexical_name": "multiples_six_variation_le",
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
  "slug": "multiples-six-variation-le--5290e09be2aa8a1ff9a19350",
  "source": {
    "blob": "d3dc92b17d3d2e3bc3711f832868e2c3c607958c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPortControls/Varianta82c3f86fd828e84bc6765e61540dd2e34ec7bc0d8ce9b5afc5ba05ced46b730.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5290e09be2aa8a1ff9a193505825c37e9b5a644eb4f2ea8dbb767808c09e95a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPortControls/Varianta82c3f86fd828e84bc6765e61540dd2e34ec7bc0d8ce9b5afc5ba05ced46b730.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cd6a336-5164-556f-eb81-8eb23854ebe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiples_six_variation_le (M N : ℕ) (hMN : 6 * M ≤ N) :
    (∑ k ∈ Finset.Icc 1 M, 1 / Real.sqrt (6 * k)) ≤ coefficientVariation N := by
  let F := (Finset.Icc 1 M).image (fun k => 6 * k)
  have hsub : F ⊆ Finset.Icc 2 N := by
    intro n hn
    obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp hn
    obtain ⟨h1, hM⟩ := Finset.mem_Icc.mp hk
    exact Finset.mem_Icc.mpr ⟨by omega, (Nat.mul_le_mul_left 6 hM).trans hMN⟩
  have hi : Function.Injective (fun k : ℕ => 6 * k) := by
    intro a b h
    dsimp only at h
    omega
  have hs : (∑ k ∈ Finset.Icc 1 M, 1 / Real.sqrt (6 * k)) =
      ∑ n ∈ F, |compensatedCoefficient n| := by
    rw [Finset.sum_image (fun a _ b _ h => hi h)]
    apply Finset.sum_congr rfl
    intro k _
    rw [coefficient_six_mul, abs_div, abs_neg, abs_one,
      abs_of_nonneg (Real.sqrt_nonneg _)]
  rw [hs]
  exact Finset.sum_le_sum_of_subset_of_nonneg hsub (fun n _ _ => abs_nonneg _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPortControls/Varianta82c3f86fd828e84bc6765e61540dd2e34ec7bc0d8ce9b5afc5ba05ced46b730.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPortControls/Varianta82c3f86fd828e84bc6765e61540dd2e34ec7bc0d8ce9b5afc5ba05ced46b730.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3dc92b17d3d2e3bc3711f832868e2c3c607958c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
