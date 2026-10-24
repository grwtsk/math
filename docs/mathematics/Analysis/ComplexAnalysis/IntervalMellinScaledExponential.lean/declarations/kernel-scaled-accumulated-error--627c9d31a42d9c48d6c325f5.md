# kernel_scaled_accumulated_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa373f47-2379-92b0-33c7-74a74abb108a",
  "kind": "theorem",
  "lexical_name": "kernel_scaled_accumulated_error",
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
  "slug": "kernel-scaled-accumulated-error--627c9d31a42d9c48d6c325f5",
  "source": {
    "blob": "625d1683e862eabb9bc10ddea4eeabfef7e5fcbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 121,
    "path": "GRWTSK/Analysis/Complex/IntervalMellinScaledExponential.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:627c9d31a42d9c48d6c325f5b4f7115e429d4a275e0c67788f3077898020c190",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa373f47-2379-92b0-33c7-74a74abb108a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_scaled_accumulated_error (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (ha : 1 < x 0) {z : ℂ} (hz : z.re ≤ 1)
    (k Lr s M : ℕ → ℕ) (L₂ : ℕ) (hL₂ : 0 < L₂)
    (hk : ∀ i < N, (2 : ℝ) ^ k i ≤ x i)
    (hk₂ : ∀ i < N, x i ≤ (2 : ℝ) ^ (k i + 1))
    (hLr : ∀ i < N, 0 < Lr i)
    (hguard : ∀ i < N,
      (reducedNodeBound z (x i) (k i) L₂ (Lr i) / (2 ^ s i : ℕ)) / (M i + 1 : ℕ) ≤
        (1 / 2 : ℝ))
    (acc : ℕ → ℂ) (e : ℕ → ℝ) (h0 : acc 0 = 0)
    (hstep : ∀ i < N, ‖acc (i + 1) - (acc i + (x (i + 1) - x i) •
      scaledNodeValue z (x i) (k i) L₂ (Lr i) (s i) (M i))‖ ≤ e i) :
    ‖kernel (x 0) (x N) z - acc N‖ ≤ arithmeticMeshBound x N z +
      (∑ i ∈ Finset.range N, (x (i + 1) - x i) *
        scaledNodeError z (x i) (k i) L₂ (Lr i) (s i) (M i)) + ∑ i ∈ Finset.range N, e i := by
  have hq := kernel_scaled_error x N hx ha hz k Lr s M L₂ hL₂ hk hk₂ hLr hguard
  have hs := sum_from_step_errors
    (fun i => (x (i + 1) - x i) • scaledNodeValue z (x i) (k i) L₂ (Lr i) (s i) (M i))
    acc e h0 N hstep
  let Q : ℂ := ∑ i ∈ Finset.range N,
    (x (i + 1) - x i) • scaledNodeValue z (x i) (k i) L₂ (Lr i) (s i) (M i)
  calc
    _ = ‖(kernel (x 0) (x N) z - Q) + (Q - acc N)‖ := by congr 1; abel
    _ ≤ ‖kernel (x 0) (x N) z - Q‖ + ‖Q - acc N‖ := norm_add_le _ _
    _ ≤ _ := add_le_add hq hs

/-- Parameter one remains exactly one, with zero constructed node error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntervalMellinScaledExponential.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `625d1683e862eabb9bc10ddea4eeabfef7e5fcbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
