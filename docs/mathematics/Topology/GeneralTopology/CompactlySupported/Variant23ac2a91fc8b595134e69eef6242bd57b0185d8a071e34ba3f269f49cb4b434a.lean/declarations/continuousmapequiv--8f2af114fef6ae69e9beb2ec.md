# continuousMapEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae46f991f50dfb4c7043caf27e76476b014b32e10ea0907aa161669d68af9ed4",
  "kind": "def",
  "lexical_name": "continuousMapEquiv",
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
  "slug": "continuousmapequiv--8f2af114fef6ae69e9beb2ec",
  "source": {
    "blob": "58722598757fa6b3fbea3e6db248cf034d888e13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant23ac2a91fc8b595134e69eef6242bd57b0185d8a071e34ba3f269f49cb4b434a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f2af114fef6ae69e9beb2ec99f54625bd21f4cd0eaf5d4ba6a2af3dddf06708",
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

Occurrence: `declaration:ae46f991f50dfb4c7043caf27e76476b014b32e10ea0907aa161669d68af9ed4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousMapEquiv [CompactSpace α] : C(α, β) ≃ C_c(α, β) where
  toFun f :=
    { toFun := f
      hasCompactSupport' := HasCompactSupport.of_compactSpace f }
  invFun f := f

variable {γ : Type*} [TopologicalSpace γ] [Zero γ]

/-- Composition of a continuous function `f` with compact support with another continuous function
`g` sending `0` to `0` from the left yields another continuous function `g ∘ f` with compact
support.

If `g` doesn't send `0` to `0`, `f.compLeft g` defaults to `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlySupported/Variant23ac2a91fc8b595134e69eef6242bd57b0185d8a071e34ba3f269f49cb4b434a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant23ac2a91fc8b595134e69eef6242bd57b0185d8a071e34ba3f269f49cb4b434a.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58722598757fa6b3fbea3e6db248cf034d888e13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
