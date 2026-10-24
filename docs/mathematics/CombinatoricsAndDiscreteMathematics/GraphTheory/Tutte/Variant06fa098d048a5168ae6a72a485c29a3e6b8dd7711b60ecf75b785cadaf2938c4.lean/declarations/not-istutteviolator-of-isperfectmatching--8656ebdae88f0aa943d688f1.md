# not_isTutteViolator_of_isPerfectMatching

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d09d407176ff4701bac47e5494a1f302a79862b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3386f793-f623-2b31-c96c-1f5411c49b12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:221cf5bf-98b8-cabd-0657-03ffe162e40d",
  "kind": "lemma",
  "lexical_name": "not_isTutteViolator_of_isPerfectMatching",
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
  "slug": "not-istutteviolator-of-isperfectmatching--8656ebdae88f0aa943d688f1",
  "source": {
    "blob": "d09d407176ff4701bac47e5494a1f302a79862b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8656ebdae88f0aa943d688f1d8e7869e3a593c2ec16a59c2c6c174d3f691e395",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:221cf5bf-98b8-cabd-0657-03ffe162e40d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_isTutteViolator_of_isPerfectMatching {M : Subgraph G} (hM : M.IsPerfectMatching)
    (u : Set V) :
    ¬G.IsTutteViolator u := by
  choose f hf g hgf hg using ConnectedComponent.odd_matches_node_outside hM (u := u)
  have hfinj : f.Injective := fun c d hcd ↦ by
    replace hcd : g c = g d := Subtype.val_injective <| hM.1.eq_of_adj_right (hgf c) (hcd ▸ hgf d)
    exact Subtype.val_injective <| ConnectedComponent.eq_of_common_vertex (hg c) (hcd ▸ hg d)
  simpa [IsTutteViolator] using
    Finite.card_le_of_injective (fun c ↦ ⟨f c, hf c⟩) (fun c d ↦ by simp [hfinj.eq_iff])

open scoped symmDiff

/-- This lemma constructs a perfect matching on `G` from two near-matchings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d09d407176ff4701bac47e5494a1f302a79862b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
