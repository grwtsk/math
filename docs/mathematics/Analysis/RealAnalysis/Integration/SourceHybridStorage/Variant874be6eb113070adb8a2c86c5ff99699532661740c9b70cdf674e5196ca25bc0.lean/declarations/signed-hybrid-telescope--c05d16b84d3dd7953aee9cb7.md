# signed_hybrid_telescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:031de76e-0b8b-1305-a58d-6bc8387def5a",
  "kind": "theorem",
  "lexical_name": "signed_hybrid_telescope",
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
  "slug": "signed-hybrid-telescope--c05d16b84d3dd7953aee9cb7",
  "source": {
    "blob": "643fa245f70ff184fcfe69841fc69cedf5bc0697",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c05d16b84d3dd7953aee9cb786ca2bd148ae2e0838de3ef439dded323287793f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:031de76e-0b8b-1305-a58d-6bc8387def5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_hybrid_telescope (f g ef eg L R : ℕ → ℝ) (N : ℕ)
    (hflow : ∀ j ≤ N, f j + R j - L j ≤ ef j)
    (hevent : ∀ j < N, g j + L (j + 1) - R j ≤ eg j) :
    (∑ j ∈ Finset.range (N + 1), f j) + (∑ j ∈ Finset.range N, g j) ≤
      L 0 - R N + (∑ j ∈ Finset.range (N + 1), ef j) +
        (∑ j ∈ Finset.range N, eg j) := by
  induction N with
  | zero =>
      simp only [zero_add, Finset.sum_range_one, Finset.sum_range_zero, add_zero]
      have h := hflow 0 (by omega)
      linarith only [h]
  | succ N ih =>
      have hp := ih (fun j hj => hflow j (by omega))
        (fun j hj => hevent j (by omega))
      have hf := hflow (N + 1) (by omega)
      have hg := hevent N (by omega)
      simp only [Finset.sum_range_succ] at hp ⊢
      linarith only [hp, hf, hg]

/-- Only the initial storage, final storage and total signed error are bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `643fa245f70ff184fcfe69841fc69cedf5bc0697` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
