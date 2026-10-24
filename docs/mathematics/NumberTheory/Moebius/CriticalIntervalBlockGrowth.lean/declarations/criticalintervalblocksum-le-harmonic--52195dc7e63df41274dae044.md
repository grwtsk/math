# criticalIntervalBlockSum_le_harmonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cfaf822-6c45-16fa-edcf-1517b9496d9a",
  "kind": "theorem",
  "lexical_name": "criticalIntervalBlockSum_le_harmonic",
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
  "slug": "criticalintervalblocksum-le-harmonic--52195dc7e63df41274dae044",
  "source": {
    "blob": "8ae1e6fad120bb5621032759f7518995c2d9e011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52195dc7e63df41274dae044ea39e8c71191566e64210f07aed50f20d38ffa43",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cfaf822-6c45-16fa-edcf-1517b9496d9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalIntervalBlockSum_le_harmonic (N : ℕ) :
    criticalIntervalBlockSum N ≤ 40 * (harmonic N : ℝ) := by
  unfold criticalIntervalBlockSum
  calc
    (∑ n ∈ Finset.Icc 1 N, criticalIntervalBlock n) ≤
        ∑ n ∈ Finset.Icc 1 N, 40 / (n : ℝ) := by
      apply Finset.sum_le_sum
      intro n hn
      exact criticalIntervalBlock_le_harmonic (Finset.mem_Icc.mp hn).1
    _ = 40 * (harmonic N : ℝ) := by
      rw [harmonic_eq_sum_Icc, Rat.cast_sum]
      simp_rw [Rat.cast_inv, Rat.cast_natCast, Finset.mul_sum, div_eq_mul_inv]

/-- In particular, the elementary critical block budget grows at most
logarithmically with the arithmetic horizon. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae1e6fad120bb5621032759f7518995c2d9e011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
