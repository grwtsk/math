# parts_top_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e82d783a-230a-8270-8110-d00f93251a59",
  "kind": "theorem",
  "lexical_name": "parts_top_subset",
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
  "slug": "parts-top-subset--b5a20b952ae3fa76f76fd904",
  "source": {
    "blob": "d059817032a9818208e391e4e2f2577821e7c60b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variante54e01830923efcc4e6bbb247738656637b3551c890e0f4fbf573541cceb52a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5a20b952ae3fa76f76fd9046a8bfa934fcd9f64dd03affacf628a5f3bf60aef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finpartition/Variante54e01830923efcc4e6bbb247738656637b3551c890e0f4fbf573541cceb52a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e82d783a-230a-8270-8110-d00f93251a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parts_top_subset (a : α) [Decidable (a = ⊥)] : (⊤ : Finpartition a).parts ⊆ {a} := by
  intro b hb
  have hb : b ∈ Finpartition.parts (dite _ _ _) := hb
  split_ifs at hb
  · simp only [copy_parts, empty_parts, not_mem_empty] at hb
  · exact hb
#align finpartition.parts_top_subset Finpartition.parts_top_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finpartition/Variante54e01830923efcc4e6bbb247738656637b3551c890e0f4fbf573541cceb52a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finpartition/Variante54e01830923efcc4e6bbb247738656637b3551c890e0f4fbf573541cceb52a9.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d059817032a9818208e391e4e2f2577821e7c60b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
