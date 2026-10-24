# thresholdResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c62f177eb45c50d6b5f755e52c92ab098c76a3c05c9e13ae3d1723af66bbfd1d",
  "kind": "def",
  "lexical_name": "thresholdResult",
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
  "slug": "thresholdresult--fb44b6a55b5788740bdba89f",
  "source": {
    "blob": "e64379fe9c1d2e9f4809fb10ad30b82891f5eba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 220,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb44b6a55b5788740bdba89f17e9997e225145e8b188d70794d229c287e5b1b1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c62f177eb45c50d6b5f755e52c92ab098c76a3c05c9e13ae3d1723af66bbfd1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def thresholdResult
    (D : LegalDiffusionOperator flow boundary neighbors)
    (reference initialDeviation : V → ℝ) : V → Bool :=
  thresholdState (D.absoluteResult reference initialDeviation)

/-- An admitted neighbor is always a terrain edge and never an obstacle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64379fe9c1d2e9f4809fb10ad30b82891f5eba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
