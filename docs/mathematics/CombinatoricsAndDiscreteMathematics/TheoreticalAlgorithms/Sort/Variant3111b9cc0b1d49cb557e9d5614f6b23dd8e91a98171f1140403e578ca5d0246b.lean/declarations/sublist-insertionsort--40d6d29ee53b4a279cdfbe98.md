# sublist_insertionSort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47d4762c-f20c-293a-dddd-850c7e418cb4",
  "kind": "theorem",
  "lexical_name": "sublist_insertionSort",
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
  "slug": "sublist-insertionsort--40d6d29ee53b4a279cdfbe98",
  "source": {
    "blob": "a2849801dfccaa8fd66fa2985fee5e2cbc3d53ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 623,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40d6d29ee53b4a279cdfbe98f3fa19dea136cfc299ce3587701050627f32397f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47d4762c-f20c-293a-dddd-850c7e418cb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublist_insertionSort {l c : List α} (hr : c.Pairwise r) (hc : c <+ l) :
    c <+ insertionSort r l := by
  induction l generalizing c with
  | nil         => simp_all only [sublist_nil, insertionSort, Sublist.refl]
  | cons _ _ ih =>
    cases hc with
    | cons  _ h => exact ih hr h |>.trans (sublist_orderedInsert ..)
    | cons₂ _ h =>
      obtain ⟨hr, hp⟩ := pairwise_cons.mp hr
      exact cons_sublist_orderedInsert (ih hp h) hr

/--
Another statement of stability of insertion sort.
If a pair `[a, b]` is a sublist of `l` and `r a b`,
then `[a, b]` is still a sublist of `insertionSort r l`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2849801dfccaa8fd66fa2985fee5e2cbc3d53ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
