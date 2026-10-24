# mertensPrefix_fixed_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14f771c7-8e55-a817-9572-43d4c5a94db7",
  "kind": "theorem",
  "lexical_name": "mertensPrefix_fixed_inventory",
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
  "slug": "mertensprefix-fixed-inventory--eadb98d40719d0388d287178",
  "source": {
    "blob": "5e6c4b01e48f5cf6e779023aac9098fc0801127d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 36,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eadb98d40719d0388d287178a56a33ae9c3e747f1e7d197263daa5004f6e3ab7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteResponseSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14f771c7-8e55-a817-9572-43d4c5a94db7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensPrefix_fixed_inventory {u T : ℝ} (huT : u ≤ T) :
    mertensPrefix (Real.exp u) =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        if Real.log n ≤ u then moebiusReal n else 0 := by
  have hsub : Finset.Icc 1 ⌊Real.exp u⌋₊ ⊆ Finset.Icc 1 ⌊Real.exp T⌋₊ := by
    intro n hn
    have hne := Finset.mem_Icc.mp hn
    exact Finset.mem_Icc.mpr ⟨hne.1,
      hne.2.trans (Nat.floor_mono (Real.exp_le_exp.mpr huT))⟩
  unfold mertensPrefix
  calc
    _ = ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
        if Real.log n ≤ u then moebiusReal n else 0 := by
      apply Finset.sum_congr rfl
      intro n hn
      have hne := Finset.mem_Icc.mp hn
      simp [(pickup_log_le_iff_closed_cutoff hne.1 u).mpr hne.2]
    _ = _ := by
      apply Finset.sum_subset hsub
      intro n hnT hnu
      have hn1 := (Finset.mem_Icc.mp hnT).1
      have hnot : ¬Real.log n ≤ u := by
        intro h
        exact hnu (Finset.mem_Icc.mpr
          ⟨hn1, (pickup_log_le_iff_closed_cutoff hn1 u).mp h⟩)
      simp [hnot]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteResponseSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e6c4b01e48f5cf6e779023aac9098fc0801127d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
