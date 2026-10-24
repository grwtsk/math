# maskSlotPayloadEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b919b68063a446c7d08083d17d7dca1e76d1e1c496513e9cb959035e9bff336",
  "kind": "def",
  "lexical_name": "maskSlotPayloadEquiv",
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
  "slug": "maskslotpayloadequiv--d8566a79df00415fd25700d5",
  "source": {
    "blob": "55fdef65b0085488cc8e652479bdc4660a5b8dda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8566a79df00415fd25700d5abaf0f5fd4c7e7dad830ab0081abe8d02ffe044c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b919b68063a446c7d08083d17d7dca1e76d1e1c496513e9cb959035e9bff336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def maskSlotPayloadEquiv (C : Fin n → Finset X) :
    ReconstructionMasks C ≃ (MaskSlot C → Bool) where
  toFun code slot := code slot.1 slot.2
  invFun payload i x := payload ⟨i, x⟩
  left_inv _ := rfl
  right_inv payload := by
    funext slot
    cases slot
    rfl

/-- Count Boolean payload coordinates across the fixed identified source blocks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55fdef65b0085488cc8e652479bdc4660a5b8dda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
