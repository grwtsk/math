# exists_max_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a7e71d4dc54f7648e1da52e067c1302d689a361",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa1e6645-0759-1aff-0faa-a0698ef31fdb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab3ce584-2176-11b0-6280-a59d31d3bb70",
  "kind": "theorem",
  "lexical_name": "exists_max_im",
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
  "slug": "exists-max-im--1d1dbd2bdfd842e9ad8a13af",
  "source": {
    "blob": "4a7e71d4dc54f7648e1da52e067c1302d689a361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 278,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d1dbd2bdfd842e9ad8a13af81f4e3c160cfc0a5e62157af82ce0c3bc2216c52",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab3ce584-2176-11b0-6280-a59d31d3bb70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_max_im : ∃ g : SL(2, ℤ), ∀ g' : SL(2, ℤ), (g' • z).im ≤ (g • z).im := by
  let s : Set (Fin 2 → ℤ) := {cd | IsCoprime (cd 0) (cd 1)}
  have hs : s.Nonempty := ⟨![1, 1], isCoprime_one_left⟩
  obtain ⟨p, hp_coprime, hp⟩ :=
    Filter.Tendsto.exists_within_forall_le hs (tendsto_normSq_coprime_pair z)
  obtain ⟨g, -, hg⟩ := bottom_row_surj hp_coprime
  refine ⟨g, fun g' => ?_⟩
  rw [ModularGroup.im_smul_eq_div_normSq, ModularGroup.im_smul_eq_div_normSq,
    div_le_div_iff_of_pos_left]
  · simpa [← hg] using! hp (g' 1) (bottom_row_coprime g')
  · exact z.im_pos
  · exact normSq_denom_pos g' z.im_ne_zero
  · exact normSq_denom_pos g z.im_ne_zero

/-- Given `z : ℍ` and a bottom row `(c,d)`, among the `g : SL(2,ℤ)` with this bottom row, minimize
  `|(g•z).re|`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7e71d4dc54f7648e1da52e067c1302d689a361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
