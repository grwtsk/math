# mem_sinComputableReduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29d8f6c3-4cb7-4e60-bdc2-cb443ed3bda3",
  "kind": "theorem",
  "lexical_name": "mem_sinComputableReduced",
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
  "slug": "mem-sincomputablereduced--6e62654a8abf5b4a031947f8",
  "source": {
    "blob": "3785ac7b91052d3e1fdb970df5adb3380ea4d711",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e62654a8abf5b4a031947f8c6a88986cfe4fae247cd8987b91d01a249048b1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29d8f6c3-4cb7-4e60-bdc2-cb443ed3bda3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sinComputableReduced {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (n : ℕ := 10) :
    Real.sin x ∈ sinComputableReduced I n := by
  unfold sinComputableReduced reduceToMainPeriod
  simp only []
  set Ired := shiftInterval I (computeShiftK I) with hIred
  set k := computeShiftK I with hk
  have hxred : x - 2 * Real.pi * k ∈ Ired := by
    rw [hIred, hk]
    exact mem_shiftInterval_of_mem hx
  have hsin_eq : Real.sin x = Real.sin (x - 2 * Real.pi * k) := by
    have h := Real.sin_add_int_mul_two_pi x (-k)
    simp only [Int.cast_neg, neg_mul] at h
    rw [← h]
    ring_nf
  split_ifs with hwide
  · simp only [IntervalRat.mem_def, Rat.cast_neg, Rat.cast_one]
    exact ⟨Real.neg_one_le_sin x, Real.sin_le_one x⟩
  · push Not at hwide
    rw [hsin_eq]
    exact mem_sinComputable hxred n

/-- cos x ∈ cosComputableReduced I for all x ∈ I -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3785ac7b91052d3e1fdb970df5adb3380ea4d711` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
