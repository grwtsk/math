# pickupMertensPrefix_fixed_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:905a2c56-07d4-85e6-0172-4b821cf1f921",
  "kind": "theorem",
  "lexical_name": "pickupMertensPrefix_fixed_inventory",
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
  "slug": "pickupmertensprefix-fixed-inventory--2d18f8e224821b99b16a9bf2",
  "source": {
    "blob": "d5a566b331cac8a1b8d193f0ad39cde081191605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 185,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicMertensPairKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d18f8e224821b99b16a9bf25d191bedf9e5240c491261d20cc7ac74624db694",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicMertensPairKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:905a2c56-07d4-85e6-0172-4b821cf1f921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupMertensPrefix_fixed_inventory
    {n U : ℕ} (hnU : n ≤ U) :
    pickupMertensPrefix n =
      ∑ a ∈ Finset.Icc 1 U,
        if a ≤ n then moebiusReal a else 0 := by
  unfold pickupMertensPrefix
  have hsub : Finset.Icc 1 n ⊆ Finset.Icc 1 U := by
    intro a ha
    exact Finset.mem_Icc.mpr
      ⟨(Finset.mem_Icc.mp ha).1, (Finset.mem_Icc.mp ha).2.trans hnU⟩
  calc
    (∑ a ∈ Finset.Icc 1 n, moebiusReal a) =
        ∑ a ∈ Finset.Icc 1 n,
          if a ≤ n then moebiusReal a else 0 := by
      apply Finset.sum_congr rfl
      intro a ha
      simp [(Finset.mem_Icc.mp ha).2]
    _ = ∑ a ∈ Finset.Icc 1 U,
          if a ≤ n then moebiusReal a else 0 := by
      apply Finset.sum_subset hsub
      intro a haU han
      have hnot : ¬a ≤ n := by
        intro hanle
        exact han (Finset.mem_Icc.mpr
          ⟨(Finset.mem_Icc.mp haU).1, hanle⟩)
      simp [hnot]

/-- Fixed-inventory expansion of the actual Mertens square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicMertensPairKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicMertensPairKernel.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a566b331cac8a1b8d193f0ad39cde081191605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
