# finite_of_fg_isMulTorsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0823abf6d0f4a5d20f48042d8a5dd11617272f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5628f3ef9b5103856a0fad9a5750f42d5e04a2b93a81f3319ddf1e3a823f421c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81986267-a4da-49b1-7c13-59aac64c2001",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25707bae-3563-c285-0f5e-3870c6a718b4",
  "kind": "theorem",
  "lexical_name": "finite_of_fg_isMulTorsion",
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
  "slug": "finite-of-fg-ismultorsion--cdd1cd5f059ed122bfc0b424",
  "source": {
    "blob": "e0823abf6d0f4a5d20f48042d8a5dd11617272f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5628f3ef9b5103856a0fad9a5750f42d5e04a2b93a81f3319ddf1e3a823f421c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdd1cd5f059ed122bfc0b4247f7821ddc6d9b32feefbae50657204fe6b33c57f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5628f3ef9b5103856a0fad9a5750f42d5e04a2b93a81f3319ddf1e3a823f421c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25707bae-3563-c285-0f5e-3870c6a718b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_of_fg_isMulTorsion [CommGroup G] [Group.FG G] (hG : IsMulTorsion G) : Finite G :=
  @Finite.of_equiv _ _ (AddCommGroup.finite_of_fg_isAddTorsion (Additive G) hG) Multiplicative.ofAdd

@[deprecated (since := "2026-07-01")] alias finite_of_fg_torsion := finite_of_fg_isMulTorsion

/-- The **Structure Theorem For Finite Abelian Groups** in a multiplicative version:
A finite abelian group `G` is isomorphic to a finite product of finite cyclic groups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5628f3ef9b5103856a0fad9a5750f42d5e04a2b93a81f3319ddf1e3a823f421c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5628f3ef9b5103856a0fad9a5750f42d5e04a2b93a81f3319ddf1e3a823f421c.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0823abf6d0f4a5d20f48042d8a5dd11617272f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
