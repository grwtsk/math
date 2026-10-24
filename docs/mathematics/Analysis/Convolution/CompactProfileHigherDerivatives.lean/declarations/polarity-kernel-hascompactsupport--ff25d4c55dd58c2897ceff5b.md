# polarity_kernel_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29741dfe-e932-fc9f-9727-7fa9305ffd4a",
  "kind": "theorem",
  "lexical_name": "polarity_kernel_hasCompactSupport",
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
  "slug": "polarity-kernel-hascompactsupport--ff25d4c55dd58c2897ceff5b",
  "source": {
    "blob": "0d4136567b6c9410e2e895e1d82017cec294e4c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 106,
    "path": "GRWTSK/Analysis/Convolution/CompactProfileHigherDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff25d4c55dd58c2897ceff5b3d2d1c9197087226e29eaadfe7bcc6abcb12975f",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/CompactProfileHigherDerivatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29741dfe-e932-fc9f-9727-7fa9305ffd4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polarity_kernel_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (polarityKernel A) := by
  have term (k : ℕ) : HasCompactSupport (fun t : ℝ ↦
      Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
        (deriv (deriv (correlation A)) (t + Real.log k) -
          (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log k))) := by
    have first : HasCompactSupport (fun t : ℝ ↦ deriv (correlation A) (t + Real.log k)) :=
      (correlation_hasCompactSupport hA).deriv.comp_homeomorph (Homeomorph.addRight _)
    have second : HasCompactSupport
        (fun t : ℝ ↦ deriv (deriv (correlation A)) (t + Real.log k)) :=
      (correlation_hasCompactSupport hA).deriv.deriv.comp_homeomorph (Homeomorph.addRight _)
    have half : HasCompactSupport
        (fun t : ℝ ↦ (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log k)) := first.mul_left
    exact (second.sub half).mul_left
  have finite := HasCompactSupport.finset_sum
    (s := Finset.Icc 2 (integerCutoff A)) (fun k _hk ↦ term k)
  have same : polarityKernel A = ∑ k ∈ Finset.Icc 2 (integerCutoff A),
      fun t : ℝ ↦ Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
        (deriv (deriv (correlation A)) (t + Real.log k) -
          (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log k)) := by
    funext t
    simp only [polarityKernel, Finset.sum_apply]
  rw [same]
  exact finite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/CompactProfileHigherDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/CompactProfileHigherDerivatives.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d4136567b6c9410e2e895e1d82017cec294e4c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
