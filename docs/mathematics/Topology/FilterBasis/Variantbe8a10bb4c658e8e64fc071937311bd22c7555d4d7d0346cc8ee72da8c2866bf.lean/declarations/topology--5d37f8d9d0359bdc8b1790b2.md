# topology'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d5eaa912ebb7c3ca9d37a3091bfbf67ff9c8287ebb6409d7a55ec78d575e69f",
  "kind": "def",
  "lexical_name": "topology'",
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
  "slug": "topology--5d37f8d9d0359bdc8b1790b2",
  "source": {
    "blob": "075be3f89eef066d88fb74cde58229f1af98ccb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 352,
    "path": "GRWTSK/Topology/FilterBasis/Variantbe8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d37f8d9d0359bdc8b1790b22822dd528a9e95579db025ad76a84bb412711f7b",
  "verification": {
    "reference": "docs/verification/Topology/FilterBasis/Variantbe8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d5eaa912ebb7c3ca9d37a3091bfbf67ff9c8287ebb6409d7a55ec78d575e69f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topology' {R M : Type*} [Semiring R] {_ : TopologicalSpace R} [AddCommGroup M] [Module R M]
    (B : ModuleFilterBasis R M) : TopologicalSpace M :=
  B.toAddGroupFilterBasis.topology

end Semiring

section Ring

variable {R M : Type*} [Ring R] [TopologicalSpace R] [AddCommGroup M] [Module R M]
  (B : ModuleFilterBasis R M)

/-- A topological additive group with a basis of `𝓝 0` satisfying the axioms of `ModuleFilterBasis`
is a topological module.

This lemma is mathematically useless because one could obtain such a result by applying
`ModuleFilterBasis.continuousSMul` and use the fact that group topologies are characterized
by their neighborhoods of 0 to obtain the `ContinuousSMul` on the pre-existing topology.

But it turns out it's just easier to get it as a byproduct of the proof, so this is just a free
quality-of-life improvement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/FilterBasis/Variantbe8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/FilterBasis/Variantbe8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `075be3f89eef066d88fb74cde58229f1af98ccb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
