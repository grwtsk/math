# singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a1e42e492c3d9e6c00917712cb5fb6ceb8a9e9ef30b98f11cfb2d75b168772c",
  "kind": "def",
  "lexical_name": "singleton",
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
  "slug": "singleton--a2f3be8b26749817b72e72ad",
  "source": {
    "blob": "854d136bde8223995aa6c586afb59cbcfb53c628",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 270,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2f3be8b26749817b72e72ad001b1ece7acea4f242d866a0e98a2b74ab3ed311",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a1e42e492c3d9e6c00917712cb5fb6ceb8a9e9ef30b98f11cfb2d75b168772c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def singleton {α} (a : α) : ({a} : Set α) ≃ PUnit.{u} :=
  ⟨fun _ => PUnit.unit, fun _ => ⟨a, mem_singleton _⟩, fun ⟨x, h⟩ => by
    simp at h
    subst x
    rfl, fun ⟨⟩ => rfl⟩
#align equiv.set.singleton Equiv.Set.singleton

/-- Equal sets are equivalent.

TODO: this is the same as `Equiv.setCongr`! -/
@[simps! apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `854d136bde8223995aa6c586afb59cbcfb53c628` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
