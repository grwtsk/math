# goldenConj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c9a16035f5e3b3ae57b37c1bca9b11ff0a228f8405bc3a450baa7957ec0bdf2",
  "kind": "abbrev",
  "lexical_name": "goldenConj",
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
  "slug": "goldenconj--0fb435707c7d70a5ab9d5159",
  "source": {
    "blob": "41db3ba203218dcfda3ffe99d8d3b170e9bc7a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 40,
    "path": "GRWTSK/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fb435707c7d70a5ab9d51593f9a46d17b4bb305b05ff427c40aa40f08e7d16c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c9a16035f5e3b3ae57b37c1bca9b11ff0a228f8405bc3a450baa7957ec0bdf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev goldenConj : ℝ := (1 - √5) / 2

@[inherit_doc] scoped[goldenRatio] notation "φ" => Real.goldenRatio
@[inherit_doc] scoped[goldenRatio] notation "ψ" => Real.goldenConj

open scoped goldenRatio

/-- The inverse of the golden ratio is the opposite of its conjugate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41db3ba203218dcfda3ffe99d8d3b170e9bc7a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
