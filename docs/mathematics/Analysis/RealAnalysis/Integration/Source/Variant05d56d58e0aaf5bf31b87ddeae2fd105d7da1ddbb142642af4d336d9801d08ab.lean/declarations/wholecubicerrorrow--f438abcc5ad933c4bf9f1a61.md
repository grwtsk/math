# wholeCubicErrorRow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:447d5cbfe29c37b45ec282e9af7e197635c96144530aa571c3d3859a8c822e9d",
  "kind": "def",
  "lexical_name": "wholeCubicErrorRow",
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
  "slug": "wholecubicerrorrow--f438abcc5ad933c4bf9f1a61",
  "source": {
    "blob": "2f545aabf9b7ffacb1f37e461c3ce9ada8d276a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant05d56d58e0aaf5bf31b87ddeae2fd105d7da1ddbb142642af4d336d9801d08ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f438abcc5ad933c4bf9f1a6131130ae1a4e674f4c883b761eb539c099349a8f7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Variant05d56d58e0aaf5bf31b87ddeae2fd105d7da1ddbb142642af4d336d9801d08ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:447d5cbfe29c37b45ec282e9af7e197635c96144530aa571c3d3859a8c822e9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wholeCubicErrorRow (A k : ℝ) : ℝ :=
  ∫ u in Ioi (0 : ℝ), Int.fract u *
    (deriv (logProfile A k) u - cubicLogModelDerivative A k u)

/-- All real logarithmic displacements are admitted, including zero and negative ones. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Variant05d56d58e0aaf5bf31b87ddeae2fd105d7da1ddbb142642af4d336d9801d08ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant05d56d58e0aaf5bf31b87ddeae2fd105d7da1ddbb142642af4d336d9801d08ab.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f545aabf9b7ffacb1f37e461c3ce9ada8d276a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
