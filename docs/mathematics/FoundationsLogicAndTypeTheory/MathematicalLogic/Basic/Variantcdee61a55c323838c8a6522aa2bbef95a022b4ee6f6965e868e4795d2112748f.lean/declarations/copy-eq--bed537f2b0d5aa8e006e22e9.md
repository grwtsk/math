# copy_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9295fb77-3aad-d7cf-a2f7-2a91ca76a033",
  "kind": "lemma",
  "lexical_name": "copy_eq",
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
  "slug": "copy-eq--bed537f2b0d5aa8e006e22e9",
  "source": {
    "blob": "33ce1caf8fa4a30a3a5d46659de78567cce23b69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 734,
    "line": 731,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcdee61a55c323838c8a6522aa2bbef95a022b4ee6f6965e868e4795d2112748f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bed537f2b0d5aa8e006e22e9b39d3c7673257b120372d5fc77c40519c8ace3e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcdee61a55c323838c8a6522aa2bbef95a022b4ee6f6965e868e4795d2112748f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9295fb77-3aad-d7cf-a2f7-2a91ca76a033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 731–734.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma copy_eq (e : r ≃r s) (f : α → β) (g : β → α) (hf hg) : e.copy f g hf hg = e :=
  DFunLike.coe_injective hf

/-- Any equivalence lifts to a relation isomorphism between `s` and its preimage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcdee61a55c323838c8a6522aa2bbef95a022b4ee6f6965e868e4795d2112748f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcdee61a55c323838c8a6522aa2bbef95a022b4ee6f6965e868e4795d2112748f.lean#L731).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33ce1caf8fa4a30a3a5d46659de78567cce23b69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
