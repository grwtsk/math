# compLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8079808346c0466553a53c58204767c12ffdbd10dca88e84266b71c6555e66a8",
  "kind": "def",
  "lexical_name": "compLinearMap",
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
  "slug": "complinearmap--f5de9f9c68ef34465df9a129",
  "source": {
    "blob": "58722598757fa6b3fbea3e6db248cf034d888e13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 601,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant23ac2a91fc8b595134e69eef6242bd57b0185d8a071e34ba3f269f49cb4b434a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5de9f9c68ef34465df9a129bd045e0598199f87317b7208892c266130fb9fa4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlySupported/Variant23ac2a91fc8b595134e69eef6242bd57b0185d8a071e34ba3f269f49cb4b434a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8079808346c0466553a53c58204767c12ffdbd10dca88e84266b71c6555e66a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compLinearMap [AddCommMonoid δ] [ContinuousAdd δ] {R : Type*} [Semiring R] [Module R δ]
    [ContinuousConstSMul R δ] (g : β →co γ) : C_c(γ, δ) →ₗ[R] C_c(β, δ) where
  toFun f := f.comp g
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

/-- Composition as a non-unital algebra homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlySupported/Variant23ac2a91fc8b595134e69eef6242bd57b0185d8a071e34ba3f269f49cb4b434a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant23ac2a91fc8b595134e69eef6242bd57b0185d8a071e34ba3f269f49cb4b434a.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58722598757fa6b3fbea3e6db248cf034d888e13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
