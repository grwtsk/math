# Complex.norm_eventually_eq_of_mdifferentiableAt_of_isLocalMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a7c7cba33ea84031d25e50fbdb773f30a988a37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7ae6832-ba38-88c8-7aba-ddee139fa92f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da4d8fcc-a407-00e1-c379-b37a38b8a6f0",
  "kind": "theorem",
  "lexical_name": "Complex.norm_eventually_eq_of_mdifferentiableAt_of_isLocalMax",
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
  "slug": "complex-norm-eventually-eq-of-mdifferentiableat-of-islocalmax--04689af5ac44a55003b34ff9",
  "source": {
    "blob": "4a7c7cba33ea84031d25e50fbdb773f30a988a37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04689af5ac44a55003b34ff99d013f1004d86154681c23be7c6b938a24fa3ccc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da4d8fcc-a407-00e1-c379-b37a38b8a6f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.norm_eventually_eq_of_mdifferentiableAt_of_isLocalMax {f : M → F} {c : M}
    (hd : ∀ᶠ z in 𝓝 c, MDiffAt f z) (hc : IsLocalMax (norm ∘ f) c) :
    ∀ᶠ y in 𝓝 c, ‖f y‖ = ‖f c‖ := by
  set e := extChartAt I c
  have hI : range I = univ := ModelWithCorners.Boundaryless.range_eq_univ
  have H₁ : 𝓝[range I] (e c) = 𝓝 (e c) := by rw [hI, nhdsWithin_univ]
  have H₂ : map e.symm (𝓝 (e c)) = 𝓝 c := by
    rw [← map_extChartAt_symm_nhdsWithin_range (I := I) c, H₁]
  rw [← H₂, eventually_map]
  replace hd : ∀ᶠ y in 𝓝 (e c), DifferentiableAt ℂ (f ∘ e.symm) y := by
    have : e.target ∈ 𝓝 (e c) := H₁ ▸ extChartAt_target_mem_nhdsWithin c
    filter_upwards [this, Tendsto.eventually H₂.le hd] with y hyt hy₂
    have hys : e.symm y ∈ (chartAt H c).source := by
      rw [← extChartAt_source I c]
      exact (extChartAt I c).map_target hyt
    have hfy : f (e.symm y) ∈ (chartAt F (0 : F)).source := mem_univ _
    rw [mdifferentiableAt_iff_of_mem_source hys hfy, hI, differentiableWithinAt_univ,
      e.right_inv hyt] at hy₂
    exact hy₂.2
  convert! norm_eventually_eq_of_isLocalMax hd _
  · exact congr_arg f (extChartAt_to_inv _).symm
  · simpa only [e, IsLocalMax, IsMaxFilter, ← H₂, (· ∘ ·), extChartAt_to_inv] using! hc

/-!
### Functions holomorphic on a set
-/

namespace MDifferentiableOn

/-- **Maximum modulus principle** on a connected set. Let `U` be a (pre)connected open set in a
complex normed space. Let `f : E → F` be a function that is complex differentiable on `U`. Suppose
that `‖f x‖` takes its maximum value on `U` at `c ∈ U`. Then `‖f x‖ = ‖f c‖` for all `x ∈ U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7c7cba33ea84031d25e50fbdb773f30a988a37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
