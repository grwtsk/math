# mapRingHom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef9bc54f-071f-877a-3fa8-12d8d037feab",
  "kind": "lemma",
  "lexical_name": "mapRingHom_apply",
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
  "slug": "mapringhom-apply--96abdd89b434f237d9cba73c",
  "source": {
    "blob": "18b3a7bb3cd2e819fddd5ed78049567f5330d914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 419,
    "path": "GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96abdd89b434f237d9cba73c8761b28eadb7f2a36a388907098bf6cded2f32c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef9bc54f-071f-877a-3fa8-12d8d037feab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapRingHom_apply (x : Πʳ i, [R₁ i, B₁ i]_[𝓕₁]) (j : ι₂) :
    x.mapRingHom R₁ R₂ f hf φ hφ j = φ j (x (f j)) :=
  rfl

end ring

end map

section Topology
/-!
## Topology on the restricted product

The topology on the restricted product `Πʳ i, [R i, A i]_[𝓕]` is defined in the following way:
1. If `𝓕` is some principal filter `𝓟 s`, recall that `Πʳ i, [R i, A i]_[𝓟 s]` is canonically
identified with `(Π i ∈ s, A i) × (Π i ∉ s, R i)`. We endow it with the product topology,
which is also the topology induced from the full product `Π i, R i`.
2. In general, we note that `𝓕` is the infimum of the principal filters coarser than `𝓕`. We
then endow `Πʳ i, [R i, A i]_[𝓕]` with the inductive limit / final topology associated to the
inclusion maps `Πʳ i, [R i, A i]_[𝓟 s] → Πʳ i, [R i, A i]_[𝓕]` where `𝓕 ≤ 𝓟 s`.

In particular:
* On the classical restricted product, with respect to the cofinite filter, this corresponds to
  taking the inductive limit of the `Πʳ i, [R i, A i]_[𝓟 s]` over all *cofinite* sets `s : Set ι`.
* If `𝓕 = 𝓟 s` is a principal filter, this second step clearly does not change the topology, since
  `s` belongs to the indexing set of the inductive limit.

Taking advantage of that second remark, we do not actually declare an instance specific to
principal filters. Instead, we provide directly the general instance (corresponding to step 2 above)
as `RestrictedProduct.topologicalSpace`. We then prove that, for a principal filter, the
map to the full product is an inducing (`RestrictedProduct.isEmbedding_coe_of_principal`),
and that the topology for a general `𝓕` is indeed the expected inductive limit
(`RestrictedProduct.topologicalSpace_eq_iSup`).

Note: outside of these two cases, this topology on the restricted product does not seem
well-behaved. While declaring a single instance is practical, it may conflict with more interesting
topologies in some other cases. Thus, future contributions should not restrain from specializing
these instances to principal and cofinite filters if necessary.
-/

/-!
### Definition of the topology
-/

variable {R A R' A'}
variable {𝓕 : Filter ι}
variable [∀ i, TopologicalSpace (R i)]

variable (R A 𝓕) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18b3a7bb3cd2e819fddd5ed78049567f5330d914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
