# Closeds.isAtom_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a43df035-ed32-554f-076a-250fa5f9808a",
  "kind": "lemma",
  "lexical_name": "Closeds.isAtom_coe",
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
  "slug": "closeds-isatom-coe--dc6ff02a189267075a77a617",
  "source": {
    "blob": "6673e92549d793b23444c591bf7a2fb2d207b57e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant98c83b2bb15574154448a9cb5cd2f2652917fc09ad5c8b4d87ea66df812dc4de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc6ff02a189267075a77a61717cfffefba3acf14266c375713cac03a02ed0dbb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant98c83b2bb15574154448a9cb5cd2f2652917fc09ad5c8b4d87ea66df812dc4de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a43df035-ed32-554f-076a-250fa5f9808a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, norm_cast] lemma Closeds.isAtom_coe [T1Space α] {s : Closeds α} :
    IsAtom (s : Set α) ↔ IsAtom s :=
  Closeds.gi.isAtom_iff' rfl
    (fun t ht ↦ by obtain ⟨x, rfl⟩ := Set.isAtom_iff.1 ht; exact closure_singleton) s

/-- in a `T1Space`, atoms of `TopologicalSpace.Closeds α` are precisely the
`TopologicalSpace.Closeds.singleton`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant98c83b2bb15574154448a9cb5cd2f2652917fc09ad5c8b4d87ea66df812dc4de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant98c83b2bb15574154448a9cb5cd2f2652917fc09ad5c8b4d87ea66df812dc4de.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6673e92549d793b23444c591bf7a2fb2d207b57e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
