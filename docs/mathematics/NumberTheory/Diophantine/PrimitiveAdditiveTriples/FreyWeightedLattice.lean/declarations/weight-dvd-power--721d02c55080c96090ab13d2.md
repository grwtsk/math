# weight_dvd_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ace633ca-f739-8451-9e14-f503e8d5ec2a",
  "kind": "theorem",
  "lexical_name": "weight_dvd_power",
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
  "slug": "weight-dvd-power--721d02c55080c96090ab13d2",
  "source": {
    "blob": "17f4e6c0174cebf8ee5c7f1132a6ad653ef87962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:721d02c55080c96090ab13d2adb43f0e3f2bdb08ef476e2e7bdf8718a38d9bac",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ace633ca-f739-8451-9e14-f503e8d5ec2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weight_dvd_power (h : ℤ) (k : ℕ) (i : Index k) : weight h k i ∣ (-h) ^ k := by
  cases i with
  | inl i =>
    refine ⟨(-h) ^ (k - i.val), ?_⟩
    change (-h) ^ k = (-h) ^ i.val * (-h) ^ (k - i.val)
    rw [← pow_add, Nat.add_sub_of_le (Nat.le_of_lt_succ i.isLt)]
  | inr j =>
    have hj : j.val + 1 ≤ k := by have := j.isLt; omega
    refine ⟨-((-h) ^ (k - (j.val + 1))), ?_⟩
    change (-h) ^ k = (h * (-h) ^ j.val) * -((-h) ^ (k - (j.val + 1)))
    calc
      _ = (-h) ^ (j.val + 1) * (-h) ^ (k - (j.val + 1)) := by
        rw [← pow_add, Nat.add_sub_of_le hj]
      _ = _ := by rw [pow_succ]; ring

/-- The top X column supplies necessity; all other columns supply sufficiency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f4e6c0174cebf8ee5c7f1132a6ad653ef87962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
