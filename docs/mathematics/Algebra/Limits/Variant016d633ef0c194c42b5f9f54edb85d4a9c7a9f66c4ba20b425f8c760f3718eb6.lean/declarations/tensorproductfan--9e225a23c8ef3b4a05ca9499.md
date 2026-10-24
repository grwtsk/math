# tensorProductFan'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fb21f997d9f6139d8f1bd83d6a381bb822fe61ef76071266187dc5daa198640",
  "kind": "def",
  "lexical_name": "tensorProductFan'",
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
  "slug": "tensorproductfan--9e225a23c8ef3b4a05ca9499",
  "source": {
    "blob": "13db172ab3dcb34239288a9a37d1afa260d037af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 67,
    "path": "GRWTSK/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e225a23c8ef3b4a05ca949911e6eb3823ba8d5c17e8292fdfe3bc9fe920785e",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fb21f997d9f6139d8f1bd83d6a381bb822fe61ef76071266187dc5daa198640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorProductFan' : Fan (fun i ↦ mkUnder S (S ⊗[R] (P i).right)) :=
  Fan.mk (mkUnder S <| ∀ i, S ⊗[R] (P i).right)
    (fun i ↦ AlgHom.toUnder <| Pi.evalAlgHom S _ i)

/-- The two fans on `i ↦ S ⊗[R] P i` agree if `ι` is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13db172ab3dcb34239288a9a37d1afa260d037af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
