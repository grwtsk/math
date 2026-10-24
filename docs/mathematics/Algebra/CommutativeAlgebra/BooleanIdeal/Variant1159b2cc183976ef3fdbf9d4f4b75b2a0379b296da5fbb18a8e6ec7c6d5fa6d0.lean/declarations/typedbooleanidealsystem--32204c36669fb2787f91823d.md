# TypedBooleanIdealSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c29a410fc46d2ffc5ab0e13123c0cc73d069596cb0621e07e4a28dd76799cd72",
  "kind": "structure",
  "lexical_name": "TypedBooleanIdealSystem",
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
  "slug": "typedbooleanidealsystem--32204c36669fb2787f91823d",
  "source": {
    "blob": "117529826c14da46ef4ad86adc5522a595a2d026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32204c36669fb2787f91823d5186d059568acb0ae1d62b6bd2e8dbee3a55cefd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c29a410fc46d2ffc5ab0e13123c0cc73d069596cb0621e07e4a28dd76799cd72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypedBooleanIdealSystem (width : Nat) where
  transition : BooleanIdeal width
  phase : BooleanIdeal width
  observation : BooleanIdeal width
  budget : BooleanIdeal width
  boundary : BooleanIdeal width
  authority : BooleanIdeal width
  bridge : BooleanIdeal width

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/BooleanIdeal/Variant1159b2cc183976ef3fdbf9d4f4b75b2a0379b296da5fbb18a8e6ec7c6d5fa6d0.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117529826c14da46ef4ad86adc5522a595a2d026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
