# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a8ca9df1d9c4f0f4135b37d0cb43c2a498fa89534a6497fb013be0893dc1a02",
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
  "slug": "example--406d08ca49e8e45e0ec721c7",
  "source": {
    "blob": "5acce7bb054125a8b42e87bd88825a0d28a5a778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 123,
    "path": "GRWTSK/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:406d08ca49e8e45e0ec721c707c8813982eb97169c7c97dde65ac114ab54d31a",
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

Occurrence: `declaration:1a8ca9df1d9c4f0f4135b37d0cb43c2a498fa89534a6497fb013be0893dc1a02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (x y z w : ℚ) (hzw : z = w) : x * z + 2 * y * z = x * w + 2 * y * w := by
  linear_combination' (x + 2 * y) * hzw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5acce7bb054125a8b42e87bd88825a0d28a5a778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
