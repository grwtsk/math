# source_green_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cc85e2b-8482-03a9-ce37-cbb230d93b8e",
  "kind": "theorem",
  "lexical_name": "source_green_reconstruction",
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
  "slug": "source-green-reconstruction--a30a6b9bca829c99e28d9c74",
  "source": {
    "blob": "e5ea1cfc2c41933f95467ec03bb1029e3276e834",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlexedTents/Variant023f7fbbb263f4462a8a2acd8e35a65de2d7cae671c8301e3b0e4e5e2e636e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a30a6b9bca829c99e28d9c7475efc558a4c5551a27d9defa8bb2c32eb8b9d4ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlexedTents/Variant023f7fbbb263f4462a8a2acd8e35a65de2d7cae671c8301e3b0e4e5e2e636e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cc85e2b-8482-03a9-ce37-cbb230d93b8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_green_reconstruction (z F : ℕ → ℝ) (N : ℕ)
    (hw : ∀ k ≤ N, width z k ≠ 0) :
    F N = F 0 + (z 0 - z N) * (increment F 0 / width z 0) +
      ∑ k ∈ Finset.range N,
        (z (k + 1) - z N) / width z (k + 1) * flexedTent z F k := by
  have h := finite_green_identity z (fun k => increment F k / width z k) N
  have hleft : (∑ k ∈ Finset.range N,
      (z k - z (k + 1)) * (increment F k / width z k)) = F N - F 0 := by
    calc
      _ = ∑ k ∈ Finset.range N, increment F k := by
        apply Finset.sum_congr rfl
        intro k hk
        change width z k * (increment F k / width z k) = _
        field_simp [hw k (Nat.le_of_lt (Finset.mem_range.mp hk))]
      _ = _ := sum_increments F N
  have hright : (∑ k ∈ Finset.range N,
      (z (k + 1) - z N) *
        (increment F (k + 1) / width z (k + 1) - increment F k / width z k)) =
      ∑ k ∈ Finset.range N,
        (z (k + 1) - z N) / width z (k + 1) * flexedTent z F k := by
    apply Finset.sum_congr rfl
    intro k hk
    have hkN := Finset.mem_range.mp hk
    rw [normalized_jump z F k (hw k (by omega)) (hw (k + 1) (by omega))]
    ring
  rw [hleft, hright] at h
  linarith

/-- An old affine prefix is annihilated by the flexed two-increment combination. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlexedTents/Variant023f7fbbb263f4462a8a2acd8e35a65de2d7cae671c8301e3b0e4e5e2e636e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlexedTents/Variant023f7fbbb263f4462a8a2acd8e35a65de2d7cae671c8301e3b0e4e5e2e636e91.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5ea1cfc2c41933f95467ec03bb1029e3276e834` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
