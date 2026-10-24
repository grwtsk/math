# toList_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a916a61746f3da9de1080d0a7793523e3f297c03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc966f67bb1eaeb8a6cac33134b5daeb1ec422dc63c91b3492ef8e066c372fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45ec8143-550a-a42c-0a7f-717d45504a9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:153c9f30-7167-f3f0-d77c-6b59d8f04f13",
  "kind": "theorem",
  "lexical_name": "toList_spec",
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
  "slug": "tolist-spec--7821dfc1b52e3a035aad7bdf",
  "source": {
    "blob": "a916a61746f3da9de1080d0a7793523e3f297c03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 333,
    "path": "GRWTSK/Algebra/GroupTheory/Fold/Variantdc966f67bb1eaeb8a6cac33134b5daeb1ec422dc63c91b3492ef8e066c372fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7821dfc1b52e3a035aad7bdf41df94d3771c33fc86e4eba25e7af4a651a0dea0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Fold/Variantdc966f67bb1eaeb8a6cac33134b5daeb1ec422dc63c91b3492ef8e066c372fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:153c9f30-7167-f3f0-d77c-6b59d8f04f13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toList_spec (xs : t α) : toList xs = FreeMonoid.toList (foldMap FreeMonoid.of xs) :=
  Eq.symm <|
    calc
      FreeMonoid.toList (foldMap FreeMonoid.of xs) =
          FreeMonoid.toList (foldMap FreeMonoid.of xs).reverse.reverse :=
          by simp only [List.reverse_reverse]
      _ = FreeMonoid.toList (List.foldr cons [] (foldMap FreeMonoid.of xs).reverse).reverse :=
          by simp only [List.foldr_eta]
      _ = (unop (Foldl.ofFreeMonoid (flip cons) (foldMap FreeMonoid.of xs)) []).reverse :=
          by simp [flip, List.foldr_reverse, Foldl.ofFreeMonoid, unop_op]
      _ = toList xs :=
          by rw [foldMap_hom_free (Foldl.ofFreeMonoid (flip <| @cons α))]
             simp only [toList, foldl, List.reverse_inj, Foldl.get, foldl.ofFreeMonoid_comp_of,
               Function.comp_apply]
#align traversable.to_list_spec Traversable.toList_spec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Fold/Variantdc966f67bb1eaeb8a6cac33134b5daeb1ec422dc63c91b3492ef8e066c372fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Fold/Variantdc966f67bb1eaeb8a6cac33134b5daeb1ec422dc63c91b3492ef8e066c372fb8.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a916a61746f3da9de1080d0a7793523e3f297c03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
