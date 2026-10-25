# append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9d8a8c340fb78ec31d3048636cdd78c1489d81da9258d945615cbee7636406f",
  "kind": "def",
  "lexical_name": "append",
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
  "slug": "append--2002cc7df246963dd1da5ae8",
  "source": {
    "blob": "e2bc4e42f6a401b13175fe5d315f499adbf670e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variantfcd8e6929cfb198a0c35702f6bb946c333e61a499756e03c144dd852ef8373b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2002cc7df246963dd1da5ae832ddc2ce73e49de81459c92502e7a0920b66aaef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variantfcd8e6929cfb198a0c35702f6bb946c333e61a499756e03c144dd852ef8373b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9d8a8c340fb78ec31d3048636cdd78c1489d81da9258d945615cbee7636406f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def append (lhs : RefVec aig lw) (rhs : RefVec aig rw) : RefVec aig (lw + rw) :=
  let ⟨lrefs, hl⟩ := lhs
  let ⟨rrefs, hr⟩ := rhs
  ⟨
    lrefs ++ rrefs,
    by
      intro i h
      by_cases hsplit : i < lw
      · rw [Vector.getElem_append_left]
        apply hl
        omega
      · rw [Vector.getElem_append_right]
        · apply hr
        · omega
  ⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variantfcd8e6929cfb198a0c35702f6bb946c333e61a499756e03c144dd852ef8373b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variantfcd8e6929cfb198a0c35702f6bb946c333e61a499756e03c144dd852ef8373b8.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2bc4e42f6a401b13175fe5d315f499adbf670e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
