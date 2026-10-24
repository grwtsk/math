# map_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2e97b07-9ee0-db09-040c-9384d4c33309",
  "kind": "theorem",
  "lexical_name": "map_join",
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
  "slug": "map-join--2ca80d117a4c5f188b9bd8b6",
  "source": {
    "blob": "7b136e2ec978e1a0fdd188c1d10f308eca7d5540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 827,
    "line": 811,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant21c4707e22bf2caa43fab98adeace839d894b567d995743c0bcca975aad25333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ca80d117a4c5f188b9bd8b646adbfb3436f82b4fd7dee9c13935d3e570ad8f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant21c4707e22bf2caa43fab98adeace839d894b567d995743c0bcca975aad25333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2e97b07-9ee0-db09-040c-9384d4c33309`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 811–827.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_join (f : α → β) (S) : map f (join S) = join (map (map f) S) := by
  apply
    Seq.eq_of_bisim fun s1 s2 =>
      ∃ s S, s1 = append s (map f (join S)) ∧ s2 = append s (join (map (map f) S))
  · rintro s1 s2 ⟨s, S, rfl, rfl⟩
    induction s using WSeq.recOn
    · induction S using WSeq.recOn with
      | nil => simp
      | cons s S => simpa using ⟨map f s, S, rfl, rfl⟩
      | think S => simpa using ⟨nil, S, by simp, by simp⟩
    · simpa using ⟨_, _, rfl, rfl⟩
    · simpa using ⟨_, _, rfl, rfl⟩
  · exact ⟨nil, S, by simp, by simp⟩

end WSeq

end Stream'
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant21c4707e22bf2caa43fab98adeace839d894b567d995743c0bcca975aad25333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant21c4707e22bf2caa43fab98adeace839d894b567d995743c0bcca975aad25333.lean#L811).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b136e2ec978e1a0fdd188c1d10f308eca7d5540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
