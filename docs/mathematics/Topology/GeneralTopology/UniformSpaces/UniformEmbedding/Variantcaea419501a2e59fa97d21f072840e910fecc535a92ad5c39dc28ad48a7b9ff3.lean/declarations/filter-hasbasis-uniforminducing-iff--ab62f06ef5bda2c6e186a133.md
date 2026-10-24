# Filter.HasBasis.uniformInducing_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e834045-5a2d-2590-6b1f-49ffa53c29e7",
  "kind": "lemma",
  "lexical_name": "Filter.HasBasis.uniformInducing_iff",
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
  "slug": "filter-hasbasis-uniforminducing-iff--ab62f06ef5bda2c6e186a133",
  "source": {
    "blob": "07cce3462a92c1f6d444f9cb117ead8f1101703b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantcaea419501a2e59fa97d21f072840e910fecc535a92ad5c39dc28ad48a7b9ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab62f06ef5bda2c6e186a133e0c91a8ad9d502b3abb13fe622c075c987802758",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantcaea419501a2e59fa97d21f072840e910fecc535a92ad5c39dc28ad48a7b9ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e834045-5a2d-2590-6b1f-49ffa53c29e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma Filter.HasBasis.uniformInducing_iff {ι ι'} {p : ι → Prop} {p' : ι' → Prop} {s s'}
    (h : (𝓤 α).HasBasis p s) (h' : (𝓤 β).HasBasis p' s') {f : α → β} :
    UniformInducing f ↔
      (∀ i, p' i → ∃ j, p j ∧ ∀ x y, (x, y) ∈ s j → (f x, f y) ∈ s' i) ∧
        (∀ j, p j → ∃ i, p' i ∧ ∀ x y, (f x, f y) ∈ s' i → (x, y) ∈ s j) := by
  simp [uniformInducing_iff', h.uniformContinuous_iff h', (h'.comap _).le_basis_iff h, subset_def]
#align filter.has_basis.uniform_inducing_iff Filter.HasBasis.uniformInducing_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantcaea419501a2e59fa97d21f072840e910fecc535a92ad5c39dc28ad48a7b9ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantcaea419501a2e59fa97d21f072840e910fecc535a92ad5c39dc28ad48a7b9ff3.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07cce3462a92c1f6d444f9cb117ead8f1101703b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
