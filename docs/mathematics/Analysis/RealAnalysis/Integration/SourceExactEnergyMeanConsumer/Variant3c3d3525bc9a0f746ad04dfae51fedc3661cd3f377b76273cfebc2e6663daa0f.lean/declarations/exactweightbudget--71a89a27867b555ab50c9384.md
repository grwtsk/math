# exactWeightBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80cc8f75e3ff30380dc2581fbdb2b722d9ef7864caf4cf860ddf857294dc28ca",
  "kind": "def",
  "lexical_name": "exactWeightBudget",
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
  "slug": "exactweightbudget--71a89a27867b555ab50c9384",
  "source": {
    "blob": "a818391a40882e1455cedd8fe4a4e8bf57397666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant3c3d3525bc9a0f746ad04dfae51fedc3661cd3f377b76273cfebc2e6663daa0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71a89a27867b555ab50c9384719034a6dc444ca84b0c811067d7f364faea2825",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant3c3d3525bc9a0f746ad04dfae51fedc3661cd3f377b76273cfebc2e6663daa0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80cc8f75e3ff30380dc2581fbdb2b722d9ef7864caf4cf860ddf857294dc28ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactWeightBudget (Q A : ℝ) : ℝ :=
  tailEnergyCoefficient Q / A ^ 2 + Real.sqrt (tailEnergyCoefficient Q) / (2 * A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant3c3d3525bc9a0f746ad04dfae51fedc3661cd3f377b76273cfebc2e6663daa0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant3c3d3525bc9a0f746ad04dfae51fedc3661cd3f377b76273cfebc2e6663daa0f.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a818391a40882e1455cedd8fe4a4e8bf57397666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
