# forwardHalfKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50f6f225ec665056788ba0831132e5857c9d9411a337994a5ef8aae548247dd6",
  "kind": "def",
  "lexical_name": "forwardHalfKernel",
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
  "slug": "forwardhalfkernel--1b862e9757ea4a184f76d5ef",
  "source": {
    "blob": "76cc077c1d2ecda3c7f53debe98c364daa8304ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b862e9757ea4a184f76d5eff552f1c225e2fd59fc9e2ac69be98353c1a330a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50f6f225ec665056788ba0831132e5857c9d9411a337994a5ef8aae548247dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forwardHalfKernel (A : ℝ) (p : ℝ × ℝ) : ℝ :=
  Real.exp (-p.1 / 2) * normalizedTest explicitSecondDerivative A p.2 *
    normalizedTest explicitSecondDerivative A (p.2 + p.1)

/-- Continuity uses the actual zero-extended source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76cc077c1d2ecda3c7f53debe98c364daa8304ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
