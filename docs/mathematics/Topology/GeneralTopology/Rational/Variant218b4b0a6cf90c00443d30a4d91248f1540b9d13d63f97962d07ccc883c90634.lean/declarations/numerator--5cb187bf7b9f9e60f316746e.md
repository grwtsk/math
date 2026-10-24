# numerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f142fdce3777fd6044e8677bcaa38c9979bc2a188bcc4075749acced744338a7",
  "kind": "def",
  "lexical_name": "numerator",
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
  "slug": "numerator--5cb187bf7b9f9e60f316746e",
  "source": {
    "blob": "a55f8b5abac2aa70c4bda57e94400c3ed41c6595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cb187bf7b9f9e60f316746e80d7c74139a4e7d81064c593f9c825e910ebdb3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f142fdce3777fd6044e8677bcaa38c9979bc2a188bcc4075749acced744338a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def numerator (C : RationalSegment V degree) (t : ℝ) : V :=
  ∑ i : Fin (degree + 1),
    (bernstein degree i t * C.weight i) • C.control i

/-- Positive control weights make the denominator strictly positive throughout
the checked parameter interval. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55f8b5abac2aa70c4bda57e94400c3ed41c6595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
