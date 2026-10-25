# mem_cosIntervalReduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ecef6ae-1b6b-ec00-e1ed-25a53562a9ed",
  "kind": "theorem",
  "lexical_name": "mem_cosIntervalReduced",
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
  "slug": "mem-cosintervalreduced--663aa92bbe5fe4215d4f636e",
  "source": {
    "blob": "8236def4d1dc8de6064b30caac3bf5a91b01f21c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 226,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:663aa92bbe5fe4215d4f636ef2f3ea6bcbfdca1591653ef4b1643a04a50a5026",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ecef6ae-1b6b-ec00-e1ed-25a53562a9ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_cosIntervalReduced {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (degree : ℕ := 15) :
    Real.cos x ∈ cosIntervalReduced I degree := by
  unfold cosIntervalReduced reduceToMainPeriod
  simp only []
  set Ired := shiftInterval I (computeShiftK I) with hIred
  set k := computeShiftK I with hk
  have hxred : x - 2 * Real.pi * k ∈ Ired := by
    rw [hIred, hk]
    exact mem_shiftInterval_of_mem hx
  have hcos_eq : Real.cos x = Real.cos (x - 2 * Real.pi * k) := by
    have h := Real.cos_add_int_mul_two_pi x (-k)
    simp only [Int.cast_neg, neg_mul] at h
    rw [← h]
    ring_nf
  split_ifs with hwide
  · simp only [IntervalRat.mem_def, Rat.cast_neg, Rat.cast_one]
    exact ⟨Real.neg_one_le_cos x, Real.cos_le_one x⟩
  · push Not at hwide
    rw [hcos_eq]
    exact taylorModel_correct (tmCos Ired degree) Real.cos
      (fun z hz => tmCos_correct Ired degree z hz) (x - 2 * Real.pi * k) hxred

/-! ### Computable versions using Core sinComputable/cosComputable

These are fully computable wrappers that combine range reduction with the
simpler Core Taylor series evaluation. These are what should be used in
`evalIntervalCore`.
-/

/-- Computable sin evaluation with range reduction.
    Uses Core.sinComputable on the reduced interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant0f13cc5ed377ddaaeba69fbb473fceceb8f2cb0a8ea112e16209693e768a2e6f.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8236def4d1dc8de6064b30caac3bf5a91b01f21c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
