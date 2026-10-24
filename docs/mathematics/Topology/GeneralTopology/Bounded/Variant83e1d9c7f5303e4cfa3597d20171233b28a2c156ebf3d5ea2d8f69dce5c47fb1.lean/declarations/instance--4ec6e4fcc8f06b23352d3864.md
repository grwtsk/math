# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dd452a979696834b6eae355146672dc8b2f49b80c4dd681a13622b5c32d673e",
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
  "slug": "instance--4ec6e4fcc8f06b23352d3864",
  "source": {
    "blob": "27d2fbe28b79cb92d1c25e2ae69b7b16163015e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1360,
    "line": 1335,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ec6e4fcc8f06b23352d38641169c0e47b4bb7fd829444d743d7b30da56a722b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dd452a979696834b6eae355146672dc8b2f49b80c4dd681a13622b5c32d673e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1335–1360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [NormedCommRing R] : NormedCommRing (α →ᵇ R) :=
  { BoundedContinuousFunction.commRing, BoundedContinuousFunction.normedAddCommGroup with
    -- Porting note: Added proof for `norm_mul`
    norm_mul := norm_mul_le }

end NormedCommRing

section NormedAlgebra

/-!
### Normed algebra structure

In this section, if `γ` is a normed algebra, then we show that the space of bounded
continuous functions from `α` to `γ` inherits a normed algebra structure, by using
pointwise operations and checking that they are compatible with the uniform distance. -/


variable {𝕜 : Type*} [NormedField 𝕜]

variable [TopologicalSpace α] [SeminormedAddCommGroup β] [NormedSpace 𝕜 β]

variable [NormedRing γ] [NormedAlgebra 𝕜 γ]

variable {f g : α →ᵇ γ} {x : α} {c : 𝕜}

/-- `BoundedContinuousFunction.const` as a `RingHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean#L1335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27d2fbe28b79cb92d1c25e2ae69b7b16163015e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
