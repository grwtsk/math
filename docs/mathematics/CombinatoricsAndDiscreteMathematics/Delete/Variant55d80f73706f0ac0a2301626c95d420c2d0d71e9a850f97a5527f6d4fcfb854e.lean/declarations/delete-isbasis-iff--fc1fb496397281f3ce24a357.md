# delete_isBasis'_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb32c239-219a-be5c-886b-e9bfeb3adcb5",
  "kind": "lemma",
  "lexical_name": "delete_isBasis'_iff",
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
  "slug": "delete-isbasis-iff--fc1fb496397281f3ce24a357",
  "source": {
    "blob": "d690f7517aa541762634179246bb61611faf87d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc1fb496397281f3ce24a35756ee484d708294521370db536911c063e205b42a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb32c239-219a-be5c-886b-e9bfeb3adcb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma delete_isBasis'_iff : (M ＼ D).IsBasis' I X ↔ M.IsBasis' I (X \ D) := by
  rw [isBasis'_iff_isBasis_inter_ground, delete_isBasis_iff, delete_ground, sdiff_eq,
    inter_comm M.E, ← inter_assoc, ← sdiff_eq, ← isBasis'_iff_isBasis_inter_ground,
    and_iff_left_iff_imp, inter_comm, ← inter_sdiff_assoc]
  exact fun _ ↦ disjoint_sdiff_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d690f7517aa541762634179246bb61611faf87d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
