# Kernel.indep_iSup_directed_limsup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1da0159cee3b91390a5393bf32b4f4371659c03c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/105a7b980187ff16e4e149dc0fef16c928b1c468c9b409e98eed3d78cc5df129.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6cf2264-c6de-9900-30fe-f5520a587519",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50679353-dc9d-905a-b226-175aee0d9867",
  "kind": "theorem",
  "lexical_name": "Kernel.indep_iSup_directed_limsup",
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
  "slug": "kernel-indep-isup-directed-limsup--83f99ff4ab1864fa0b88392b",
  "source": {
    "blob": "1da0159cee3b91390a5393bf32b4f4371659c03c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 130,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant105a7b980187ff16e4e149dc0fef16c928b1c468c9b409e98eed3d78cc5df129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83f99ff4ab1864fa0b88392bdc16233d0ff9ce93184fc5bac7fb2e821ba38e8c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant105a7b980187ff16e4e149dc0fef16c928b1c468c9b409e98eed3d78cc5df129.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50679353-dc9d-905a-b226-175aee0d9867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Kernel.indep_iSup_directed_limsup (h_le : ∀ n, s n ≤ m0) (h_indep : iIndep s κ μα)
    (hf : ∀ t, p t → tᶜ ∈ f) (hns : Directed (· ≤ ·) ns) (hnsp : ∀ a, p (ns a)) :
    Indep (⨆ a, ⨆ n ∈ ns a, s n) (limsup s f) κ μα := by
  rcases eq_or_ne μα 0 with rfl | hμ
  · simp
  obtain ⟨η, η_eq, hη⟩ : ∃ (η : Kernel α Ω), κ =ᵐ[μα] η ∧ IsMarkovKernel η :=
    exists_ae_eq_isMarkovKernel h_indep.ae_isProbabilityMeasure hμ
  replace h_indep := h_indep.congr η_eq
  apply Indep.congr (Filter.EventuallyEq.symm η_eq)
  apply indep_iSup_of_directed_le
  · exact fun a => indep_biSup_limsup h_le h_indep hf (hnsp a)
  · exact fun a => iSup₂_le fun n _ => h_le n
  · exact limsup_le_iSup.trans (iSup_le h_le)
  · intro a b
    obtain ⟨c, hc⟩ := hns a b
    refine ⟨c, ?_, ?_⟩ <;> refine iSup_mono fun n => iSup_mono' fun hn => ⟨?_, le_rfl⟩
    · exact hc.1 hn
    · exact hc.2 hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant105a7b980187ff16e4e149dc0fef16c928b1c468c9b409e98eed3d78cc5df129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant105a7b980187ff16e4e149dc0fef16c928b1c468c9b409e98eed3d78cc5df129.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1da0159cee3b91390a5393bf32b4f4371659c03c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
