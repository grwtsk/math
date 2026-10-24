# homotopicFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f8e6500b836927d0425c1820f907956a8cf2aff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0696f70d-daa6-dcf4-b4b5-6941c71c5c77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0876c058-e7c0-b0e3-369f-e7cb1d69ad92",
  "kind": "theorem",
  "lexical_name": "homotopicFrom",
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
  "slug": "homotopicfrom--38b3e675811b76edad98758c",
  "source": {
    "blob": "7f8e6500b836927d0425c1820f907956a8cf2aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 295,
    "path": "GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38b3e675811b76edad98758c1d00d799396721c65de49eec464d2726e50d6ffd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0876c058-e7c0-b0e3-369f-e7cb1d69ad92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homotopicFrom (i : N) {p q : Ω^ N X x} :
    (toLoop i p).Homotopic (toLoop i q) → Homotopic p q := by
  refine Nonempty.map fun H => ⟨⟨homotopyFrom i H, ?_, ?_⟩, ?_⟩
  pick_goal 3
  · rintro t y ⟨j, jH⟩
    erw [homotopyFrom_apply]
    obtain rfl | h := eq_or_ne j i
    · simp only [Prod.map_apply, id_eq, funSplitAt_apply, Function.uncurry_apply_pair]
      rw [H.eq_fst]
      exacts [congr_arg p ((Cube.splitAt j).left_inv _), jH]
    · rw [p.2 _ ⟨j, jH⟩]; apply boundary; exact ⟨⟨j, h⟩, jH⟩
  all_goals
    intro
    apply (homotopyFrom_apply _ _ _).trans
    simp only [Prod.map_apply, id_eq, funSplitAt_apply,
      Function.uncurry_apply_pair, ContinuousMap.HomotopyWith.apply_zero,
      ContinuousMap.HomotopyWith.apply_one, ne_eq, Path.coe_toContinuousMap, toLoop_apply_coe,
      ContinuousMap.curry_apply, ContinuousMap.comp_apply]
    first
    | apply congr_arg p
    | apply congr_arg q
    apply (Cube.splitAt i).left_inv

/-- Concatenation of two `GenLoop`s along the `i`th coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f8e6500b836927d0425c1820f907956a8cf2aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
