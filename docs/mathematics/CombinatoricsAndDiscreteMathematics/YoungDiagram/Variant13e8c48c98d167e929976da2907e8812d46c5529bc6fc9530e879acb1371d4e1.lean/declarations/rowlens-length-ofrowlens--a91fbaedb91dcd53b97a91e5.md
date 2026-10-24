# rowLens_length_ofRowLens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f76b2dc4b56095b3eb6e01ee5050d450114f3333",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 498,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13e8c48c98d167e929976da2907e8812d46c5529bc6fc9530e879acb1371d4e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f47bb95e-9a39-42f1-46d8-2aee98d684c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:824675c5-dad3-0a15-1905-b9fcfcf0cd70",
  "kind": "theorem",
  "lexical_name": "rowLens_length_ofRowLens",
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
  "slug": "rowlens-length-ofrowlens--a91fbaedb91dcd53b97a91e5",
  "source": {
    "blob": "f76b2dc4b56095b3eb6e01ee5050d450114f3333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 498,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variant13e8c48c98d167e929976da2907e8812d46c5529bc6fc9530e879acb1371d4e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a91fbaedb91dcd53b97a91e581c3fcfbfb9eb7630801ad1e6f80ee3186fdc94e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variant13e8c48c98d167e929976da2907e8812d46c5529bc6fc9530e879acb1371d4e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:824675c5-dad3-0a15-1905-b9fcfcf0cd70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rowLens_length_ofRowLens {w : List ℕ} {hw : w.Sorted (· ≥ ·)} (hpos : ∀ x ∈ w, 0 < x) :
    (ofRowLens w hw).rowLens.length = w.length := by
  simp only [length_rowLens, colLen, Nat.find_eq_iff, mem_cells, mem_ofRowLens,
    lt_self_iff_false, IsEmpty.exists_iff, Classical.not_not]
  refine' ⟨True.intro, fun n hn => ⟨hn, hpos _ (List.get_mem _ _ hn)⟩⟩
#align young_diagram.row_lens_length_of_row_lens YoungDiagram.rowLens_length_ofRowLens

-- Porting note: use `List.get` instead of `List.nthLe` because it has been deprecated
/-- The length of the `i`th row in `ofRowLens w hw` is the `i`th entry of `w` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variant13e8c48c98d167e929976da2907e8812d46c5529bc6fc9530e879acb1371d4e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variant13e8c48c98d167e929976da2907e8812d46c5529bc6fc9530e879acb1371d4e1.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f76b2dc4b56095b3eb6e01ee5050d450114f3333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
