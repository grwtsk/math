# compactConvNhd_subset_compactOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89dee065-d4a6-3037-95b5-108b585415ab",
  "kind": "theorem",
  "lexical_name": "compactConvNhd_subset_compactOpen",
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
  "slug": "compactconvnhd-subset-compactopen--46998f171641253ec50c71a7",
  "source": {
    "blob": "0788ac245737c102988379e8f3697a91ffdef77f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 216,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46998f171641253ec50c71a7538ec5387daa958c737e9ec49867456743727085",
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

Occurrence: `result:89dee065-d4a6-3037-95b5-108b585415ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactConvNhd_subset_compactOpen (hK : IsCompact K) {U : Set β} (hU : IsOpen U)
    (hf : f ∈ CompactOpen.gen K U) :
    ∃ V ∈ 𝓤 β, IsOpen V ∧ compactConvNhd K V f ⊆ CompactOpen.gen K U := by
  obtain ⟨V, hV₁, hV₂, hV₃⟩ := lebesgue_number_of_compact_open (hK.image f.continuous) hU hf
  refine' ⟨V, hV₁, hV₂, _⟩
  rintro g hg _ ⟨x, hx, rfl⟩
  exact hV₃ (f x) ⟨x, hx, rfl⟩ (hg x hx)
#align continuous_map.compact_conv_nhd_subset_compact_open ContinuousMap.compactConvNhd_subset_compactOpen

/-- The point `f` in `ContinuousMap.compactConvNhd K V f` is also an interior point wrt the
compact-open topology.

Since `ContinuousMap.compactConvNhd K V f` are a neighbourhood basis at `f` for each `f`, it follows
that the compact-open topology is at least as fine as the topology of compact convergence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0788ac245737c102988379e8f3697a91ffdef77f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
