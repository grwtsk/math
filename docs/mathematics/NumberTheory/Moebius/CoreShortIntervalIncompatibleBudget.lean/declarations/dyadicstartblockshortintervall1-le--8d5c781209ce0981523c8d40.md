# dyadicStartBlockShortIntervalL1_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e983cf1b-58de-3b07-7ff0-188fca3e9f28",
  "kind": "theorem",
  "lexical_name": "dyadicStartBlockShortIntervalL1_le",
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
  "slug": "dyadicstartblockshortintervall1-le--8d5c781209ce0981523c8d40",
  "source": {
    "blob": "e4e7b74d345df9fc14d7775735238e326b0e3c2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d5c781209ce0981523c8d40bf91e8a98a51ab2d43bcfa659b417ce17ced95d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e983cf1b-58de-3b07-7ff0-188fca3e9f28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicStartBlockShortIntervalL1_le
    (r n : ℕ) :
    dyadicStartBlockShortIntervalL1 r n ≤
      ((2 ^ r : ℕ) : ℝ) * (n : ℝ) := by
  unfold dyadicStartBlockShortIntervalL1
  calc
    (∑ x ∈ dyadicStartBlock r,
      |ambientMobiusShortIntervalSum x n|) ≤
      ∑ _x ∈ dyadicStartBlock r, (n : ℝ) := by
        apply Finset.sum_le_sum
        intro x _hx
        exact abs_ambientMobiusShortIntervalSum_le_length x n
    _ = ((dyadicStartBlock r).card : ℝ) * (n : ℝ) := by simp
    _ = ((2 ^ r : ℕ) : ℝ) * (n : ℝ) := by
      rw [dyadicStartBlock_card]

/-- Pure deterministic budget for incompatible dyadic start blocks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4e7b74d345df9fc14d7775735238e326b0e3c2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
