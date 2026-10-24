# isAnchor_of_isSquaredNearest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf152fee-cfe0-ffb2-9295-81748c0783fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab7f0aae-ac8b-2bec-b675-cf71dbae7d47",
  "kind": "theorem",
  "lexical_name": "isAnchor_of_isSquaredNearest",
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
  "slug": "isanchor-of-issquarednearest--94ad0bf613dda80ff0479e5f",
  "source": {
    "blob": "5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94ad0bf613dda80ff0479e5fe7050fca2dc8428f283ab1d623ef9e2b54c7df16",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab7f0aae-ac8b-2bec-b675-cf71dbae7d47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAnchor_of_isSquaredNearest
    {n : Nat} {x : Fin n → ℝ} {b : StableBitfield n}
    (h : IsSquaredNearest x b) :
    IsAnchor x b := by
  intro i
  have hglobal := h (flipAt b i)
  have hb :=
    Finset.sum_erase_add Finset.univ
      (fun j ↦ (x j - realize b j) ^ 2) (Finset.mem_univ i)
  have hf :=
    Finset.sum_erase_add Finset.univ
      (fun j ↦ (x j - realize (flipAt b i) j) ^ 2) (Finset.mem_univ i)
  have herase :
      (∑ j ∈ Finset.univ.erase i, (x j - realize b j) ^ 2) =
        ∑ j ∈ Finset.univ.erase i,
          (x j - realize (flipAt b i) j) ^ 2 := by
    apply Finset.sum_congr rfl
    intro j hj
    have hji : j ≠ i := by
      simpa using (Finset.mem_erase.mp hj).1
    simp [flipAt, realize, hji]
  have hcoordinate :
      (x i - realize b i) ^ 2 ≤
        (x i - realize (flipAt b i) i) ^ 2 := by
    unfold squaredPointCost at hglobal
    rw [← hb, ← hf] at hglobal
    rw [herase] at hglobal
    linarith
  cases hbi : b i
  · simp [IsNearestBit, realize, flipAt, hbi] at hcoordinate ⊢
    nlinarith
  · simp [IsNearestBit, realize, flipAt, hbi] at hcoordinate ⊢
    nlinarith

/-- The exact anchor set is precisely the complete squared-distance argmin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
