# isAnchor_of_isSquaredNearest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8248e99b-7bcf-1854-f20b-7d20ce266a56",
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
  "slug": "isanchor-of-issquarednearest--c020e152da854d92dbace389",
  "source": {
    "blob": "3e65414aa5b98c2b24e0235b76991636dc46a77a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c020e152da854d92dbace38906b54d01f08ceef6c072d0a106d0408b9e182aed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8248e99b-7bcf-1854-f20b-7d20ce266a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–168.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e65414aa5b98c2b24e0235b76991636dc46a77a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
