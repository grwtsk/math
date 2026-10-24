# fullResidualVector_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ab05271404cf7006704845abc8f83f11bbdff23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7848174d4c6cf4266ffadeb8677b44fa019bc256e3625d8e7cd679105fdfcac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c4272d1-cf12-e85c-711a-44cb22233d3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f6827ee-d9cc-20a8-ad3a-735aa3852a8c",
  "kind": "theorem",
  "lexical_name": "fullResidualVector_decomposition",
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
  "slug": "fullresidualvector-decomposition--0aaf6971288e2f6e221ca4f1",
  "source": {
    "blob": "2ab05271404cf7006704845abc8f83f11bbdff23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailLiteralCheck/Variantb7848174d4c6cf4266ffadeb8677b44fa019bc256e3625d8e7cd679105fdfcac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aaf6971288e2f6e221ca4f1fff14c0743b7385961361afb9f88e1d2ebe40d72",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailLiteralCheck/Variantb7848174d4c6cf4266ffadeb8677b44fa019bc256e3625d8e7cd679105fdfcac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f6827ee-d9cc-20a8-ad3a-735aa3852a8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullResidualVector_decomposition (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (Y : ℝ) (hY : 1 ≤ Y) :
    fullResidualVector X ε hX =
      ((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
        ((Iio (0 : ℝ)).indicator (logResidual X ε)) + coreResidualVector X ε hX Y +
      ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
        ((Ioi (Real.log Y)).indicator (logResidual X ε)) := by
  let n : FullH := ((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
    ((Iio (0 : ℝ)).indicator (logResidual X ε))
  let p : FullH := ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
    ((Ioi (Real.log Y)).indicator (logResidual X ε))
  have hn : n =ᵐ[volume] (Iio (0 : ℝ)).indicator (logResidual X ε) :=
    ((logResidual_memLp X ε hX).indicator measurableSet_Iio).coeFn_toLp
  have hp : p =ᵐ[volume] (Ioi (Real.log Y)).indicator (logResidual X ε) :=
    ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).coeFn_toLp
  have hlog : 0 ≤ Real.log Y := Real.log_nonneg hY
  change fullResidualVector X ε hX = n + coreResidualVector X ε hX Y + p
  apply Lp.ext
  filter_upwards [fullResidualVector_ae X ε hX, coreResidualVector_ae X ε hX Y,
    hn, hp, Lp.coeFn_add (n + coreResidualVector X ε hX Y) p,
    Lp.coeFn_add n (coreResidualVector X ε hX Y)] with u hfull hcore hn hp hsum hnc
  simp only [Pi.add_apply] at hsum hnc
  rw [hfull, hsum, hnc, hn, hcore, hp]
  by_cases hu : u < 0
  · have hin : u ∈ Iio (0 : ℝ) := hu
    have hc : u ∉ Icc (0 : ℝ) (Real.log Y) := fun hc => not_le_of_gt hu hc.1
    have hp : u ∉ Ioi (Real.log Y) := not_lt.mpr (hu.le.trans hlog)
    simp only [indicator_of_mem hin, indicator_of_notMem hc, indicator_of_notMem hp, add_zero]
  · have hnonneg : 0 ≤ u := le_of_not_gt hu
    have hout : u ∉ Iio (0 : ℝ) := hu
    by_cases hp : Real.log Y < u
    · have hip : u ∈ Ioi (Real.log Y) := hp
      have hc : u ∉ Icc (0 : ℝ) (Real.log Y) := fun hc => not_le_of_gt hp hc.2
      simp only [indicator_of_notMem hout, indicator_of_notMem hc, indicator_of_mem hip,
        zero_add]
    · have hc : u ∈ Icc (0 : ℝ) (Real.log Y) := ⟨hnonneg, le_of_not_gt hp⟩
      have hpout : u ∉ Ioi (Real.log Y) := hp
      simp only [indicator_of_notMem hout, indicator_of_mem hc, indicator_of_notMem hpout,
        zero_add, add_zero]

/-- Only the two tails are bounded absolutely; the expanding core retains its filtered norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailLiteralCheck/Variantb7848174d4c6cf4266ffadeb8677b44fa019bc256e3625d8e7cd679105fdfcac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailLiteralCheck/Variantb7848174d4c6cf4266ffadeb8677b44fa019bc256e3625d8e7cd679105fdfcac.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ab05271404cf7006704845abc8f83f11bbdff23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
