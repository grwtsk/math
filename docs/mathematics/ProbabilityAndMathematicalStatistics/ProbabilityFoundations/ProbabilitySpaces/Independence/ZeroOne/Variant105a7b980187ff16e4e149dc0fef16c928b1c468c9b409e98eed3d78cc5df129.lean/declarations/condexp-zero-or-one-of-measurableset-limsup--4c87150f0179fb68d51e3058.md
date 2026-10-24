# condExp_zero_or_one_of_measurableSet_limsup

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
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/105a7b980187ff16e4e149dc0fef16c928b1c468c9b409e98eed3d78cc5df129.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:234dc7ab-564b-6690-7f6c-df9ca75376cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d056a91-a503-dc18-9335-ad067711f1a2",
  "kind": "theorem",
  "lexical_name": "condExp_zero_or_one_of_measurableSet_limsup",
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
  "slug": "condexp-zero-or-one-of-measurableset-limsup--4c87150f0179fb68d51e3058",
  "source": {
    "blob": "1da0159cee3b91390a5393bf32b4f4371659c03c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 226,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant105a7b980187ff16e4e149dc0fef16c928b1c468c9b409e98eed3d78cc5df129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c87150f0179fb68d51e3058645685cd1795fed53bea6016c630cd93c3e685a5",
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

Occurrence: `result:0d056a91-a503-dc18-9335-ad067711f1a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_zero_or_one_of_measurableSet_limsup [StandardBorelSpace Ω]
    (hm : m ≤ m0) [IsFiniteMeasure μ]
    (h_le : ∀ n, s n ≤ m0) (h_indep : iCondIndep m hm s μ)
    (hf : ∀ t, p t → tᶜ ∈ f) (hns : Directed (· ≤ ·) ns) (hnsp : ∀ a, p (ns a))
    (hns_univ : ∀ n, ∃ a, n ∈ ns a) {t : Set Ω} (ht_tail : MeasurableSet[limsup s f] t) :
    ∀ᵐ ω ∂μ, (μ⟦t | m⟧) ω = 0 ∨ (μ⟦t | m⟧) ω = 1 := by
  have h := ae_of_ae_trim hm
    (Kernel.measure_zero_or_one_of_measurableSet_limsup h_le h_indep hf hns hnsp hns_univ ht_tail)
  have ht : MeasurableSet t := limsup_le_iSup.trans (iSup_le h_le) t ht_tail
  filter_upwards [condExpKernel_ae_eq_condExp hm ht, h] with ω hω_eq hω
  rwa [← hω_eq, measureReal_eq_zero_iff, measureReal_def, ENNReal.toReal_eq_one_iff]

@[deprecated (since := "2025-01-21")]
alias condexp_zero_or_one_of_measurableSet_limsup := condExp_zero_or_one_of_measurableSet_limsup

end Abstract

section AtTop

variable [SemilatticeSup ι] [NoMaxOrder ι] [Nonempty ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant105a7b980187ff16e4e149dc0fef16c928b1c468c9b409e98eed3d78cc5df129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant105a7b980187ff16e4e149dc0fef16c928b1c468c9b409e98eed3d78cc5df129.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1da0159cee3b91390a5393bf32b4f4371659c03c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
