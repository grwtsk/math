# SequentialCompleteness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7874678a26b70d92c8ee1dea96f8ff4a24e52c58f79a03bce655e5c29495ab77",
  "kind": "def",
  "lexical_name": "SequentialCompleteness",
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
  "slug": "sequentialcompleteness--958c174afe896f6c504aa92c",
  "source": {
    "blob": "04d9543506fe4230db6c33785eb65ebd912153f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 21,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Continuity/Variant9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:958c174afe896f6c504aa92c4988e2015935cfdaddfc71aabd49d68c38507ccb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Continuity/Variant9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7874678a26b70d92c8ee1dea96f8ff4a24e52c58f79a03bce655e5c29495ab77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SequentialCompleteness
    {Point : Type u}
    (continuity : ContinuitySignature Point) : Prop :=
  ∀ sequence,
    continuity.cauchy sequence →
      ∃ limit, continuity.convergesTo sequence limit

/-- A represented sequence has at most one declared limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Continuity/Variant9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Continuity/Variant9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04d9543506fe4230db6c33785eb65ebd912153f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
