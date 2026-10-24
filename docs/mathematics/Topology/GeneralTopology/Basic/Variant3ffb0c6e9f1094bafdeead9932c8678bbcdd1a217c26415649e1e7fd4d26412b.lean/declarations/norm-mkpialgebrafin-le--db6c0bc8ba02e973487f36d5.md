# norm_mkPiAlgebraFin_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ed3a265-c11c-3f49-b9df-96a7b6109ce9",
  "kind": "theorem",
  "lexical_name": "norm_mkPiAlgebraFin_le",
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
  "slug": "norm-mkpialgebrafin-le--db6c0bc8ba02e973487f36d5",
  "source": {
    "blob": "7c4f4f226ccd3b3a4dc39673aa52f23372ff4c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 767,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db6c0bc8ba02e973487f36d5375eefab0815e15e3099f904ab2e0d1053ca4577",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ed3a265-c11c-3f49-b9df-96a7b6109ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 767–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_mkPiAlgebraFin_le :
    ‖ContinuousMultilinearMap.mkPiAlgebraFin 𝕜 n A‖ ≤ max 1 ‖(1 : A)‖ := by
  cases n
  · exact norm_mkPiAlgebraFin_zero.le.trans (le_max_right _ _)
  · exact (norm_mkPiAlgebraFin_le_of_pos (Nat.zero_lt_succ _)).trans (le_max_left _ _)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean#L767).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c4f4f226ccd3b3a4dc39673aa52f23372ff4c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
