# actualClosedMangoldtXiPair_on_closed_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09146244-c8da-d397-2152-36353738e15e",
  "kind": "theorem",
  "lexical_name": "actualClosedMangoldtXiPair_on_closed_cell",
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
  "slug": "actualclosedmangoldtxipair-on-closed-cell--782a9b1a0bcb98befbb3fd1e",
  "source": {
    "blob": "82bd050d61fd5709c37a73c13303c823b99db18d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variantd9f6e031f22a6e44d4be64fbe8ca7b62d964ac7ca56e3dca7f862aaf210e1ed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:782a9b1a0bcb98befbb3fd1e5091780b66052a69ddb72b81826c1d23102c1fc3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variantd9f6e031f22a6e44d4be64fbe8ca7b62d964ac7ca56e3dca7f862aaf210e1ed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09146244-c8da-d397-2152-36353738e15e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedMangoldtXiPair_on_closed_cell {N : ℕ} {Y : ℝ}
    (hN : 1 ≤ N) (hY : (N : ℝ) ≤ Y) (hYs : Y ≤ (N + 1 : ℕ)) :
    actualClosedMangoldtXiPair Y =
      ∑ n ∈ Finset.Icc 1 N, (vonMangoldt n : ℝ) * actualClosedXiAtomKernel Y n := by
  by_cases hlt : Y < (N + 1 : ℕ)
  · have hY0 : 0 ≤ Y := (Nat.cast_nonneg N).trans hY
    have hf : Nat.floor Y = N := (Nat.floor_eq_iff hY0).2 ⟨hY, by exact_mod_cast hlt⟩
    simp only [actualClosedMangoldtXiPair, hf]
  · have he : Y = (N + 1 : ℕ) := by linarith
    subst Y
    unfold actualClosedMangoldtXiPair
    rw [Nat.floor_natCast, Finset.sum_Icc_succ_top (by omega)]
    rw [actualClosedXiAtomKernel_touching]
    simp

/-- The exact anchored F7 formula retains the combined arithmetic pair and both prescribed heads. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variantd9f6e031f22a6e44d4be64fbe8ca7b62d964ac7ca56e3dca7f862aaf210e1ed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variantd9f6e031f22a6e44d4be64fbe8ca7b62d964ac7ca56e3dca7f862aaf210e1ed0.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82bd050d61fd5709c37a73c13303c823b99db18d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
