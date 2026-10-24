# card_interedges_add_card_interedges_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab7cb494f5e279a5b5cb6d28dc43e6e6782ead26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0bd1f36b-6d66-c7c3-a34b-3fea5424142e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72a0f7a3-b5a4-b589-e579-6138c5c166c6",
  "kind": "theorem",
  "lexical_name": "card_interedges_add_card_interedges_compl",
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
  "slug": "card-interedges-add-card-interedges-compl--25aa8f4db64a212a00af5875",
  "source": {
    "blob": "ab7cb494f5e279a5b5cb6d28dc43e6e6782ead26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 329,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25aa8f4db64a212a00af587572ae9fe4f7de63b0f75ae60011131a6c886153b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72a0f7a3-b5a4-b589-e579-6138c5c166c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_interedges_add_card_interedges_compl (h : Disjoint s t) :
    #(G.interedges s t) + #(Gᶜ.interedges s t) = #s * #t := by
  rw [← card_product, interedges_def, interedges_def]
  have : {e ∈ s ×ˢ t | Gᶜ.Adj e.1 e.2} = {e ∈ s ×ˢ t | ¬G.Adj e.1 e.2} := by
    refine filter_congr fun x hx ↦ ?_
    rw [mem_product] at hx
    rw [compl_adj, and_iff_right (h.forall_ne_finset hx.1 hx.2)]
  rw [this, ← card_union_of_disjoint, filter_union_filter_neg_eq]
  exact disjoint_filter.2 fun _ _ ↦ Classical.not_not.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab7cb494f5e279a5b5cb6d28dc43e6e6782ead26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
