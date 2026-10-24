# MulPosMono.toMulPosReflectLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ec1bd90-dd62-3bac-ebc1-e77f3b71079a",
  "kind": "theorem",
  "lexical_name": "MulPosMono.toMulPosReflectLT",
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
  "slug": "mulposmono-tomulposreflectlt--337530e246bacbd1cd92b880",
  "source": {
    "blob": "92ed6f5c8c226bf02fa8adbc6c83c2ebfa0b585e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 400,
    "path": "GRWTSK/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:337530e246bacbd1cd92b88097cf18f083613a29e6fa4a5095b67363a89d2e06",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ec1bd90-dd62-3bac-ebc1-e77f3b71079a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulPosMono.toMulPosReflectLT [MulPosMono α] : MulPosReflectLT α where
  elim := (covariant_le_iff_contravariant_lt _ _ _).1 CovariantClass.elim

/- TODO: Currently, only one in four of the above are made instances; we could consider making
  both directions of `covariant_le_iff_contravariant_lt` and `covariant_lt_iff_contravariant_le`
  instances, then all of the above become redundant instances, but there are performance issues. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant6f42c5203a31e041d87e7f7efa289310271ce173a2f894ede4b8b5ab227cf21a.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ed6f5c8c226bf02fa8adbc6c83c2ebfa0b585e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
