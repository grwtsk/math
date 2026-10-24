# sum_Ico_eq_card_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e8fcfcba64e50763ab86f4f1b4a5fb820074a59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cebd937-1708-2331-ca0b-b226df3c64d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f79aae3d-45bb-6904-bc9f-455721ccd4a1",
  "kind": "theorem",
  "lexical_name": "sum_Ico_eq_card_lt",
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
  "slug": "sum-ico-eq-card-lt--5bdbbb92ae61e1d3f75e6c59",
  "source": {
    "blob": "9e8fcfcba64e50763ab86f4f1b4a5fb820074a59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 160,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bdbbb92ae61e1d3f75e6c598dca6befd1ac5ce797f01db34f3ae0609c2d250a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f79aae3d-45bb-6904-bc9f-455721ccd4a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_Ico_eq_card_lt {p q : ℕ} :
    ∑ a ∈ Ico 1 (p / 2).succ, a * q / p =
      #{x ∈ Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ | x.2 * p ≤ x.1 * q} :=
  if hp0 : p = 0 then by simp [hp0, Finset.ext_iff]
  else
    calc
      ∑ a ∈ Ico 1 (p / 2).succ, a * q / p =
          ∑ a ∈ Ico 1 (p / 2).succ, #{x ∈ Ico 1 (q / 2).succ | x * p ≤ a * q} :=
        Finset.sum_congr rfl fun x hx => div_eq_filter_card (Nat.pos_of_ne_zero hp0) <|
          calc
            x * q / p ≤ p / 2 * q / p := by have := le_of_lt_succ (mem_Ico.mp hx).2; gcongr
            _ ≤ _ := Nat.div_mul_div_le_div _ _ _
      _ = _ := by
        rw [← card_sigma]
        exact card_nbij' (fun a ↦ ⟨a.1, a.2⟩) (fun a ↦ ⟨a.1, a.2⟩)
          (by simp +contextual only [mem_filter, mem_sigma, and_self_iff,
            forall_true_iff, mem_product])
          (by simp +contextual only [mem_filter, mem_sigma, and_self_iff,
            forall_true_iff, mem_product]) (fun _ _ ↦ rfl) (fun _ _ ↦ rfl)

/-- Each of the sums in this lemma is the cardinality of the set of integer points in each of the
  two triangles formed by the diagonal of the rectangle `(0, p/2) × (0, q/2)`. Adding them
  gives the number of points in the rectangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variantd9886c436462e2e8eca74c3aa7f4a5425ebda33c148d4166ec7a70aef48d737a.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e8fcfcba64e50763ab86f4f1b4a5fb820074a59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
