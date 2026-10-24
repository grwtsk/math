# plane_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11c4836c-b8f1-7126-c206-e708c9efcde3",
  "kind": "theorem",
  "lexical_name": "plane_injective",
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
  "slug": "plane-injective--598cef09146a15791cc75a95",
  "source": {
    "blob": "fb3fdd98edf53f4677d3af648c2e4d711dc947f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:598cef09146a15791cc75a95bc9f9e35baad0cedb06a9a705bcd9ab992578402",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11c4836c-b8f1-7126-c206-e708c9efcde3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plane_injective {N : ℕ} : Function.Injective (plane (N := N)) := by
  intro M Q h
  have hr : frameRowSpace (frame M) = frameRowSpace (frame Q) := congrArg Subtype.val h
  apply frame_injective
  exact normalized_eq_of_frameRowSpace_eq (frame M) (frame Q) leftColumn
    (frame_pivot M) (frame_pivot Q) hr

/-- A nonnegative constructed frame certifies membership in the intrinsic nonnegative locus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SignedGraph/Variant75f1d7c6590314f58c4b0dec99865567fcbd4b3f36833f0339a02281899ba71e.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb3fdd98edf53f4677d3af648c2e4d711dc947f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
