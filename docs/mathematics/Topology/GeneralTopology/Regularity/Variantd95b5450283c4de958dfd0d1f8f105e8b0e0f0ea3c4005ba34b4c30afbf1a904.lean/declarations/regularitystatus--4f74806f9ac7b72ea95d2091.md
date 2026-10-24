# RegularityStatus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8665c3bad417ced9325fb2261f38846dafbfc0060368974b0673612ece8f71ee",
  "kind": "inductive",
  "lexical_name": "RegularityStatus",
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
  "slug": "regularitystatus--4f74806f9ac7b72ea95d2091",
  "source": {
    "blob": "a8d7ff78e7290596656e63f6b9128fee2d9d87f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 13,
    "path": "GRWTSK/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f74806f9ac7b72ea95d20910d79c33a148a862981d6eca5d61bc72f3366e6dd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8665c3bad417ced9325fb2261f38846dafbfc0060368974b0673612ece8f71ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive RegularityStatus
  | proved
  | unavailable
  deriving DecidableEq, Repr

/-- Regularity is a separate certificate and is never inferred from endpoint
preservation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regularity/Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d7ff78e7290596656e63f6b9128fee2d9d87f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
