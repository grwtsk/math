# SemigroupWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e26afa17cd02b9ac5ca79de84d1de570e51c266695403fb043d5d267b74b5bc1",
  "kind": "class",
  "lexical_name": "SemigroupWithZero",
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
  "slug": "semigroupwithzero--1396665688c96818f2f6c79f",
  "source": {
    "blob": "ba9bda9cc76ce5a440bb52dcfe8ac14250d49201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 122,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1396665688c96818f2f6c79f185f29d825c400805ca21b7322482ca89a669022",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e26afa17cd02b9ac5ca79de84d1de570e51c266695403fb043d5d267b74b5bc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SemigroupWithZero (S₀ : Type u) extends Semigroup S₀, MulZeroClass S₀
#align semigroup_with_zero SemigroupWithZero

/-- A typeclass for non-associative monoids with zero elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba9bda9cc76ce5a440bb52dcfe8ac14250d49201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
