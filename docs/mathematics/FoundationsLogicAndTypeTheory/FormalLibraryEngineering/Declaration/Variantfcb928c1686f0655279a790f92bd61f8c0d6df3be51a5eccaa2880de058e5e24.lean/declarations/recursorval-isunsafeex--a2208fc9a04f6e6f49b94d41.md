# RecursorVal.isUnsafeEx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b430f0a445461e3734db5ff9083cdaa6d160d1efa44837846cb15b0f59b4c3ae",
  "kind": "def",
  "lexical_name": "RecursorVal.isUnsafeEx",
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
  "slug": "recursorval-isunsafeex--a2208fc9a04f6e6f49b94d41",
  "source": {
    "blob": "52a32d4fdeae1fe12e46cd46a1635420a3b62195",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 392,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantfcb928c1686f0655279a790f92bd61f8c0d6df3be51a5eccaa2880de058e5e24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2208fc9a04f6e6f49b94d4171b825855f56ee034e02173d5e729e3530ad4d0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantfcb928c1686f0655279a790f92bd61f8c0d6df3be51a5eccaa2880de058e5e24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b430f0a445461e3734db5ff9083cdaa6d160d1efa44837846cb15b0f59b4c3ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[export lean_recursor_is_unsafe] def RecursorVal.isUnsafeEx (v : RecursorVal) : Bool := v.isUnsafe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantfcb928c1686f0655279a790f92bd61f8c0d6df3be51a5eccaa2880de058e5e24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantfcb928c1686f0655279a790f92bd61f8c0d6df3be51a5eccaa2880de058e5e24.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a32d4fdeae1fe12e46cd46a1635420a3b62195` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
