# zeroReflect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:083879ebe227c5545ecda2b49bfc76fbbe34c8b79b703cf830228ee6f65eaa14",
  "kind": "def",
  "lexical_name": "zeroReflect",
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
  "slug": "zeroreflect--a809bccb1a6583aec4f1699a",
  "source": {
    "blob": "b110c43429fd3bf17b7ddbafa471803b8e0f3a5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 25,
    "path": "GRWTSK/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a809bccb1a6583aec4f1699a3996dfc9924f5db28fa7c9cafcfe9e93b5b15e9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:083879ebe227c5545ecda2b49bfc76fbbe34c8b79b703cf830228ee6f65eaa14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zeroReflect (s : ℂ) : ℂ := 1 - s

/-- Squared distance to the critical-line reflection, with values in the reals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b110c43429fd3bf17b7ddbafa471803b8e0f3a5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
