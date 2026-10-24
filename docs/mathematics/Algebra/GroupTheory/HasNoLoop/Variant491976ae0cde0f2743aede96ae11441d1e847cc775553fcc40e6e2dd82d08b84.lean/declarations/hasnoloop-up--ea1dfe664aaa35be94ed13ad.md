# hasNoLoop_up

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bef7e4fc5ef1a644f9100f131769390c1ed5457",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a4af192-29aa-071b-246a-097e65179afd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83c31e74-b9dc-52a7-2573-0a6e2648433c",
  "kind": "lemma",
  "lexical_name": "hasNoLoop_up",
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
  "slug": "hasnoloop-up--ea1dfe664aaa35be94ed13ad",
  "source": {
    "blob": "4bef7e4fc5ef1a644f9100f131769390c1ed5457",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 67,
    "path": "GRWTSK/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea1dfe664aaa35be94ed13ad57bb692820d1a245ea55672d86710416cb9173e2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83c31e74-b9dc-52a7-2573-0a6e2648433c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasNoLoop_up {α : Type*} [AddZeroClass α] [IsRightCancelAdd α] [IsLeftCancelAdd α]
    [One α] (ha : (1 : α) ≠ 0) :
    (up α).HasNoLoop :=
  hasNoLoop_up' _ ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bef7e4fc5ef1a644f9100f131769390c1ed5457` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
