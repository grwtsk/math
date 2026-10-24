# Multipliable.tprod_vanishing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1965d94d-2b24-8e26-3baa-a6451799dc0e",
  "kind": "theorem",
  "lexical_name": "Multipliable.tprod_vanishing",
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
  "slug": "multipliable-tprod-vanishing--17eb78d33af7a944d3b29ba6",
  "source": {
    "blob": "a388fffe00ac421b88935059d5300a63f90641b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 365,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17eb78d33af7a944d3b29ba6d51e3913f5964f2798ee42785151b55a356cc233",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1965d94d-2b24-8e26-3baa-a6451799dc0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Multipliable.tprod_vanishing (hf : Multipliable f) ⦃e : Set G⦄ (he : e ∈ 𝓝 1) :
    ∃ s : Finset α, ∀ t : Set α, Disjoint t s → (∏' b : t, f b) ∈ e := by
  classical
  letI : UniformSpace G := IsTopologicalGroup.toUniformSpace G
  have : IsUniformGroup G := isUniformGroup_of_commGroup
  exact cauchySeq_finset_iff_tprod_vanishing.1 hf.hasProd.cauchySeq e he

/-- The product over the complement of a finset tends to `1` when the finset grows to cover the
whole space. This does not need a multipliability assumption, as otherwise all such products are
one. -/
@[to_additive "The sum over the complement of a finset tends to `0` when the finset grows to cover
the whole space. This does not need a summability assumption, as otherwise all such sums are zero."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variantc9a76d4210ba40d36252e07dceb4560162a89a7c5739a5de47acdb21b5e87724.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a388fffe00ac421b88935059d5300a63f90641b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
