# Equiv.asEmbedding_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aab09bd3-f572-f20c-5c72-2c0879cb1b30",
  "kind": "theorem",
  "lexical_name": "Equiv.asEmbedding_range",
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
  "slug": "equiv-asembedding-range--5993399a965cbc07f72b3c9b",
  "source": {
    "blob": "94c0e2fbefade411aa215f5ebb6b8e8956f801c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta9b36a50aca24b1a512f6a63b17d44b6a1687aff0cc390eef3602c8451e3082d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5993399a965cbc07f72b3c9b38d3c283d7355edbe602aa637c50579d50fe3a44",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta9b36a50aca24b1a512f6a63b17d44b6a1687aff0cc390eef3602c8451e3082d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aab09bd3-f572-f20c-5c72-2c0879cb1b30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.asEmbedding_range {α β : Sort _} {p : β → Prop} (e : α ≃ Subtype p) :
    Set.range e.asEmbedding = Set.ofPred p :=
  Set.ext fun x ↦ ⟨fun ⟨y, h⟩ ↦ h ▸ Subtype.coe_prop (e y), fun hs ↦ ⟨e.symm ⟨x, hs⟩, by simp⟩⟩

end Equiv

namespace Function

namespace Embedding

/-- Given an embedding `f : α ↪ β` and a point outside of `Set.range f`, construct an embedding
`Option α ↪ β`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta9b36a50aca24b1a512f6a63b17d44b6a1687aff0cc390eef3602c8451e3082d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Varianta9b36a50aca24b1a512f6a63b17d44b6a1687aff0cc390eef3602c8451e3082d.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94c0e2fbefade411aa215f5ebb6b8e8956f801c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
