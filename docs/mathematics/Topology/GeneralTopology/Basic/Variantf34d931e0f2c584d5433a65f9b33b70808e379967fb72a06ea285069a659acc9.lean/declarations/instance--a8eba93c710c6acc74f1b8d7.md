# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79c11289db91a05719f828f398e9eceb686414e31cd65df37717f1e5f0382c0d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a8eba93c710c6acc74f1b8d7",
  "source": {
    "blob": "e8ce3eaafc83f855a5e72a446254f7a183d0eca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8eba93c710c6acc74f1b8d7232a66bc3d668f6303b12d8e1076dd7fd4c22d6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79c11289db91a05719f828f398e9eceb686414e31cd65df37717f1e5f0382c0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CoeTC F (α →Co β) :=
  ⟨toContinuousOrderHom⟩

end ContinuousOrderHomClass
/-! ### Top homomorphisms -/


namespace ContinuousOrderHom

variable [TopologicalSpace α] [Preorder α] [TopologicalSpace β]

section Preorder

variable [Preorder β] [TopologicalSpace γ] [Preorder γ] [TopologicalSpace δ] [Preorder δ]

/-- Reinterpret a `ContinuousOrderHom` as a `ContinuousMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8ce3eaafc83f855a5e72a446254f7a183d0eca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
