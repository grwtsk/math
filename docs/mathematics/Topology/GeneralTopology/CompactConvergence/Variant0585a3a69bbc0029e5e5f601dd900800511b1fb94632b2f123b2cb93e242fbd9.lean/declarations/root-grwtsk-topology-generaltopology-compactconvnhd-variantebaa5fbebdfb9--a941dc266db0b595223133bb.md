# _root_.GRWTSK.Topology.GeneralTopology.CompactConvNhd.Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.Filter.HasBasis.compactConvergenceUniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65f7df84-d235-bc80-95fc-9efb35ddcc1c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.CompactConvNhd.Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.Filter.HasBasis.compactConvergenceUniformity",
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
  "slug": "root-grwtsk-topology-generaltopology-compactconvnhd-variantebaa5fbebdfb9--a941dc266db0b595223133bb",
  "source": {
    "blob": "0788ac245737c102988379e8f3697a91ffdef77f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 377,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a941dc266db0b595223133bb607741eac2946763341a04856c00433178b4fdec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65f7df84-d235-bc80-95fc-9efb35ddcc1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.CompactConvNhd.Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.Filter.HasBasis.compactConvergenceUniformity {ι : Type*} {pi : ι → Prop}
    {s : ι → Set (β × β)} (h : (𝓤 β).HasBasis pi s) :
    HasBasis (𝓤 C(α, β)) (fun p : Set α × ι => IsCompact p.1 ∧ pi p.2) fun p =>
      { fg : C(α, β) × C(α, β) | ∀ x ∈ p.1, (fg.1 x, fg.2 x) ∈ s p.2 } := by
  refine' hasBasis_compactConvergenceUniformity.to_hasBasis _ _
  · rintro ⟨t₁, t₂⟩ ⟨h₁, h₂⟩
    rcases h.mem_iff.1 h₂ with ⟨i, hpi, hi⟩
    exact ⟨(t₁, i), ⟨h₁, hpi⟩, fun fg hfg x hx => hi (hfg _ hx)⟩
  · rintro ⟨t, i⟩ ⟨ht, hi⟩
    exact ⟨(t, s i), ⟨ht, h.mem_of_mem hi⟩, Subset.rfl⟩
#align filter.has_basis.compact_convergence_uniformity Filter.HasBasis.compactConvergenceUniformity

variable {ι : Type u₃} {p : Filter ι} {F : ι → C(α, β)} {f}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0788ac245737c102988379e8f3697a91ffdef77f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
