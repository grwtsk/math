# energy_positive_of_contrast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c659c5a-12a2-3864-7192-da48c4d92628",
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
  "slug": "energy-positive-of-contrast--ba54f734768c556a0a2bd5b0",
  "source": {
    "blob": "7d8f53c12a2fafc0099087635eae0b9b989b4d5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/StrictPositivityFromContrast.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba54f734768c556a0a2bd5b0b5e1a5e8174ffa136fa2c2c0d901f882c00a8f76",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/StrictPositivityFromContrast.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c659c5a-12a2-3864-7192-da48c4d92628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–100.

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

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpectralGraphTheory.OrientedFiniteGraphEnergy.Variant095db63c5a49f882
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/StrictPositivityFromContrast.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/StrictPositivityFromContrast.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d8f53c12a2fafc0099087635eae0b9b989b4d5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
