# mod_eq_mod_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:376dac22-82f2-4b28-970e-e96f4e21c158",
  "kind": "theorem",
  "lexical_name": "mod_eq_mod_iff",
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
  "slug": "mod-eq-mod-iff--30a57cfdb8fc2b9671532c0b",
  "source": {
    "blob": "79a0e593e1a6d1e23e6da61b8e736ceb642664d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30a57cfdb8fc2b9671532c0b52cb180496b05f1b8acd6e1ccabdc0cc5386cf55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:376dac22-82f2-4b28-970e-e96f4e21c158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod_eq_mod_iff {x y z : Nat} :
    x % z = y % z ↔ ∃ k₁ k₂, x + k₁ * z = y + k₂ * z := by
  constructor
  · rw [Nat.mod_def, Nat.mod_def]
    rw [Nat.sub_eq_iff_eq_add, Nat.add_comm, ← Nat.add_sub_assoc, eq_comm, Nat.sub_eq_iff_eq_add, eq_comm]
    · intro h
      refine ⟨(y / z), (x / z), ?_⟩
      rwa [Nat.mul_comm z, Nat.add_comm _ y, Nat.mul_comm z] at h
    · exact le_add_left_of_le (mul_div_le y z)
    · exact mul_div_le y z
    · exact mul_div_le x z
  · rintro ⟨k₁, k₂, h⟩
    replace h := congrArg (· % z) h
    simpa using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79a0e593e1a6d1e23e6da61b8e736ceb642664d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
