# monoidHomOfMemClosureRangeCoe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf666508b9a9e3ab880053b0acb5bca50e6ffc80d8126d8222dae259bc5196eb",
  "kind": "def",
  "lexical_name": "monoidHomOfMemClosureRangeCoe",
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
  "slug": "monoidhomofmemclosurerangecoe--d8647466e641c85e0958d9c6",
  "source": {
    "blob": "82746c2f2a4e25027e47de20068dc6441dfc4b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 352,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8647466e641c85e0958d9c650c6f68f42130b865cd3b09fc4d4c83793ead659",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf666508b9a9e3ab880053b0acb5bca50e6ffc80d8126d8222dae259bc5196eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidHomOfMemClosureRangeCoe (f : M₁ → M₂)
    (hf : f ∈ closure (range fun (f : F) (x : M₁) => f x)) : M₁ →* M₂
    where
  toFun := f
  map_one' := (isClosed_setOf_map_one M₁ M₂).closure_subset_iff.2 (range_subset_iff.2 map_one) hf
  map_mul' := (isClosed_setOf_map_mul M₁ M₂).closure_subset_iff.2 (range_subset_iff.2 map_mul) hf
#align monoid_hom_of_mem_closure_range_coe monoidHomOfMemClosureRangeCoe
#align add_monoid_hom_of_mem_closure_range_coe addMonoidHomOfMemClosureRangeCoe

/-- Construct a bundled monoid homomorphism from a pointwise limit of monoid homomorphisms. -/
@[to_additive (attr := simps! (config := .asFn))
  "Construct a bundled additive monoid homomorphism from a pointwise limit of additive
monoid homomorphisms"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82746c2f2a4e25027e47de20068dc6441dfc4b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
