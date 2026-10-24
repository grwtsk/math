# ofFunction_eq_iInf_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31bfdd8c-23e2-e1fe-8e7f-9e000df67d1d",
  "kind": "theorem",
  "lexical_name": "ofFunction_eq_iInf_mem",
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
  "slug": "offunction-eq-iinf-mem--f81efcca5ba952def802263d",
  "source": {
    "blob": "8f896a76230c86e4b849d924fcac25c248105b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 113,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f81efcca5ba952def802263d0ab643a7446afd6224af7a2c9b571985b4459f85",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31bfdd8c-23e2-e1fe-8e7f-9e000df67d1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofFunction_eq_iInf_mem {P : Set α → Prop} (m_top : ∀ s, ¬ P s → m s = ∞) (s : Set α) :
    OuterMeasure.ofFunction m m_empty s =
      ⨅ (t : ℕ → Set α) (_ : ∀ i, P (t i)) (_ : s ⊆ ⋃ i, t i), ∑' i, m (t i) := by
  rw [OuterMeasure.ofFunction_apply]
  apply le_antisymm
  · exact le_iInf fun t ↦ le_iInf fun _ ↦ le_iInf fun h ↦ iInf₂_le _ (by exact h)
  · simp_rw [le_iInf_iff]
    refine fun t ht_subset ↦ iInf_le_of_le t ?_
    by_cases ht : ∀ i, P (t i)
    · exact iInf_le_of_le ht (iInf_le_of_le ht_subset le_rfl)
    · simp only [ht, not_false_eq_true, iInf_neg, top_le_iff]
      push Not at ht
      obtain ⟨i, hti_notMem⟩ := ht
      have hfi_top : m (t i) = ∞ := m_top _ hti_notMem
      exact ENNReal.tsum_eq_top_of_eq_top ⟨i, hfi_top⟩

variable {m m_empty}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Variant3a85723a2be82b88a0772da27e1f051dac6bcc54e8420e6c9c36eab85b19a2e0.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f896a76230c86e4b849d924fcac25c248105b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
