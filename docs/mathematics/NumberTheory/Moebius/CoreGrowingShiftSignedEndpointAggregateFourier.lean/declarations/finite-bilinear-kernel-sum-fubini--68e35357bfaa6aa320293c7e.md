# finite_bilinear_kernel_sum_fubini

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aef1dbf9-d28e-ece2-3dfd-b5e167fc1efb",
  "kind": "theorem",
  "lexical_name": "finite_bilinear_kernel_sum_fubini",
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
  "slug": "finite-bilinear-kernel-sum-fubini--68e35357bfaa6aa320293c7e",
  "source": {
    "blob": "4d474e11dfdcc770ce0249d92df027b85fee216d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 160,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointAggregateFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68e35357bfaa6aa320293c7e11649eecc4d61948d76041ec56b4f10327cdb1f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointAggregateFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aef1dbf9-d28e-ece2-3dfd-b5e167fc1efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_bilinear_kernel_sum_fubini
    {ι α : Type*}
    [DecidableEq ι] [Fintype α]
    (S : Finset ι)
    (f : α → ℂ)
    (K : ι → α → α → ℂ) :
    (∑ i ∈ S, ∑ x : α, ∑ y : α,
      f x * f y * K i x y) =
      ∑ x : α, ∑ y : α,
        f x * f y * (∑ i ∈ S, K i x y) := by
  classical
  calc
    (∑ i ∈ S, ∑ x : α, ∑ y : α,
      f x * f y * K i x y) =
        ∑ x : α, ∑ i ∈ S, ∑ y : α,
          f x * f y * K i x y := by
            rw [Finset.sum_comm]
    _ = ∑ x : α, ∑ y : α, ∑ i ∈ S,
          f x * f y * K i x y := by
            apply Fintype.sum_congr
            intro x
            rw [Finset.sum_comm]
    _ = ∑ x : α, ∑ y : α,
        f x * f y * (∑ i ∈ S, K i x y) := by
      apply Fintype.sum_congr
      intro x
      apply Fintype.sum_congr
      intro y
      rw [Finset.mul_sum]

/-- One complex bilinear form using the single prefix-aggregated real-space
kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointAggregateFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointAggregateFourier.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d474e11dfdcc770ce0249d92df027b85fee216d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
