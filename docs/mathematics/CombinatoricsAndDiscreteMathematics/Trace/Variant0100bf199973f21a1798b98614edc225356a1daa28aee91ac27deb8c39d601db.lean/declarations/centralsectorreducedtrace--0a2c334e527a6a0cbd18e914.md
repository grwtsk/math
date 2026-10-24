# centralSectorReducedTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02db5b26d590d282de67dd122bd817429d6742675df7270f78242a7b1487dd76",
  "kind": "def",
  "lexical_name": "centralSectorReducedTrace",
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
  "slug": "centralsectorreducedtrace--0a2c334e527a6a0cbd18e914",
  "source": {
    "blob": "49eef764712108247285c07a71404608441cd8ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 313,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a2c334e527a6a0cbd18e9141e35b37296446b8f6202bdc2b9f01f47394964f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02db5b26d590d282de67dd122bd817429d6742675df7270f78242a7b1487dd76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def centralSectorReducedTrace
    {State Group : Type}
    [Fintype State] [Fintype Group]
    {kernel : MarkovKernel State}
    (invariant : InvariantLawCertificate kernel)
    (identity : Group)
    (reduction : CentralSectorReduction State Group)
    (element : CrossedProductElement State Group) : ℝ :=
  stableInvariantTrace invariant identity
    (reduction.complementMultiply element)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variant0100bf199973f21a1798b98614edc225356a1daa28aee91ac27deb8c39d601db.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49eef764712108247285c07a71404608441cd8ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
