# USize.toBitVec64_shiftRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd0344c5-84dc-7130-73cd-0d5bb2ddb98b",
  "kind": "theorem",
  "lexical_name": "USize.toBitVec64_shiftRight",
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
  "slug": "usize-tobitvec64-shiftright--e902b1aacae3ef1f04b0a444",
  "source": {
    "blob": "ea66362a98a418882120e1a92ebd6562349f6f86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 401,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantb78a5f6cfa2169e3d041fce7794ecfbec06a6cfb43672839fd4541c800c43b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e902b1aacae3ef1f04b0a4442722daacbf7e033934e3184c7a515627715b2aca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantb78a5f6cfa2169e3d041fce7794ecfbec06a6cfb43672839fd4541c800c43b54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0344c5-84dc-7130-73cd-0d5bb2ddb98b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem USize.toBitVec64_shiftRight (a b : USize) (h : System.Platform.numBits = 64) :
    (a >>> b).toBitVec64 h = a.toBitVec64 h >>> (b.toBitVec64 h % 64) := by
  simp only [toBitVec64_eq_toBitVec, USize.toBitVec_shiftRight, BitVec.natCast_eq_ofNat,
    BitVec.ofNat_eq_ofNat]
  generalize 64 = x at *
  subst h
  rfl

@[int_toBitVec]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantb78a5f6cfa2169e3d041fce7794ecfbec06a6cfb43672839fd4541c800c43b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantb78a5f6cfa2169e3d041fce7794ecfbec06a6cfb43672839fd4541c800c43b54.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea66362a98a418882120e1a92ebd6562349f6f86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
