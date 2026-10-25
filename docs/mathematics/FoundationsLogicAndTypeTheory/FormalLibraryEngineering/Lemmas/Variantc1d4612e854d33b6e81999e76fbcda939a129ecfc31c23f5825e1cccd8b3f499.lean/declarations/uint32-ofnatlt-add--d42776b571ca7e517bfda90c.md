# UInt32.ofNatLT_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b457b5f4-c791-b6b8-2ba6-d658a5d190d7",
  "kind": "theorem",
  "lexical_name": "UInt32.ofNatLT_add",
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
  "slug": "uint32-ofnatlt-add--d42776b571ca7e517bfda90c",
  "source": {
    "blob": "99e1b264ca34d36079562f343283a0500bdcc209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2645,
    "line": 2643,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc1d4612e854d33b6e81999e76fbcda939a129ecfc31c23f5825e1cccd8b3f499.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d42776b571ca7e517bfda90c9667b9b870401eb5d93289f617732b6b445160bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc1d4612e854d33b6e81999e76fbcda939a129ecfc31c23f5825e1cccd8b3f499.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b457b5f4-c791-b6b8-2ba6-d658a5d190d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2643–2645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem UInt32.ofNatLT_add {a b : Nat} (hab : a + b < 2 ^ 32) :
    UInt32.ofNatLT (a + b) hab = UInt32.ofNatLT a (Nat.lt_of_add_right_lt hab) + UInt32.ofNatLT b (Nat.lt_of_add_left_lt hab) := by
  simp [UInt32.ofNatLT_eq_ofNat]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc1d4612e854d33b6e81999e76fbcda939a129ecfc31c23f5825e1cccd8b3f499.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc1d4612e854d33b6e81999e76fbcda939a129ecfc31c23f5825e1cccd8b3f499.lean#L2643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99e1b264ca34d36079562f343283a0500bdcc209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
