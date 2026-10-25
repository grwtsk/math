# mulHeight_sumElim_zero_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "509d6cc988e2f107bedb7dd54dee013acf099c31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 394,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:522c2bd5-3f0a-16f9-f30e-99cf619587b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be63fb14-c712-0f95-8e11-70019cdd8f79",
  "kind": "lemma",
  "lexical_name": "mulHeight_sumElim_zero_eq",
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
  "slug": "mulheight-sumelim-zero-eq--4ec7eb7ba5393da96be88a17",
  "source": {
    "blob": "509d6cc988e2f107bedb7dd54dee013acf099c31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 394,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ec7eb7ba5393da96be88a17cb83aa342b1988b307ab9e9de95e018788d327ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be63fb14-c712-0f95-8e11-70019cdd8f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulHeight_sumElim_zero_eq (x : ι → K) :
    mulHeight (Sum.elim x (0 : ι' → K)) = mulHeight x := by
  rcases eq_or_ne x 0 with rfl | hx
  · simp
  obtain ⟨i, hi⟩ := ne_iff.mp hx
  have : Nonempty ι := .intro i
  have hx' : Sum.elim x (0 : ι' → K) ≠ 0 := ne_iff.mpr ⟨.inl i, by simpa using hi⟩
  rw [mulHeight_eq hx, mulHeight_eq hx']
  have H (v : AbsoluteValue K ℝ) : ⨆ j, v (Sum.elim x (0 : ι' → K) j) = ⨆ i, v (x i) := by
    refine le_antisymm ?_ <| ciSup_le fun i ↦ Finite.le_ciSup_of_le (.inl i) le_rfl
    refine ciSup_le fun j ↦ ?_
    cases j with
    | inl i => exact Finite.le_ciSup_of_le i le_rfl
    | inr _ => simpa using Real.iSup_nonneg_of_nonnegHomClass v _
  congr <;> ext1 v
  · exact H v
  · exact H v.val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `509d6cc988e2f107bedb7dd54dee013acf099c31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
