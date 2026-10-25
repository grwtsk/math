# PostconditionT.property_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85c4e57c-b01b-34e9-b730-829b8b44ed02",
  "kind": "theorem",
  "lexical_name": "PostconditionT.property_map",
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
  "slug": "postconditiont-property-map--f6448aa6228bf8722682fda9",
  "source": {
    "blob": "83c16ebfac82c6da5b0b52733b17b348fe875dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 229,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6448aa6228bf8722682fda95cc6766e719d38a8e0ca2bd9798eff0e6cfd5087",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85c4e57c-b01b-34e9-b730-829b8b44ed02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PostconditionT.property_map {m : Type w → Type w'} [Functor m] {α : Type w} {β : Type w}
    {x : PostconditionT m α} {f : α → β} {b : β} :
    (x.map f).Property b ↔ (∃ a, f a = b ∧ x.Property a) := by
  simp only [PostconditionT.map]
  apply Iff.intro
  · rintro ⟨⟨a, ha⟩, h⟩
    exact ⟨a, h, ha⟩
  · rintro ⟨a, h, ha⟩
    exact ⟨⟨a, ha⟩, h⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c16ebfac82c6da5b0b52733b17b348fe875dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
