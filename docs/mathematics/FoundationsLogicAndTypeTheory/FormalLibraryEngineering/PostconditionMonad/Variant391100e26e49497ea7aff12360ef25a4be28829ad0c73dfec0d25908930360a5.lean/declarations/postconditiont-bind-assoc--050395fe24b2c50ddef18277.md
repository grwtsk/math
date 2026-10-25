# PostconditionT.bind_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93361a83e8c3cacad91d1e90687ef4732e90cf2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d760d87-6d5d-d07e-0402-05086dcf5aa2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8b0de9a-dfca-b984-5db5-457f57ca515e",
  "kind": "theorem",
  "lexical_name": "PostconditionT.bind_assoc",
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
  "slug": "postconditiont-bind-assoc--050395fe24b2c50ddef18277",
  "source": {
    "blob": "93361a83e8c3cacad91d1e90687ef4732e90cf2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:050395fe24b2c50ddef18277f607b5c537594349d28054fab62e808868e71df3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8b0de9a-dfca-b984-5db5-457f57ca515e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem PostconditionT.bind_assoc {m : Type w → Type w'} [Monad m] [LawfulMonad m]
    {α β γ: Type w} {x : PostconditionT m α} {f : α → PostconditionT m β} {g : β → PostconditionT m γ} :
    (x.bind f).bind g = x.bind (fun a => (f a).bind g) := by
  apply PostconditionT.ext
  · simp [PostconditionT.bind]
  · simp only [PostconditionT.bind, bind_assoc, bind_map_left, map_bind, Functor.map_map]
    ext c
    constructor
    · rintro ⟨b, ⟨a, ha, hb⟩, h⟩
      exact ⟨a, ha, b, hb, h⟩
    · rintro ⟨a, ha, b, hb, h⟩
      exact ⟨b, ⟨a, ha, hb⟩, h⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93361a83e8c3cacad91d1e90687ef4732e90cf2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
