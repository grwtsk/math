# finite_abel_error_interval_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c42f09290414d90b352cd246d303a54d94c5ae6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:557787e9-e3e1-c2af-86ba-ede4084b4402",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f4496d7-5784-0302-f8da-36fd9d32460f",
  "kind": "theorem",
  "lexical_name": "finite_abel_error_interval_integrable",
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
  "slug": "finite-abel-error-interval-integrable--b001f0554ff0ce921b7f5d24",
  "source": {
    "blob": "0c42f09290414d90b352cd246d303a54d94c5ae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b001f0554ff0ce921b7f5d24a4ee6ceff6ba54565c8a77000d67a13c02350054",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f4496d7-5784-0302-f8da-36fd9d32460f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_abel_error_interval_integrable (S : Finset ℕ) (threshold weight : ℕ → ℝ)
    (a b : ℝ) : IntervalIntegrable (finiteAbelError S threshold weight) volume a b := by
  have hs : IntervalIntegrable (fun t ↦ ∑ n ∈ S,
      weight n * (if threshold n ≤ t then (1 : ℝ) else 0)) volume a b := by
    have hi : IntervalIntegrable (∑ n ∈ S, fun x : ℝ ↦
        weight n * (if threshold n ≤ x then (1 : ℝ) else 0)) volume a b :=
      IntervalIntegrable.sum S (fun n _ ↦
      (intervalIntegrable_closed_step a b (threshold n) (fun _ ↦ (1 : ℝ))
        (continuous_const.intervalIntegrable a b)).const_mul (weight n))
    have heq : (∑ n ∈ S, fun x : ℝ ↦
        weight n * (if threshold n ≤ x then (1 : ℝ) else 0)) =
        (fun t ↦ ∑ n ∈ S, weight n * (if threshold n ≤ t then (1 : ℝ) else 0)) := by
      funext x
      simp only [Finset.sum_apply]
    rw [← heq]
    exact hi
  exact hs.sub ((Real.continuous_exp.sub continuous_const).intervalIntegrable a b)

/-- The finite ramp is exactly the integral from zero of the finite step error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c42f09290414d90b352cd246d303a54d94c5ae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
