# innerInventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1925ddb9ec46b6f8f702d7d9163656182d83364c5a6595b87aaab518270ea3c6",
  "kind": "def",
  "lexical_name": "innerInventory",
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
  "slug": "innerinventory--653ebe99cbd9c6cb8791ac8d",
  "source": {
    "blob": "a008999a15c9e2223dd395973902b7ce5f88a34e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:653ebe99cbd9c6cb8791ac8db74adc292b7d9e3647a6936c333169c4505a12ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1925ddb9ec46b6f8f702d7d9163656182d83364c5a6595b87aaab518270ea3c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def innerInventory (A : ℝ) (m j : ℕ) : Finset ℕ :=
  (logLongInventory A j).filter (fun n ↦ n ≠ m ∧ m*n ≤ sourceKernelCutoff A)

/-- Floor logarithms use ceil exponential endpoints, not approximate bin boundaries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a008999a15c9e2223dd395973902b7ce5f88a34e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
