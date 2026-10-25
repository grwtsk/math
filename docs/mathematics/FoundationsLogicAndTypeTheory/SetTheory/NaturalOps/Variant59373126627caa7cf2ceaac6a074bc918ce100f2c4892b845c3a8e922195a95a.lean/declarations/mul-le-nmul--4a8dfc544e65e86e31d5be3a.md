# mul_le_nmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25062f41-8a9e-47d5-88e3-862c195df696",
  "kind": "theorem",
  "lexical_name": "mul_le_nmul",
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
  "slug": "mul-le-nmul--4a8dfc544e65e86e31d5be3a",
  "source": {
    "blob": "6476262c5d53d0d2d88c33ca20e7b619541e7b7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 847,
    "line": 831,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant59373126627caa7cf2ceaac6a074bc918ce100f2c4892b845c3a8e922195a95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a8dfc544e65e86e31d5be3a92210fffbc9bb7a4df8710129c897f87bf0d04a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant59373126627caa7cf2ceaac6a074bc918ce100f2c4892b845c3a8e922195a95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25062f41-8a9e-47d5-88e3-862c195df696`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 831–847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_le_nmul (a b : Ordinal.{u}) : a * b ≤ a ⨳ b := by
  refine b.limitRecOn ?_ ?_ ?_
  · simp
  · intro c h
    rw [mul_succ, nmul_succ]
    exact (add_le_nadd _ a).trans (nadd_le_nadd_right h a)
  · intro c hc H
    rcases eq_zero_or_pos a with (rfl | ha)
    · simp
    · -- Porting note: `this` was inline in the `rw`, but now needs a preliminary `dsimp at this`.
      have := IsNormal.blsub_eq.{u, u} (mul_isNormal ha) hc
      dsimp at this
      rw [← this, blsub_le_iff]
      exact fun i hi => (H i hi).trans_lt (nmul_lt_nmul_of_pos_left hi ha)
#align nat_ordinal.mul_le_nmul NatOrdinal.mul_le_nmul

end NatOrdinal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant59373126627caa7cf2ceaac6a074bc918ce100f2c4892b845c3a8e922195a95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant59373126627caa7cf2ceaac6a074bc918ce100f2c4892b845c3a8e922195a95a.lean#L831).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6476262c5d53d0d2d88c33ca20e7b619541e7b7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
