# IsUniformInducing.equicontinuous_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f01d27ac-a04c-28b6-6963-a64d502c1460",
  "kind": "lemma",
  "lexical_name": "IsUniformInducing.equicontinuous_iff",
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
  "slug": "isuniforminducing-equicontinuous-iff--32d04a33cc32483f48752a0a",
  "source": {
    "blob": "2cebb90f29c64713bedbc4cc0bf92eaa51283531",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 739,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianteed9728a15e729914a66423273f4c597004b29ea55682ee7f6f091b3d46afb87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32d04a33cc32483f48752a0a956d559ba75d301a85a4b07769e271ac50239524",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianteed9728a15e729914a66423273f4c597004b29ea55682ee7f6f091b3d46afb87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f01d27ac-a04c-28b6-6963-a64d502c1460`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUniformInducing.equicontinuous_iff {F : ι → X → α} {u : α → β} (hu : IsUniformInducing u) :
    Equicontinuous F ↔ Equicontinuous ((u ∘ ·) ∘ F) := by
  congrm ∀ x, ?_
  rw [hu.equicontinuousAt_iff]

/-- Given `u : α → β` a uniform inducing map, a family `𝓕 : ι → X → α` is equicontinuous on a
subset `S : Set X` iff the family `𝓕'`, obtained by composing each function of `𝓕` by `u`, is
equicontinuous on `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianteed9728a15e729914a66423273f4c597004b29ea55682ee7f6f091b3d46afb87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianteed9728a15e729914a66423273f4c597004b29ea55682ee7f6f091b3d46afb87.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cebb90f29c64713bedbc4cc0bf92eaa51283531` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
