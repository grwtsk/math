# finite_signed_gram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a139e6e-7477-2170-f630-7c9f8d250f8f",
  "kind": "theorem",
  "lexical_name": "finite_signed_gram",
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
  "slug": "finite-signed-gram--717f817521bc148c4a1f21ee",
  "source": {
    "blob": "e26a1150fc87eac3fcec0a39d4ed488c5673e2e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 130,
    "path": "GRWTSK/Analysis/GreenKernel/UnitInterval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:717f817521bc148c4a1f21eea572060491eee186a9f1708c14429cf11368dc2e",
  "verification": {
    "reference": "docs/verification/Analysis/GreenKernel/UnitInterval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a139e6e-7477-2170-f630-7c9f8d250f8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_signed_gram {ι : Type*} (s : Finset ι) (a r : ι → ℝ)
    (hr : ∀ i ∈ s, r i ∈ Icc (0:ℝ) 1) :
    (∫ t, (∑ i ∈ s, a i*feature (r i) t)^2 ∂unitVolume) =
      ∑ i ∈ s, ∑ j ∈ s, a i*a j*kernel (r i) (r j) := by
  have hx (t : ℝ) : (∑ i ∈ s, a i*feature (r i) t)^2 =
      ∑ i ∈ s, ∑ j ∈ s, a i*a j*(feature (r i) t*feature (r j) t) := by
    rw [pow_two, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro i hi
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    ring
  simp_rw [hx]
  rw [integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro i hi
    rw [integral_finsetSum]
    · apply Finset.sum_congr rfl
      intro j hj
      rw [integral_const_mul, integral_feature_product (hr i hi) (hr j hj)]
    · intro j hj
      exact (feature_product_integrable (r i) (r j)).const_mul _
  · intro i hi
    exact integrable_finsetSum s (fun j hj ↦
      (feature_product_integrable (r i) (r j)).const_mul _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GreenKernel/UnitInterval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GreenKernel/UnitInterval.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e26a1150fc87eac3fcec0a39d4ed488c5673e2e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
