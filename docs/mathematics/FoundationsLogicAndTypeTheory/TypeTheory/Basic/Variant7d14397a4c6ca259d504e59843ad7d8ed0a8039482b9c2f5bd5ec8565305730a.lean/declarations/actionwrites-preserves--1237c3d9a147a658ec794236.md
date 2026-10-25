# actionWrites_preserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b04e2f2be08ade66e6e69b2e28fd0932ecf0f1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 715,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TransactionConstruction/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be4f417e-e7d8-6c65-3cd9-60c57c62302a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08457c84-5e6c-d55f-82e6-45f9a27a22da",
  "kind": "theorem",
  "lexical_name": "actionWrites_preserves",
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
  "slug": "actionwrites-preserves--1237c3d9a147a658ec794236",
  "source": {
    "blob": "6b04e2f2be08ade66e6e69b2e28fd0932ecf0f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 734,
    "line": 715,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant7d14397a4c6ca259d504e59843ad7d8ed0a8039482b9c2f5bd5ec8565305730a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1237c3d9a147a658ec794236fafeaf0c9860a2942b271acafa5c7a024a6f53ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant7d14397a4c6ca259d504e59843ad7d8ed0a8039482b9c2f5bd5ec8565305730a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08457c84-5e6c-d55f-82e6-45f9a27a22da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 715–734.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actionWrites_preserves (roots : Roots) (area : Area) (actions : List RoutedAction)
    (writes : Files WriteSource) (property : String × WriteSource → Prop)
    (initial : ∀ row ∈ writes, property row)
    (selected : ∀ item ∈ actions, item.action.area = area → property
      (item.action.path, writeSource (originRoot roots item.origin) item.source item.action.value false)) :
    ∀ row ∈ actionWrites roots area actions writes, property row := by
  induction actions generalizing writes with
  | nil => exact initial
  | cons item rest ih =>
      unfold actionWrites
      split
      · rename_i gate
        apply ih
        · intro row member
          rcases overwrite_member_sources _ _ _ _ member with same | old
          · subst row; exact selected item (by simp) gate.1
          · exact initial row old
        · exact fun other member => selected other (by simp [member])
      · exact ih _ initial (fun other member => selected other (by simp [member]))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant7d14397a4c6ca259d504e59843ad7d8ed0a8039482b9c2f5bd5ec8565305730a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant7d14397a4c6ca259d504e59843ad7d8ed0a8039482b9c2f5bd5ec8565305730a.lean#L715).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b04e2f2be08ade66e6e69b2e28fd0932ecf0f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
