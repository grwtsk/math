# UInt32.le_iff_lt_or_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4386d17ee793ef9ed996f82890837752fb8051ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3543,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/294fe2920d4dfb15e79f49a867b332ae03dc8bd16c7452181a89a309695b3dda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79a67b0b-f00a-3f96-da0b-46b280733967",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7758cca-f396-2eae-dbb4-93ff62283b11",
  "kind": "theorem",
  "lexical_name": "UInt32.le_iff_lt_or_eq",
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
  "slug": "uint32-le-iff-lt-or-eq--9851d956f7d3394dc36a3414",
  "source": {
    "blob": "4386d17ee793ef9ed996f82890837752fb8051ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3544,
    "line": 3543,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant294fe2920d4dfb15e79f49a867b332ae03dc8bd16c7452181a89a309695b3dda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9851d956f7d3394dc36a3414b1b8d2000db3699048591e7b59219db17c47d66b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant294fe2920d4dfb15e79f49a867b332ae03dc8bd16c7452181a89a309695b3dda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7758cca-f396-2eae-dbb4-93ff62283b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3543–3544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem UInt32.le_iff_lt_or_eq {a b : UInt32} : a ≤ b ↔ a < b ∨ a = b := by
  simpa [← UInt32.toNat_inj, le_iff_toNat_le, lt_iff_toNat_lt] using Nat.le_iff_lt_or_eq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant294fe2920d4dfb15e79f49a867b332ae03dc8bd16c7452181a89a309695b3dda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant294fe2920d4dfb15e79f49a867b332ae03dc8bd16c7452181a89a309695b3dda.lean#L3543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4386d17ee793ef9ed996f82890837752fb8051ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
