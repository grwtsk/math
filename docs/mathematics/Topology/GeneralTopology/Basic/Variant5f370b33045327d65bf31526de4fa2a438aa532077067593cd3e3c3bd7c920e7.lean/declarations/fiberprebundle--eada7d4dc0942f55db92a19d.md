# FiberPrebundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a962b3a9cf24e548e0ac5981a22f63e90e1332b31aa074e93930957618a2758",
  "kind": "structure",
  "lexical_name": "FiberPrebundle",
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
  "slug": "fiberprebundle--eada7d4dc0942f55db92a19d",
  "source": {
    "blob": "34f734bf8c82a2c5da569b500ff6e1956cc31e9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 719,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eada7d4dc0942f55db92a19dad8f8c1a7073e0870b26042da9faf678f2610543",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a962b3a9cf24e548e0ac5981a22f63e90e1332b31aa074e93930957618a2758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 719–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiberPrebundle where
  pretrivializationAtlas : Set (Pretrivialization F (π F E))
  pretrivializationAt : B → Pretrivialization F (π F E)
  mem_base_pretrivializationAt : ∀ x : B, x ∈ (pretrivializationAt x).baseSet
  pretrivialization_mem_atlas : ∀ x : B, pretrivializationAt x ∈ pretrivializationAtlas
  continuous_trivChange : ∀ e, e ∈ pretrivializationAtlas → ∀ e', e' ∈ pretrivializationAtlas →
    ContinuousOn (e ∘ e'.toPartialEquiv.symm) (e'.target ∩ e'.toPartialEquiv.symm ⁻¹' e.source)
  totalSpaceMk_isInducing : ∀ b : B, IsInducing (pretrivializationAt b ∘ TotalSpace.mk b)

namespace FiberPrebundle

variable {F E}
variable (a : FiberPrebundle F E) {e : Pretrivialization F (π F E)}

/-- Topology on the total space that will make the prebundle into a bundle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean#L719).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34f734bf8c82a2c5da569b500ff6e1956cc31e9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
