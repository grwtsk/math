# transGen_covBy_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0266b0d0-0ad4-6839-bf14-70adf6b542f3",
  "kind": "lemma",
  "lexical_name": "transGen_covBy_of_lt",
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
  "slug": "transgen-covby-of-lt--58d19f08841a9fc71419de26",
  "source": {
    "blob": "4d730f5565a12cccc48bbf985896dd1fa2ec0eac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1166,
    "line": 1144,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd87ba16046d9a11dfbad4743be36cbb8fc6d733be91113ca72347881642b78d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58d19f08841a9fc71419de26d16d8b7a200be4b5ff43de94937e972ec137ccaa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd87ba16046d9a11dfbad4743be36cbb8fc6d733be91113ca72347881642b78d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0266b0d0-0ad4-6839-bf14-70adf6b542f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1144–1166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma transGen_covBy_of_lt [Preorder α] [LocallyFiniteOrder α] {x y : α} (hxy : x < y) :
    TransGen (· ⋖ ·) x y := by
  -- We proceed by well-founded induction on the cardinality of `Ico x y`.
  -- It's impossible for the cardinality to be zero since `x < y`
  -- `Ico x y` is a nonempty finset and so contains a maximal element `z` and
  -- `Ico x z` has cardinality strictly less than the cardinality of `Ico x y`
  obtain ⟨z, hxz, hz⟩ := (Set.finite_Ico x y).exists_le_maximal <| Set.left_mem_Ico.2 hxy
  have z_card : #(Ico x z) < #(Ico x y) := card_lt_card <| ssubset_iff_of_subset
    (Ico_subset_Ico_right hz.1.2.le) |>.mpr ⟨z, mem_Ico.2 hz.1, right_notMem_Ico⟩
  /- Since `z` is maximal in `Ico x y`, `z ⋖ y`. -/
  have hzy : z ⋖ y :=
    ⟨hz.1.2, fun c hc hcy ↦ hc.not_le <| hz.2 (⟨(hz.1.1.trans_lt hc).le, hcy⟩) hc.le⟩
  by_cases hxz : x < z
  /- when `x < z`, then we may use the induction hypothesis to get a chain
  `Relation.TransGen (· ⋖ ·) x z`, which we can extend with `Relation.TransGen.tail`. -/
  · exact .tail (transGen_covBy_of_lt hxz) hzy
  /- when `¬ x < z`, then actually `z ≤ x` (not because it's a linear order, but because
  `x ≤ z`), and since `z ⋖ y` we conclude that `x ⋖ y` , then `Relation.TransGen.single`. -/
  · simp only [lt_iff_le_not_le, not_and, not_not] at hxz
    exact .single (hzy.of_le_of_lt (hxz hz.1.1) hxy)
termination_by #(Ico x y)

/-- In a locally finite preorder, `<` is the transitive closure of `⋖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd87ba16046d9a11dfbad4743be36cbb8fc6d733be91113ca72347881642b78d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd87ba16046d9a11dfbad4743be36cbb8fc6d733be91113ca72347881642b78d7.lean#L1144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d730f5565a12cccc48bbf985896dd1fa2ec0eac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
