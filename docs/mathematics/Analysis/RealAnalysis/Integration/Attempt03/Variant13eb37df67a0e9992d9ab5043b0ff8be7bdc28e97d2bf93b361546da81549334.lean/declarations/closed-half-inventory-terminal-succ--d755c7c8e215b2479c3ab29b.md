# closed_half_inventory_terminal_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6ac1b34-c3e8-e3b4-fa4b-bbdc1fae71cf",
  "kind": "theorem",
  "lexical_name": "closed_half_inventory_terminal_succ",
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
  "slug": "closed-half-inventory-terminal-succ--d755c7c8e215b2479c3ab29b",
  "source": {
    "blob": "3c52e1574b6865627220b3aa15ad08712d480a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 203,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant13eb37df67a0e9992d9ab5043b0ff8be7bdc28e97d2bf93b361546da81549334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d755c7c8e215b2479c3ab29bd950c390f6f0470d42b5db86b190dbb1b6296f5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt03/Variant13eb37df67a0e9992d9ab5043b0ff8be7bdc28e97d2bf93b361546da81549334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6ac1b34-c3e8-e3b4-fa4b-bbdc1fae71cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_half_inventory_terminal_succ (U M : ℕ) (hUM : U + 1 ≤ M) :
    closedCenteredHalfInventory U M -
      (∑ n ∈ Finset.Ioc U M, centeredBeta U n) / Real.sqrt (M : ℝ) =
        closedCenteredHalfInventory U (M - 1) -
          (∑ n ∈ Finset.Ioc U (M - 1), centeredBeta U n) / Real.sqrt (M : ℝ) := by
  have hn : U ≤ M - 1 := by omega
  have he : M - 1 + 1 = M := by omega
  have hsum := Finset.sum_Ioc_succ_top hn (f := fun n => centeredBeta U n)
  have hhalf := Finset.sum_Ioc_succ_top hn
    (f := fun n => centeredBeta U n / Real.sqrt (n : ℝ))
  rw [he] at hsum hhalf
  unfold closedCenteredHalfInventory
  rw [hsum, hhalf]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variant13eb37df67a0e9992d9ab5043b0ff8be7bdc28e97d2bf93b361546da81549334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant13eb37df67a0e9992d9ab5043b0ff8be7bdc28e97d2bf93b361546da81549334.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c52e1574b6865627220b3aa15ad08712d480a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
