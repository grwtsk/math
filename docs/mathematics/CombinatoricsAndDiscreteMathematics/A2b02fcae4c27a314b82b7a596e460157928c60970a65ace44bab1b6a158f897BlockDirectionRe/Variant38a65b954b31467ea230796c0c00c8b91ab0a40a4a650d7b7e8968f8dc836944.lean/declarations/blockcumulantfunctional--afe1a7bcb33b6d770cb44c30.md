# blockCumulantFunctional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99b56144e9f013465431ff651c5c0d33ae5868a0cd574aaa21d5dce1dd016996",
  "kind": "def",
  "lexical_name": "blockCumulantFunctional",
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
  "slug": "blockcumulantfunctional--afe1a7bcb33b6d770cb44c30",
  "source": {
    "blob": "1dfa4640d8a55c6576023be73a4ba91105578df4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Variant38a65b954b31467ea230796c0c00c8b91ab0a40a4a650d7b7e8968f8dc836944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afe1a7bcb33b6d770cb44c30ad9955fe8ad206e10290f1c05f968da557bd2859",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Variant38a65b954b31467ea230796c0c00c8b91ab0a40a4a650d7b7e8968f8dc836944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99b56144e9f013465431ff651c5c0d33ae5868a0cd574aaa21d5dce1dd016996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blockCumulantFunctional
    {n : ℕ}
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E) :
    Finset (Fin n) → R :=
  fun B => blockCumulantValue κ directions B

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Variant38a65b954b31467ea230796c0c00c8b91ab0a40a4a650d7b7e8968f8dc836944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A2b02fcae4c27a314b82b7a596e460157928c60970a65ace44bab1b6a158f897BlockDirectionRe/Variant38a65b954b31467ea230796c0c00c8b91ab0a40a4a650d7b7e8968f8dc836944.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dfa4640d8a55c6576023be73a4ba91105578df4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
