# logarithmicLeadingErrorEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e6df598df0464db5cd4d8d500fb4f3dca36a7dde768b953da69c342671e57ff",
  "kind": "def",
  "lexical_name": "logarithmicLeadingErrorEnvelope",
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
  "slug": "logarithmicleadingerrorenvelope--7162104089e14fba2b9d0cef",
  "source": {
    "blob": "40f059ae6c80dc8349a46ba40bb28b3e8f56dfa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 24,
    "path": "GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variante50ac114eb43acb60fbbbcd7ca6434480115596b3bb2569cac2f15c1d6a48388.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7162104089e14fba2b9d0cefa10d72a542ba58cd57cd90a1a79bf7276be58608",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceLeadingTailDecay/Variante50ac114eb43acb60fbbbcd7ca6434480115596b3bb2569cac2f15c1d6a48388.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e6df598df0464db5cd4d8d500fb4f3dca36a7dde768b953da69c342671e57ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def logarithmicLeadingErrorEnvelope (A : ℝ) : ℝ :=
  80 * |fullPositiveKappa 1| * ((Real.log A) ^ 2 / A) +
    (80 * |fullPositiveKappa 2| + (134 / 3 : ℝ) * |fullPositiveKappa 4|) *
      (Real.log A / A) + 20 * |fullPositiveKappa 3| * (1 / A)

/-- Every real floor scale retains the logarithmic majorant for its actual short error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceLeadingTailDecay/Variante50ac114eb43acb60fbbbcd7ca6434480115596b3bb2569cac2f15c1d6a48388.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variante50ac114eb43acb60fbbbcd7ca6434480115596b3bb2569cac2f15c1d6a48388.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40f059ae6c80dc8349a46ba40bb28b3e8f56dfa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
