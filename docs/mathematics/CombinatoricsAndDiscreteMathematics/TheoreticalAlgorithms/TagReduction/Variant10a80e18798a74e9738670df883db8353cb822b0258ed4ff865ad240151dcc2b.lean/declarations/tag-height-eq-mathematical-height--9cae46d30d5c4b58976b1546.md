# tag_height_eq_mathematical_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca26f5f79b7a52879290d0c13b3d5f932d827385",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10a80e18798a74e9738670df883db8353cb822b0258ed4ff865ad240151dcc2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3db78e8c-c5aa-9443-186a-15ca813c77e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ab212d9-4273-0776-6986-99065e2dc2b8",
  "kind": "theorem",
  "lexical_name": "tag_height_eq_mathematical_height",
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
  "slug": "tag-height-eq-mathematical-height--9cae46d30d5c4b58976b1546",
  "source": {
    "blob": "ca26f5f79b7a52879290d0c13b3d5f932d827385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant10a80e18798a74e9738670df883db8353cb822b0258ed4ff865ad240151dcc2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cae46d30d5c4b58976b1546e6649845df724a9171e74721b5147e24f8f4c445",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant10a80e18798a74e9738670df883db8353cb822b0258ed4ff865ad240151dcc2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ab212d9-4273-0776-6986-99065e2dc2b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tag_height_eq_mathematical_height (tag : ConstructorId) (term : Term) :
    tagHeight tag term = (tagReducer tag).height term := by
  induction term using (tagReducer tag).wellFounded.induction with
  | h term ih =>
    rw [tagHeight, FiniteReducer.height_eq]
    congr 1
    change (tagNext tag term).attach.map (fun result => tagHeight tag result.val + 1) =
      (tagNext tag term).map (fun result => (tagReducer tag).height result + 1)
    calc
      _ = (tagNext tag term).attach.map
          (fun result => (tagReducer tag).height result.val + 1) := by
        apply List.map_congr_left
        intro result _member
        rw [ih result.val (tag_next_sound tag result.property)]
      _ = _ := List.attach_map_val (l := tagNext tag term)
        (f := fun result => (tagReducer tag).height result + 1)

/-- Every supported term is strongly normalizing, independently of catalogue membership. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant10a80e18798a74e9738670df883db8353cb822b0258ed4ff865ad240151dcc2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant10a80e18798a74e9738670df883db8353cb822b0258ed4ff865ad240151dcc2b.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca26f5f79b7a52879290d0c13b3d5f932d827385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
