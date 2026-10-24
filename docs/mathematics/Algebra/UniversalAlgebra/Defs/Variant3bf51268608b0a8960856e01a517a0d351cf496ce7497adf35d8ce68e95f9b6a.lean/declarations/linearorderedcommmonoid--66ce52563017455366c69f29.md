# LinearOrderedCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:336c8664eeaf4bc9406c3ea21d254eefbf5ba4838a5c690568086b7d7a6b2721",
  "kind": "structure",
  "lexical_name": "LinearOrderedCommMonoid",
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
  "slug": "linearorderedcommmonoid--66ce52563017455366c69f29",
  "source": {
    "blob": "0e76df72ddf85eded6632af981be37826277815e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 148,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66ce52563017455366c69f292ec2a3a3723326de0cc7b6b9b66ff670924f7768",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:336c8664eeaf4bc9406c3ea21d254eefbf5ba4838a5c690568086b7d7a6b2721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LinearOrderedCommMonoid (α : Type*) extends OrderedCommMonoid α, LinearOrder α

set_option linter.deprecated false in
/-- A linearly ordered cancellative additive commutative monoid is an additive commutative monoid
with a decidable linear order in which addition is cancellative and monotone. -/
@[deprecated "Use `[AddCommMonoid α] [LinearOrder α] [IsOrderedCancelAddMonoid α]` instead."
  (since := "2025-04-10")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e76df72ddf85eded6632af981be37826277815e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
