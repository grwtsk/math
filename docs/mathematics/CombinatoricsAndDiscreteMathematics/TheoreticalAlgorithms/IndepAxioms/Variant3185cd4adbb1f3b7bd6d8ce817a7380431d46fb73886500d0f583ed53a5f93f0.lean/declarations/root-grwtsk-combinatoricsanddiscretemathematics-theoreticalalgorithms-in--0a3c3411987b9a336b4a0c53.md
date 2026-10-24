# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndepMatroid.Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.Matroid.existsMaximalSubsetProperty_of_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f67dcae-ceff-f10f-82e3-9d26bb2d4dd8",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndepMatroid.Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.Matroid.existsMaximalSubsetProperty_of_bdd",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-in--0a3c3411987b9a336b4a0c53",
  "source": {
    "blob": "043149e64bdeee6918304be3de3391dc409ae8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 313,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a3c3411987b9a336b4a0c538a077f17bd58797eb9b674eb0b8380602e85d3d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f67dcae-ceff-f10f-82e3-9d26bb2d4dd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndepMatroid.Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.Matroid.existsMaximalSubsetProperty_of_bdd {P : Set α → Prop}
    (hP : ∃ (n : ℕ), ∀ Y, P Y → Y.encard ≤ n) (X : Set α) : ExistsMaximalSubsetProperty P X := by
  obtain ⟨n, hP⟩ := hP
  rintro I hI hIX
  have hfin : Set.Finite (ncard '' {Y | P Y ∧ I ⊆ Y ∧ Y ⊆ X}) := by
    rw [finite_iff_bddAbove, bddAbove_def]
    simp_rw [ENat.le_coe_iff] at hP
    use n
    rintro x ⟨Y, ⟨hY,-,-⟩, rfl⟩
    obtain ⟨n₀, heq, hle⟩ := hP Y hY
    rwa [ncard_def, heq, ENat.toNat_coe]
  obtain ⟨Y, ⟨hY, hIY, hYX⟩, hY'⟩ :=
    Finite.exists_maximalFor' ncard _ hfin ⟨I, hI, rfl.subset, hIX⟩

  refine ⟨Y, hIY, ⟨hY, hYX⟩, fun K ⟨hPK, hKX⟩ hYK ↦ ?_⟩
  have hKfin : K.Finite := finite_of_encard_le_coe (hP K hPK)

  refine (eq_of_subset_of_ncard_le hYK ?_ hKfin).symm.subset
  exact hY' ⟨hPK, hIY.trans hYK, hKX⟩ (ncard_le_ncard hYK hKfin)

/-- If there is an absolute upper bound on the size of an independent set, then the maximality axiom
  isn't needed to define a matroid by independent sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant3185cd4adbb1f3b7bd6d8ce817a7380431d46fb73886500d0f583ed53a5f93f0.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `043149e64bdeee6918304be3de3391dc409ae8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
