# vaughanTypeI2Scalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5ff58aa97c7211d2783be6f82a09e064b80951c21bfb2a913ac7c82af9a332b",
  "kind": "def",
  "lexical_name": "vaughanTypeI2Scalar",
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
  "slug": "vaughantypei2scalar--7584143a5eb9f0662234b645",
  "source": {
    "blob": "2b9cece1ecfb57b5fb8c515ef953c8cc11820ee4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant21184cab2a90d44476e40a920c463267c7e6506fbca543b5ae93779a7b04895d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7584143a5eb9f0662234b645eb1c8a5691ccc9ec91651f7c746c7f8f60fa7300",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant21184cab2a90d44476e40a920c463267c7e6506fbca543b5ae93779a7b04895d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5ff58aa97c7211d2783be6f82a09e064b80951c21bfb2a913ac7c82af9a332b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vaughanTypeI2Scalar (V n : ℕ) : ℝ :=
  (vaughanMoebiusBelow V * ArithmeticFunction.log) n

/-- The Type II component.  Subtracting the `k = 1` contribution makes this
exactly the negative convolution over `m > U` and `k > 1`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant21184cab2a90d44476e40a920c463267c7e6506fbca543b5ae93779a7b04895d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant21184cab2a90d44476e40a920c463267c7e6506fbca543b5ae93779a7b04895d.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b9cece1ecfb57b5fb8c515ef953c8cc11820ee4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
