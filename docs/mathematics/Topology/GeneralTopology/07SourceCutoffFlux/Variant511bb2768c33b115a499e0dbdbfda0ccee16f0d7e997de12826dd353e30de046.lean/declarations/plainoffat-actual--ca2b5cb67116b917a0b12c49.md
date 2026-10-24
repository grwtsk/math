# plainOffAt_actual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5458a7ff-333a-680c-c47c-d6076720a674",
  "kind": "theorem",
  "lexical_name": "plainOffAt_actual",
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
  "slug": "plainoffat-actual--ca2b5cb67116b917a0b12c49",
  "source": {
    "blob": "8fd7bb04b663cbc0473dc12e1fb7876244d30960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 263,
    "path": "GRWTSK/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca2b5cb67116b917a0b12c495ea10b602339022d7d1e9f1c6c4e80a97d845654",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5458a7ff-333a-680c-c47c-d6076720a674`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plainOffAt_actual (A : ℝ) (hA : 1 ≤ A) :
    plainOffAt A (vaughanCutoff A) (sourceKernelCutoff A) = plainTypeTwoOffDiagonal A := by
  classical
  unfold plainOffAt
  rw [offDiagonal_eq_filter]
  unfold plainTypeTwoOffDiagonal EstimateTypeTwoLogBlocks.longOffDiagonalPairs sourceKernel
  simp only [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product, mul_one]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hne : n ≠ m
  · by_cases hp : m * n ≤ sourceKernelCutoff A
    · rw [if_pos hne, if_pos ⟨hne, hp⟩]
    · have hz := sourcePlainWeight_zero_of_cutoff_lt A hA (m * n) (by omega)
      rw [if_pos hne, if_neg (fun h ↦ hp h.2), hz, mul_zero]
  · rw [if_neg hne, if_neg (fun h ↦ hne h.1)]

/-- Exact row centering compensation, before any signed estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/07SourceCutoffFlux/Variant511bb2768c33b115a499e0dbdbfda0ccee16f0d7e997de12826dd353e30de046.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fd7bb04b663cbc0473dc12e1fb7876244d30960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
