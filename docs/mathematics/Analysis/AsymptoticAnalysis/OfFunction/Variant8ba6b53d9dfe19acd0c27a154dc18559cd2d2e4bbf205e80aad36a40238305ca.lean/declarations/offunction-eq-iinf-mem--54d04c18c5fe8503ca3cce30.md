# ofFunction_eq_iInf_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "306abb10bfde42fd6118d53c85b8451433cc0784",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8ba6b53d9dfe19acd0c27a154dc18559cd2d2e4bbf205e80aad36a40238305ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab1e950d-8cb6-cfa9-2367-51335ebfbc21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a92aa297-601f-809e-7e06-c3282e3b4687",
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
  "slug": "offunction-eq-iinf-mem--54d04c18c5fe8503ca3cce30",
  "source": {
    "blob": "306abb10bfde42fd6118d53c85b8451433cc0784",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 105,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Variant8ba6b53d9dfe19acd0c27a154dc18559cd2d2e4bbf205e80aad36a40238305ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54d04c18c5fe8503ca3cce309e973bc56de12dc4853c8322000118bd0cde9349",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OfFunction/Variant8ba6b53d9dfe19acd0c27a154dc18559cd2d2e4bbf205e80aad36a40238305ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a92aa297-601f-809e-7e06-c3282e3b4687`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–122.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OfFunction/Variant8ba6b53d9dfe19acd0c27a154dc18559cd2d2e4bbf205e80aad36a40238305ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Variant8ba6b53d9dfe19acd0c27a154dc18559cd2d2e4bbf205e80aad36a40238305ca.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `306abb10bfde42fd6118d53c85b8451433cc0784` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
