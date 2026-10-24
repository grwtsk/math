# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc2ee8bd829a718151176c156a7ca76d8d375ed2880f509ac8da9b2c8d0cd48f",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--2dca061d8b6afcc1b5860515",
  "source": {
    "blob": "5acce7bb054125a8b42e87bd88825a0d28a5a778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 79,
    "path": "GRWTSK/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dca061d8b6afcc1b58605157bb3f5f08e55cd7d308a644f95cec7bf1e328d81",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc2ee8bd829a718151176c156a7ca76d8d375ed2880f509ac8da9b2c8d0cd48f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (w x y z : ℝ) (h1 : x + 2.1 * y + 2 * z = 2) (h2 : x + 8 * z + 5 * w = -6.5)
    (h3 : x + y + 5 * z + 5 * w = 3) : x + 2.2 * y + 2 * z - 5 * w = -8.5 := by
  linear_combination' 2 * h1 + 1 * h2 - 2 * h3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5acce7bb054125a8b42e87bd88825a0d28a5a778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
