# OfKernelAddEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00835f49d15b1c255f4f4b8503f52c866500d4695cd4cab621a2ab91bb4725e6",
  "kind": "def",
  "lexical_name": "OfKernelAddEquiv",
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
  "slug": "ofkerneladdequiv--26fdf7b268f2b67b1d495afa",
  "source": {
    "blob": "2a1dfb71d4f2d78c261b4c58a3fb188249577406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant4ac7fd9667bb116651a426aa62f78e484e0a53104d50a0fa20a4bf1531f563ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26fdf7b268f2b67b1d495afa790be94b2a99983c5a087faff6e38822bd64e3aa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant4ac7fd9667bb116651a426aa62f78e484e0a53104d50a0fa20a4bf1531f563ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00835f49d15b1c255f4f4b8503f52c866500d4695cd4cab621a2ab91bb4725e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OfKernelAddEquiv : OfKernel (K + K') ≃ₗᵢ[𝕜] OfKernel K + OfKernel K' := equiv
  (by simp [OfKernel.kernel_ofKernel, kernel_sum_eq_sum_of_kernel])

end OfKernel

end CompleteSpaceV

/-- Projection that takes a function `f : H + H'` to the unique pair in `H × H'` that achieves
its norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant4ac7fd9667bb116651a426aa62f78e484e0a53104d50a0fa20a4bf1531f563ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant4ac7fd9667bb116651a426aa62f78e484e0a53104d50a0fa20a4bf1531f563ea.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a1dfb71d4f2d78c261b4c58a3fb188249577406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
