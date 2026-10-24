# counterCoreUniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89cf2186f00f16597ecea7b1c63f619683121ddbc03f459ef8a48baf0accc03b",
  "kind": "def",
  "lexical_name": "counterCoreUniformity",
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
  "slug": "countercoreuniformity--4e9f849d84217e0c6eeac9df",
  "source": {
    "blob": "78ba76d6250d0818b49b2d6192832dead96b9a76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 245,
    "path": "GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e9f849d84217e0c6eeac9df066e7a0a4a29019a5287c32632dc08f3e8b487f7",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89cf2186f00f16597ecea7b1c63f619683121ddbc03f459ef8a48baf0accc03b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def counterCoreUniformity : UniformSpace.Core ℕ := by
  apply UniformSpace.Core.mkOfBasis counterBasis <;>
  intro S hS
  · obtain ⟨n, hn⟩ := hS
    simp only [fundamentalEntourage_ext, iUnion_singleton_eq_range] at hn
    simp only [hn, mem_union, mem_range, Prod.mk.injEq, and_self, Subtype.exists, mem_Icc, zero_le,
      true_and, exists_prop', nonempty_prop, exists_eq_right, mem_Ici, Prod.mk_le_mk]
    omega
  · refine ⟨S, hS, ?_⟩
    obtain ⟨n, hn⟩ := hS
    simp only [fundamentalEntourage_ext, iUnion_singleton_eq_range] at hn
    simp only [hn, preimage_union, union_subset_iff]
    constructor
    · apply subset_union_of_subset_left (subset_of_eq _)
      aesop
    · apply subset_union_of_subset_right (subset_of_eq _)
      aesop
  · refine ⟨S, hS, ?_⟩
    obtain ⟨n, hn⟩ := hS
    simp only [fundamentalEntourage_ext, iUnion_singleton_eq_range] at hn
    simp only [hn, mem_union, mem_range, Prod.mk.injEq, Subtype.exists, mem_Icc, zero_le, true_and,
      exists_and_left, exists_prop', nonempty_prop, exists_eq_left, mem_Ici, Prod.mk_le_mk]
    rintro ⟨P1, P2⟩ ⟨m, h1, h2⟩
    simp only [mem_union, mem_range, Prod.mk.injEq, Subtype.exists, mem_Icc, zero_le, true_and,
      exists_and_left, exists_prop', nonempty_prop, exists_eq_left, mem_Ici, Prod.mk_le_mk] at h1 h2
    aesop

/-- The topology on `ℕ` induced by the "crude" uniformity -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ba76d6250d0818b49b2d6192832dead96b9a76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
