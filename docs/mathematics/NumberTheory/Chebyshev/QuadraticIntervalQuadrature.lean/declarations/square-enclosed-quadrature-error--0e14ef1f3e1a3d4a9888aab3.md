# square_enclosed_quadrature_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2405885-f9d1-b41b-5c17-fe23c3463abe",
  "kind": "theorem",
  "lexical_name": "square_enclosed_quadrature_error",
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
  "slug": "square-enclosed-quadrature-error--0e14ef1f3e1a3d4a9888aab3",
  "source": {
    "blob": "2c7834c86fa1f5ab2e553b689e850e4dc9bc25cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 63,
    "path": "GRWTSK/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e14ef1f3e1a3d4a9888aab3a8aae6dc114aa8a1204bf31c2be27cce0b3272e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2405885-f9d1-b41b-5c17-fe23c3463abe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_enclosed_quadrature_error (n : ℕ) (hn : 1 ≤ n)
    {ι : Type*} (S : Finset ι) (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ)
    (N : ℕ) (hN : 0 < N) (v : ι → ℕ → ℂ) (ε : ι → ℕ → ℝ)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j)
    (hv : ∀ j ∈ S, ∀ i < N,
      ‖density (c j) (uniformNodes (squareEndpoint n) (squareEndpoint (n + 1)) N i) -
        v j i‖ ≤ ε j i) :
    let x := uniformNodes (squareEndpoint n) (squareEndpoint (n + 1)) N
    ‖(∑ j ∈ S, (m j : ℂ) * squareKernel n (ρ j)) -
      ∑ j ∈ S, (m j : ℂ) * (∑ i ∈ Finset.range N, (x (i + 1) - x i) • v j i)‖ ≤
      (∑ j ∈ S, (m j : ℝ) *
        (sensitivity (squareEndpoint n) (squareEndpoint (n + 1)) (β j) * r j)) +
      ∑ j ∈ S, (m j : ℝ) * (partitionError x N (β j) (c j) +
        ∑ i ∈ Finset.range N, (x (i + 1) - x i) * ε j i) := by
  let x := uniformNodes (squareEndpoint n) (squareEndpoint (n + 1)) N
  let exactSum := ∑ j ∈ S, (m j : ℂ) * squareKernel n (ρ j)
  let centerSum := ∑ j ∈ S, (m j : ℂ) * squareKernel n (c j)
  let sampleSum := ∑ j ∈ S, (m j : ℂ) *
    (∑ i ∈ Finset.range N, (x (i + 1) - x i) • v j i)
  have htriangle : ‖exactSum - sampleSum‖ ≤
      ‖exactSum - centerSum‖ + ‖centerSum - sampleSum‖ := by
    calc
      _ = ‖(exactSum - centerSum) + (centerSum - sampleSum)‖ := by congr 1; ring
      _ ≤ _ := norm_add_le _ _
  exact htriangle.trans (add_le_add
    (square_finite_enclosure_error n hn S m ρ c r β hρ hc hr)
    (square_finite_quadrature_error n hn S m c β N hN v ε hc hv))

end
end GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalQuadrature
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c7834c86fa1f5ab2e553b689e850e4dc9bc25cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
