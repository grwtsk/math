# coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c504395425327593db531d28710bd0ca6a667372af03ec72c9f52014d179c4ef",
  "kind": "def",
  "lexical_name": "coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy",
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
  "slug": "coregrowingshiftquarticendpointexplicitintervalweightedboxenergy--07c19948612b16505ee26a09",
  "source": {
    "blob": "2ccf6d46885121a4eadf47ced7523c8e1830418d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 370,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07c19948612b16505ee26a0907e59d63f45f37d2e6c06b73ed5c86cc05c8877d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c504395425327593db531d28710bd0ca6a667372af03ec72c9f52014d179c4ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy
    (j : ℕ) : ℝ :=
  ∑ q ∈ coreGrowingShiftQuarticEndpointDyadicBox j,
    (coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity
      j q.1 q.2 : ℝ) *
      (mertensTwoPointPrefix q.1 q.2 *
        mertensTwoPointQuarticEndpointPair q.1 q.2)

/-- Replacing literal fiber cardinality by its explicit interval formula
introduces no analytic loss. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointIntervalBox.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ccf6d46885121a4eadf47ced7523c8e1830418d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
