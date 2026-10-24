# IsSetBernoulli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80bddd0d9e04b5d546be362eb61b4e8f45774b23f8a178a2e30f110ce17fe84b",
  "kind": "abbrev",
  "lexical_name": "IsSetBernoulli",
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
  "slug": "issetbernoulli--3a7520b5cfab24674567855d",
  "source": {
    "blob": "219f9f3e95c823b484e5972c7ca41db14b86212d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 168,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a7520b5cfab24674567855d2d08662ed78af5de32158e8bdf86ea95055d8541",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80bddd0d9e04b5d546be362eb61b4e8f45774b23f8a178a2e30f110ce17fe84b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev IsSetBernoulli : Prop := HasLaw X setBer(u, p) P

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `219f9f3e95c823b484e5972c7ca41db14b86212d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
