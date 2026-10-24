# actual_boundary_ratio_path_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:306af84e-ab2c-95cc-0c59-b3b907beb8b7",
  "kind": "theorem",
  "lexical_name": "actual_boundary_ratio_path_tendsto",
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
  "slug": "actual-boundary-ratio-path-tendsto--27a1d6eaf5e06df4b27ed20e",
  "source": {
    "blob": "92fe740a69c06b5ef32707d9edebeefd3a030058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 227,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant7a500ad61aa3020c19b3e850daa8be009bf27fce7c19df9e09009d73170771d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27a1d6eaf5e06df4b27ed20e209272d8820a340d119bf54200f157ca67bf19f9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant7a500ad61aa3020c19b3e850daa8be009bf27fce7c19df9e09009d73170771d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:306af84e-ab2c-95cc-0c59-b3b907beb8b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_boundary_ratio_path_tendsto (delta : ℝ → ℝ) (lambda : ℝ → ℂ)
    (hdelta : ∀ᶠ A : ℝ in atTop, 0 < delta A)
    (hz : ∀ᶠ A : ℝ in atTop, delta A ≤ (lambda A+1/2).re)
    (hf : ∀ᶠ A : ℝ in atTop, (lambda A+1/2)^2-1/4 ≠ 0)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ =>
      ContinuousResearch.SourceBoundaryTransform.boundaryTransform A (lambda A)/
        (-lambda A*leadingCoefficient (lambda A+1/2)^2)) atTop (𝓝 1) := by
  have ht := actual_source_ratio_path_tendsto delta (fun A => lambda A+1/2)
    hdelta hz hf hprod
  have he : (fun A : ℝ =>
      ContinuousResearch.SourceBoundaryTransform.boundaryTransform A (lambda A)/
        (-lambda A*leadingCoefficient (lambda A+1/2)^2)) =ᶠ[atTop]
      (fun A : ℝ => (scaledAmplitude A (lambda A+1/2)/leadingCoefficient (lambda A+1/2))^2) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ),hdelta,hz,hf] with A hA hd hz hf
    have hl : lambda A ≠ 0 := by
      intro h
      apply hf
      rw [h]
      norm_num
    have hc := leadingCoefficient_ne_zero
      (half_plane_ne_zero (lt_of_lt_of_le hd hz)) hf
    exact boundary_ratio_exact hA hl hc
  apply Tendsto.congr' he.symm
  simpa using ht.pow 2

end ContinuousResearch.ComplexBoundaryPaths
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant7a500ad61aa3020c19b3e850daa8be009bf27fce7c19df9e09009d73170771d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant7a500ad61aa3020c19b3e850daa8be009bf27fce7c19df9e09009d73170771d0.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fe740a69c06b5ef32707d9edebeefd3a030058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
