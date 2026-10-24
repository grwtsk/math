# normTailSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac668cb6174498ebbfcce7b3302914200c612342c19b060fb593de51ed9eb755",
  "kind": "def",
  "lexical_name": "normTailSet",
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
  "slug": "normtailset--99f5aa86f38a6d90b99790f1",
  "source": {
    "blob": "cdce3e204f16dafa1200127c5b3e9b96e03e1021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 277,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99f5aa86f38a6d90b99790f1fb224a4dd12bec4d47d66094fb7c7a1ced869e0e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac668cb6174498ebbfcce7b3302914200c612342c19b060fb593de51ed9eb755`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normTailSet (lambda : ℝ) : Set E :=
  {x : E | lambda < ‖x‖}

/-- Norm tails are Borel measurable. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdce3e204f16dafa1200127c5b3e9b96e03e1021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
