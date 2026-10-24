# actualMovingCriticalHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65e561a9e74c74d4b6421ed5e6ed8909a3adf08d62a5fc01f96cb588e5ada784",
  "kind": "def",
  "lexical_name": "actualMovingCriticalHead",
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
  "slug": "actualmovingcriticalhead--1bb0cf8f5db6c2119da6b3f8",
  "source": {
    "blob": "8873834b18836b1c30f99b3b20cf7592340a841d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variantff1317a8bfb5b449bcd3adcebd2cc82eb2a7710ad6f68e3ba3627f6ce2a5d600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bb0cf8f5db6c2119da6b3f8b4e7e2eaf259bfa99d1ab3513c33ad3d3cd26aa1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03/Variantff1317a8bfb5b449bcd3adcebd2cc82eb2a7710ad6f68e3ba3627f6ce2a5d600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65e561a9e74c74d4b6421ed5e6ed8909a3adf08d62a5fc01f96cb588e5ada784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualMovingCriticalHead (A : ℝ) : ℝ :=
  actualCenteredMangoldtLogError (2 * A) * Real.sqrt 7 *
    sourceCorrelation explicitSecondDerivative A (Real.log 7) / 2

/-- Every actual closed prime-power jump occurs with its original weighted coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variantff1317a8bfb5b449bcd3adcebd2cc82eb2a7710ad6f68e3ba3627f6ce2a5d600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variantff1317a8bfb5b449bcd3adcebd2cc82eb2a7710ad6f68e3ba3627f6ce2a5d600.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8873834b18836b1c30f99b3b20cf7592340a841d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
