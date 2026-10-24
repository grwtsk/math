# offset_of_isLongestRevMatchAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc87ddd4-7a3f-4d1c-8838-4ca11feeb917",
  "kind": "theorem",
  "lexical_name": "offset_of_isLongestRevMatchAt",
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
  "slug": "offset-of-islongestrevmatchat--c1f54c07ba95198a6074a134",
  "source": {
    "blob": "048ea0d07c008ec637083e66b3513b0cfdb197a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 457,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant244f4daa9ec27fe3dac88f9d8f6de2b4de9ad45c175f43f3e14c9b52db9e8033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1f54c07ba95198a6074a134bea9ffd9277d5280b4daaace7b4cb8dcdc777c11",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant244f4daa9ec27fe3dac88f9d8f6de2b4de9ad45c175f43f3e14c9b52db9e8033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc87ddd4-7a3f-4d1c-8838-4ca11feeb917`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem offset_of_isLongestRevMatchAt {pat : String} {s : Slice} {pos₁ pos₂ : s.Pos}
    (h : pat ≠ "") (h' : IsLongestRevMatchAt pat pos₁ pos₂) :
    pos₂.offset = pos₁.offset.increaseBy pat.utf8ByteSize := by
  rw [show pat.utf8ByteSize = pat.toSlice.utf8ByteSize from utf8ByteSize_toSlice.symm]
  exact ForwardSliceSearcher.offset_of_isLongestRevMatchAt (by simpa)
    (isLongestRevMatchAt_iff_isLongestRevMatchAt_toSlice.1 h')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant244f4daa9ec27fe3dac88f9d8f6de2b4de9ad45c175f43f3e14c9b52db9e8033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant244f4daa9ec27fe3dac88f9d8f6de2b4de9ad45c175f43f3e14c9b52db9e8033.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `048ea0d07c008ec637083e66b3513b0cfdb197a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
