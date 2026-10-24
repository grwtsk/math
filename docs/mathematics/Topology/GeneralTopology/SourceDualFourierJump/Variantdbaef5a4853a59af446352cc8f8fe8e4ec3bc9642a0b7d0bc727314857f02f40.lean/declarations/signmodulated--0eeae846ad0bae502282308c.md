# signModulated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c78116fc55b7acca44424483d0588b39b2e38315a790e83a9b3bbfabd745a81",
  "kind": "def",
  "lexical_name": "signModulated",
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
  "slug": "signmodulated--0eeae846ad0bae502282308c",
  "source": {
    "blob": "e24dd6bef6cfef102b4e92f771cb25c1b63d4afe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/SourceDualFourierJump/Variantdbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0eeae846ad0bae502282308c2d26ec21f447921ed14d05b89d6126c9b144e9e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceDualFourierJump/Variantdbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c78116fc55b7acca44424483d0588b39b2e38315a790e83a9b3bbfabd745a81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def signModulated (g : ℝ → ℂ) (ξ : ℝ) : ℂ := (Real.sign ξ : ℂ) * g ξ

/-- A nonzero value at zero gives an unavoidable two-sided spectral jump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceDualFourierJump/Variantdbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceDualFourierJump/Variantdbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e24dd6bef6cfef102b4e92f771cb25c1b63d4afe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
