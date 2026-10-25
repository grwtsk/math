# instIsAlwaysFiniteOfLawfulHasSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87e58665a6249ee2ccfed9d6743d816275f539cc0b2aac884fc7185e9e1a35dc",
  "kind": "instance",
  "lexical_name": "instIsAlwaysFiniteOfLawfulHasSize",
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
  "slug": "instisalwaysfiniteoflawfulhassize--e1ad6659575781281e7f98ab",
  "source": {
    "blob": "22c66f12ad330ecd4b4670882f87a5a3e262d26b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Varianta931a2649378100a06c9cc5a137c9b8398c5e66ab02f98bfc3391f40c49ac16c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1ad6659575781281e7f98abf5f8ac69af349325f714a54d845e1b3eb571c0fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Varianta931a2649378100a06c9cc5a137c9b8398c5e66ab02f98bfc3391f40c49ac16c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87e58665a6249ee2ccfed9d6743d816275f539cc0b2aac884fc7185e9e1a35dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsAlwaysFiniteOfLawfulHasSize [LT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerable α] [HasSize α] [LawfulHasSize α] :
    IsAlwaysFinite α where
  finite lo := by
    refine ⟨HasSize.size lo, ?_⟩
    generalize hn : HasSize.size lo = n
    induction n generalizing lo with
    | zero =>
      simp [Nat.ne_of_gt size_pos] at hn
    | succ =>
      rename_i n ih
      rw [succMany?_add_one_eq_succ?_bind_succMany?]
      match hs : succ? lo with
      | none => simp
      | some a =>
        simp only [Option.bind_some]
        apply ih
        rw [LawfulHasSize.size_eq_succ_of_succ?_eq_some (h := hs)] at hn
        omega

end Rxi

end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Varianta931a2649378100a06c9cc5a137c9b8398c5e66ab02f98bfc3391f40c49ac16c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Varianta931a2649378100a06c9cc5a137c9b8398c5e66ab02f98bfc3391f40c49ac16c.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22c66f12ad330ecd4b4670882f87a5a3e262d26b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
