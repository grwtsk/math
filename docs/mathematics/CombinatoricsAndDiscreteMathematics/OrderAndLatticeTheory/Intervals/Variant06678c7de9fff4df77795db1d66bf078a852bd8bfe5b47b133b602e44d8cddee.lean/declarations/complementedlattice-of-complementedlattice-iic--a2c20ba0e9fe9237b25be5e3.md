# complementedLattice_of_complementedLattice_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81f59d54ce94b2f7b793711be4f4e225f442621a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06678c7de9fff4df77795db1d66bf078a852bd8bfe5b47b133b602e44d8cddee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86e7cfe6-9b5a-68f7-d896-126399557d56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec0183b9-7ce0-04e1-3851-7590169bd83a",
  "kind": "theorem",
  "lexical_name": "complementedLattice_of_complementedLattice_Iic",
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
  "slug": "complementedlattice-of-complementedlattice-iic--a2c20ba0e9fe9237b25be5e3",
  "source": {
    "blob": "81f59d54ce94b2f7b793711be4f4e225f442621a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant06678c7de9fff4df77795db1d66bf078a852bd8bfe5b47b133b602e44d8cddee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2c20ba0e9fe9237b25be5e34c9e4bc343e8290ce3e954fa476b784fe961a833",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant06678c7de9fff4df77795db1d66bf078a852bd8bfe5b47b133b602e44d8cddee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec0183b9-7ce0-04e1-3851-7590169bd83a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complementedLattice_of_complementedLattice_Iic
    [IsModularLattice α] [IsCompactlyGenerated α]
    {s : Set ι} {f : ι → α}
    (h : ∀ i ∈ s, ComplementedLattice <| Iic (f i))
    (h' : ⨆ i ∈ s, f i = ⊤) :
    ComplementedLattice α := by
  apply complementedLattice_of_sSup_atoms_eq_top
  have : ∀ i ∈ s, ∃ t : Set α, f i = sSup t ∧ ∀ a ∈ t, IsAtom a := fun i hi ↦ by
    replace h := complementedLattice_iff_isAtomistic.mp (h i hi)
    obtain ⟨u, hu, hu'⟩ := eq_sSup_atoms (⊤ : Iic (f i))
    refine ⟨(↑) '' u, ?_, ?_⟩
    · replace hu : f i = ↑(sSup u) := Subtype.ext_iff.mp hu
      simp_rw [hu, Iic.coe_sSup]
    · rintro b ⟨⟨a, ha'⟩, ha, rfl⟩
      exact IsAtom.of_isAtom_coe_Iic (hu' _ ha)
  choose t ht ht' using this
  let u : Set α := ⋃ i, ⋃ hi : i ∈ s, t i hi
  have hu₁ : u ⊆ {a | IsAtom a} := by
    rintro a ⟨-, ⟨i, rfl⟩, ⟨-, ⟨hi, rfl⟩, ha : a ∈ t i hi⟩⟩
    exact ht' i hi a ha
  have hu₂ : sSup u = ⨆ i ∈ s, f i := by simp_rw [u, sSup_iUnion, biSup_congr' ht]
  rw [eq_top_iff, ← h', ← hu₂]
  exact sSup_le_sSup hu₁
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant06678c7de9fff4df77795db1d66bf078a852bd8bfe5b47b133b602e44d8cddee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant06678c7de9fff4df77795db1d66bf078a852bd8bfe5b47b133b602e44d8cddee.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f59d54ce94b2f7b793711be4f4e225f442621a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
