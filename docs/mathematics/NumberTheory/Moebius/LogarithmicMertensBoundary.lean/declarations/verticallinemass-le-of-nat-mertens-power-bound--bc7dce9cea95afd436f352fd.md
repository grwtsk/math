# verticalLineMass_le_of_nat_mertens_power_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37d5d21b-4f9d-9708-3402-3d3c7b29cd48",
  "kind": "theorem",
  "lexical_name": "verticalLineMass_le_of_nat_mertens_power_bound",
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
  "slug": "verticallinemass-le-of-nat-mertens-power-bound--bc7dce9cea95afd436f352fd",
  "source": {
    "blob": "4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 293,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc7dce9cea95afd436f352fdb300a63b89345af7198379d8ede973f20f0cf8f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37d5d21b-4f9d-9708-3402-3d3c7b29cd48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verticalLineMass_le_of_nat_mertens_power_bound {C β σ T : ℝ}
    (hC : 0 ≤ C) (hβ : 0 ≤ β)
    (hσ : 0 < σ) (hgap : β < σ + 1 / 2)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β)
    (hT : 0 ≤ T) :
    verticalLineMass σ T ≤
      C ^ 2 / (2 * σ ^ 2 * (σ + 1 / 2 - β)) := by
  have ha : 0 < σ + 1 / 2 - β := by linarith
  apply verticalLineMass_le_of_source_exp_bound hC ha hσ ?_ hT
  intro u hu
  have hMexp := mertensPrefix_exp_le_of_powerBound hC hβ hM hu
  rw [dampedMertensSource_eq_mertensPrefix, abs_mul,
    abs_of_pos (Real.exp_pos _)]
  calc
    Real.exp (-(σ + 1 / 2) * u) * |mertensPrefix (Real.exp u)| ≤
        Real.exp (-(σ + 1 / 2) * u) * (C * Real.exp (β * u)) :=
      mul_le_mul_of_nonneg_left hMexp (Real.exp_pos _).le
    _ = C * Real.exp (-(σ + 1 / 2 - β) * u) := by
      calc
        Real.exp (-(σ + 1 / 2) * u) * (C * Real.exp (β * u)) =
            C * (Real.exp (-(σ + 1 / 2) * u) *
              Real.exp (β * u)) := by ring
        _ = C * Real.exp (-(σ + 1 / 2 - β) * u) := by
          rw [← Real.exp_add]
          congr 1
          ring

/-- The compact part of the boundary source costs at most one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
