# emptyWrites_preserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "684e8c0936705c83918d1dc59e13dfb153b48034",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 735,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b01715df-ec29-7ca3-29fa-a16e4001ce77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce4e701b-f100-d472-84d5-8a9db04414a9",
  "kind": "theorem",
  "lexical_name": "emptyWrites_preserves",
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
  "slug": "emptywrites-preserves--3c1469de52af42d87dd6842c",
  "source": {
    "blob": "684e8c0936705c83918d1dc59e13dfb153b48034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 758,
    "line": 735,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c1469de52af42d87dd6842c90eb39f3560d9be40f9e37d4b0f19583342fbfd9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce4e701b-f100-d472-84d5-8a9db04414a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–758.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emptyWrites_preserves (files : Files Record) (writes result : Files WriteSource)
    (property : String × WriteSource → Prop) (initial : ∀ row ∈ writes, property row)
    (empty : ∀ row ∈ files, row.2.kind = .gitkeep → row.2.bytes = 0 →
      property (row.1, writeSource "" "" row.2 true))
    (success : emptyWrites files writes = .ok result) : ∀ row ∈ result, property row := by
  induction files generalizing writes with
  | nil => simp only [emptyWrites, Except.ok.injEq] at success; exact success ▸ initial
  | cons file rest ih =>
      simp only [emptyWrites] at success
      cases present : lookup file.1 writes with
      | some previous =>
          simp only [present] at success
          exact ih _ initial (fun row member => empty row (by simp [member])) success
      | none =>
          simp only [present] at success
          split at success
          · rename_i valid
            apply ih _ _ (fun row member => empty row (by simp [member])) success
            intro row member
            rcases overwrite_member_sources _ _ _ _ member with same | old
            · subst row; exact empty file (by simp) valid.1 valid.2
            · exact initial row old
          · cases success

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `684e8c0936705c83918d1dc59e13dfb153b48034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
