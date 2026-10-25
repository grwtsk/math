# BitVec.add_const_beq_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57f107d2-e3ad-46b4-b599-256d1ddd36fa",
  "kind": "theorem",
  "lexical_name": "BitVec.add_const_beq_const",
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
  "slug": "bitvec-add-const-beq-const--7011e8971414b774fae42ca9",
  "source": {
    "blob": "72232714fcb58e841208d8bef50aa4388f424056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 389,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant341da8b9db97512cc94eb47ec1a33f306c47ecf7be381970f12f9f324e9ebf80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7011e8971414b774fae42ca9f7a804c8dff1018b22c809a9562272d757a9b6ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant341da8b9db97512cc94eb47ec1a33f306c47ecf7be381970f12f9f324e9ebf80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57f107d2-e3ad-46b4-b599-256d1ddd36fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BitVec.add_const_beq_const {a : BitVec w} :
    ((a + BitVec.ofNat w b) == BitVec.ofNat w c) = (a == BitVec.ofNat w c - BitVec.ofNat w b) := by
  rw [Bool.eq_iff_iff]
  simp [BitVec.eq_sub_iff_add_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant341da8b9db97512cc94eb47ec1a33f306c47ecf7be381970f12f9f324e9ebf80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant341da8b9db97512cc94eb47ec1a33f306c47ecf7be381970f12f9f324e9ebf80.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72232714fcb58e841208d8bef50aa4388f424056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
