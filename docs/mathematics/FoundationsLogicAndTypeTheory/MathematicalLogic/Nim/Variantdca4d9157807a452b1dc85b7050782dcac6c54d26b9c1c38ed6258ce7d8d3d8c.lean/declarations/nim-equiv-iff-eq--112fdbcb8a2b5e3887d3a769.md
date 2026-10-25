# nim_equiv_iff_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e47e1bc7-e87d-f878-0300-cc7e2244671a",
  "kind": "theorem",
  "lexical_name": "nim_equiv_iff_eq",
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
  "slug": "nim-equiv-iff-eq--112fdbcb8a2b5e3887d3a769",
  "source": {
    "blob": "37f8d0e2699b90a3258998eafa2aa5352f183f19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variantdca4d9157807a452b1dc85b7050782dcac6c54d26b9c1c38ed6258ce7d8d3d8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:112fdbcb8a2b5e3887d3a769070bac3bc8a8a6c8996b7f85e3f54f017210dcca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variantdca4d9157807a452b1dc85b7050782dcac6c54d26b9c1c38ed6258ce7d8d3d8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e47e1bc7-e87d-f878-0300-cc7e2244671a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nim_equiv_iff_eq {o₁ o₂ : Ordinal} : (nim o₁ ≈ nim o₂) ↔ o₁ = o₂ := by
  rw [Impartial.equiv_iff_add_equiv_zero, nim_add_equiv_zero_iff]

/-- The Grundy value of an impartial game is recursively defined as the minimum excluded value
(the infimum of the complement) of the Grundy values of either its left or right options.

This is the ordinal which corresponds to the game of nim that the game is equivalent to.

This function takes a value in `Nimber`. This is a type synonym for the ordinals which has the same
ordering, but addition in `Nimber` is such that it corresponds to the grundy value of the addition
of games. See that file for more information on nimbers and their arithmetic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variantdca4d9157807a452b1dc85b7050782dcac6c54d26b9c1c38ed6258ce7d8d3d8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variantdca4d9157807a452b1dc85b7050782dcac6c54d26b9c1c38ed6258ce7d8d3d8c.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37f8d0e2699b90a3258998eafa2aa5352f183f19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
