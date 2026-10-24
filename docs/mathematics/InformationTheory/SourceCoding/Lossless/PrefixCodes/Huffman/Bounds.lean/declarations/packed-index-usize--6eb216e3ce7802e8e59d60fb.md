# packed_index_usize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf6b6e52-4704-3d75-29e1-c5e3dab76a0d",
  "kind": "theorem",
  "lexical_name": "packed_index_usize",
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
  "slug": "packed-index-usize--6eb216e3ce7802e8e59d60fb",
  "source": {
    "blob": "cb9bf59c507e727aef8d34827adf353c3f1ab108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 208,
    "path": "GRWTSK/InformationTheory/Huffman/Bounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eb216e3ce7802e8e59d60fba2f7735324e597963ac0b48ea9c8880b99a52bf9",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf6b6e52-4704-3d75-29e1-c5e3dab76a0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem packed_index_usize (wordBits position bits : Nat)
    (beforeEnd : position < bits) (capacity : compressedByteLen bits < 2 ^ wordBits) :
    checkedUsize wordBits (position / 8) = some (position / 8) := by
  exact (checkedUsize_eq_some_iff _ _ _).mpr
    ⟨Nat.lt_trans (packed_index_bound position bits beforeEnd) capacity, rfl⟩

/-- Applies to encoder histogram counts and decoder observed counts: before
emitting the next byte/bit, a particular count is bounded by iterations so far. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/Bounds.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb9bf59c507e727aef8d34827adf353c3f1ab108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
