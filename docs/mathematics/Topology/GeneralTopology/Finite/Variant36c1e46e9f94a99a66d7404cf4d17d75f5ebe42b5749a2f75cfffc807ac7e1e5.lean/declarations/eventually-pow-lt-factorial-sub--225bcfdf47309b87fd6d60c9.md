# eventually_pow_lt_factorial_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b914ca0-868b-bee1-8147-eeac8840c857",
  "kind": "theorem",
  "lexical_name": "eventually_pow_lt_factorial_sub",
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
  "slug": "eventually-pow-lt-factorial-sub--225bcfdf47309b87fd6d60c9",
  "source": {
    "blob": "c6afa688a56cc8a6fc39893b4a5fa642d5709aa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:225bcfdf47309b87fd6d60c98f3893b26d2daef7abd05e39f537e2ebbb9ad00a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b914ca0-868b-bee1-8147-eeac8840c857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_pow_lt_factorial_sub (c d : ℕ) : ∀ᶠ n in atTop, c ^ n < (n - d)! := by
  rw [eventually_atTop]
  refine ⟨2 * (c ^ 2 + d + 1), ?_⟩
  intro n hn
  obtain ⟨d', rfl⟩ := Nat.exists_eq_add_of_le hn
  obtain (rfl | c0) := c.eq_zero_or_pos
  · simp [Nat.two_mul, ← Nat.add_assoc, Nat.add_right_comm _ 1, Nat.factorial_pos]
  refine (Nat.le_mul_of_pos_right _ (Nat.pow_pos (n := d') c0)).trans_lt ?_
  convert_to (c ^ 2) ^ (c ^ 2 + d' + d + 1) < (c ^ 2 + (c ^ 2 + d' + d + 1) + 1)!
  · rw [← pow_mul, ← pow_add]
    congr 1
    omega
  · congr 1
    omega
  refine (lt_of_lt_of_le ?_ Nat.factorial_mul_pow_le_factorial).trans_le <|
    (factorial_le (Nat.le_succ _))
  rw [← one_mul (_ ^ _ : ℕ)]
  apply Nat.mul_lt_mul_of_le_of_lt
  · exact Nat.one_le_of_lt (Nat.factorial_pos _)
  · exact Nat.pow_lt_pow_left (Nat.lt_succ_self _) (Nat.succ_ne_zero _)
  · exact (Nat.factorial_pos _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6afa688a56cc8a6fc39893b4a5fa642d5709aa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
