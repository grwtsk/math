# positive_closed_count_kernel_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae8599f5-3a6f-7095-0b35-73476fa51bba",
  "kind": "theorem",
  "lexical_name": "positive_closed_count_kernel_tsum",
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
  "slug": "positive-closed-count-kernel-tsum--c15080fb12c89a81a70f73aa",
  "source": {
    "blob": "939193eb909504de26304c17db9b6d7e48d59ca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 64,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c15080fb12c89a81a70f73aa099ac345d7c84ae0739111f56d628bcbfb741737",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae8599f5-3a6f-7095-0b35-73476fa51bba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_closed_count_kernel_tsum (t c : ℝ) :
    (∑' o : PositiveOccurrence, positiveClosedCountKernel t c o) =
      (Zeta23.Ncount 0 t : ℝ) * c := by
  classical
  have hf : Finite (positiveClosedCountSet t) :=
    (positive_closed_count_set_finite t).to_subtype
  let : Fintype (positiveClosedCountSet t) := Fintype.ofFinite _
  have hcard : Nat.card (positiveClosedCountSet t) = Zeta23.Ncount 0 t :=
    (Nat.card_congr (positiveClosedWindowEquiv t)).trans (positive_occurrence_window_card_eq_count t)
  have hc : Fintype.card (positiveClosedCountSet t) = Zeta23.Ncount 0 t := by
    simpa only [Nat.card_eq_fintype_card] using hcard
  have hi : positiveClosedCountKernel t c = (positiveClosedCountSet t).indicator (fun _ => c) := rfl
  rw [hi, ← tsum_subtype]
  simp only [tsum_fintype, Finset.sum_const, Finset.card_univ, nsmul_eq_mul, hc]

/-- The actual strict tail within positive ordinates is the full actual strict
ordinate tail when T >= 0. Both types retain every analytic occurrence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939193eb909504de26304c17db9b6d7e48d59ca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
