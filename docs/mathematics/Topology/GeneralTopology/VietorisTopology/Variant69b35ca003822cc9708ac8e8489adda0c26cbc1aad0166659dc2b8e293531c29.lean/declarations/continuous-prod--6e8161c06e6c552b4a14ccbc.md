# continuous_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5eb95b14-3f1a-87cb-5243-539c7bde40de",
  "kind": "theorem",
  "lexical_name": "continuous_prod",
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
  "slug": "continuous-prod--6e8161c06e6c552b4a14ccbc",
  "source": {
    "blob": "524bba0218c9cea79b453a081dfae042d893f368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 553,
    "path": "GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e8161c06e6c552b4a14ccbc935e7c65593527bbe202b967985ea1e1fbf446f9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5eb95b14-3f1a-87cb-5243-539c7bde40de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_prod : Continuous fun p : Compacts α × Compacts β => p.1 ×ˢ p.2 := by
  rw [continuous_induced_rng, continuous_generateFrom_iff]
  rintro _ (⟨U, hU, rfl⟩ | ⟨U, hU, rfl⟩)
  · rw [isOpen_iff_forall_mem_open]
    intro ⟨K, L⟩ (hKL : (K : Set α) ×ˢ (L : Set β) ⊆ U)
    obtain ⟨V, W, hV, hW, hK, hL, hVW⟩ := generalized_tube_lemma K.isCompact L.isCompact hU hKL
    exact ⟨_, fun ⟨K', L'⟩ ⟨hK', hL'⟩ => (Set.prod_mono hK' hL').trans hVW,
      (isOpen_subsets_of_isOpen hV).prod (isOpen_subsets_of_isOpen hW), hK, hL⟩
  · rw [isOpen_iff_forall_mem_open]
    intro ⟨K, L⟩ ⟨⟨x, y⟩, ⟨(hx : x ∈ K), (hy : y ∈ L)⟩, hxy⟩
    obtain ⟨V, W, hV, hW, hxV, hyW, hVW⟩ := isOpen_prod_iff.mp hU x y hxy
    grw [preimage_ofPred_eq, ← hVW]
    simp_rw [Function.comp_apply, coe_prod, prod_inter_prod, prod_nonempty_iff]
    exact ⟨_, .rfl,
      (isOpen_inter_nonempty_of_isOpen hV).prod (isOpen_inter_nonempty_of_isOpen hW),
      ⟨x, hx, hxV⟩, ⟨y, hy, hyW⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524bba0218c9cea79b453a081dfae042d893f368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
