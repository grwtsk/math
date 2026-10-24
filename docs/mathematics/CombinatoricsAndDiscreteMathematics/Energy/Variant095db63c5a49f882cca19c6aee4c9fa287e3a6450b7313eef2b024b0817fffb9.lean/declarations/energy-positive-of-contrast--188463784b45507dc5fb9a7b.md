# energy_positive_of_contrast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22aac1fd9178eab356a5e2de4c689e5d0eec4971",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91821c1e-4b8f-9832-ec63-a12ac68a04aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09e36279-14a2-ea2a-eb7f-aaad574b0955",
  "kind": "theorem",
  "lexical_name": "energy_positive_of_contrast",
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
  "slug": "energy-positive-of-contrast--188463784b45507dc5fb9a7b",
  "source": {
    "blob": "22aac1fd9178eab356a5e2de4c689e5d0eec4971",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:188463784b45507dc5fb9a7bc7683b5434b6b66fd637859b55998977e96f89ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Energy/Variant095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09e36279-14a2-ea2a-eb7f-aaad574b0955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_positive_of_contrast {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (ε : ℝ)
    (X : SpectralTensor s k)
    (hε : 0 < ε)
    (h : HasChannelContrast G ε X)
    (hedge : ∃ c d, G.Adj c d) :
    0 < energy G X := by
  classical
  rcases hedge with ⟨c, d, hadj⟩
  rcases h c d hadj with ⟨q, hq⟩
  have h_abs_pos : 0 < |X.value c q - X.value d q| :=
    lt_of_lt_of_le hε hq
  have hdiff_ne : X.value c q - X.value d q ≠ 0 :=
    (abs_pos.mp h_abs_pos)
  have hterm_pos : 0 < (X.value c q - X.value d q) ^ 2 := by
    exact sq_pos_of_ne_zero hdiff_ne
  have hterm_le_edge :
      (X.value c q - X.value d q) ^ 2 ≤ edgeChannelEnergy X c d := by
    unfold edgeChannelEnergy
    exact Finset.single_le_sum
      (fun q' _ => sq_nonneg (X.value c q' - X.value d q'))
      (by simp)
  have hedge_energy_pos : 0 < edgeChannelEnergy X c d :=
    lt_of_lt_of_le hterm_pos hterm_le_edge
  let nd : {d : Cell s // G.Adj c d} := ⟨d, hadj⟩
  have hneighbor_le_cell :
      edgeChannelEnergy X c d ≤ cellEnergy G X c := by
    unfold cellEnergy
    letI := G.finite_neighbors c
    let nd : {d : Cell s // G.Adj c d} := ⟨d, hadj⟩
    exact Finset.single_le_sum
      (s := (Finset.univ : Finset {d : Cell s // G.Adj c d}))
      (f := fun d' => edgeChannelEnergy X c d'.1)
      (fun d' _ => edgeChannelEnergy_nonneg X c d'.1)
      (show nd ∈ (Finset.univ : Finset {d : Cell s // G.Adj c d}) by simp)
  have hcell_pos : 0 < cellEnergy G X c :=
    lt_of_lt_of_le hedge_energy_pos hneighbor_le_cell
  have hcell_le_energy :
      cellEnergy G X c ≤ energy G X := by
    unfold energy
    exact Finset.single_le_sum
      (fun c' _ => cellEnergy_nonneg G X c')
      (by simp)
  exact lt_of_lt_of_le hcell_pos hcell_le_energy

end Spectral
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Energy/Variant095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22aac1fd9178eab356a5e2de4c689e5d0eec4971` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
