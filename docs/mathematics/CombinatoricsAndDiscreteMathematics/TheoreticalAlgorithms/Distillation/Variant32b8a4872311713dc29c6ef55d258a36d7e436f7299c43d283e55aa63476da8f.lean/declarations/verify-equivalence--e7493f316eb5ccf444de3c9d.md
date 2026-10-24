# verify_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58d40cf8b4e8fe6710437fe57ce0dac4a499ed75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae24434c-d2cc-a9d9-32e2-08975476e46d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9b965a7-4345-e4b7-818f-d18ea204ae6c",
  "kind": "theorem",
  "lexical_name": "verify_equivalence",
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
  "slug": "verify-equivalence--e7493f316eb5ccf444de3c9d",
  "source": {
    "blob": "58d40cf8b4e8fe6710437fe57ce0dac4a499ed75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 275,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7493f316eb5ccf444de3c9d50aa56b183cee62e8bf79abd52ac7dbfd3c41121",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9b965a7-4345-e4b7-818f-d18ea204ae6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_equivalence (teacher student : SequentialNet)
    (domain : IntervalVector) (eps : ℚ) (prec : Int)
    (x : List ℝ)
    (hprec : prec ≤ 0)
    (hwf_t : teacher.WellFormed x.length)
    (hwf_s : student.WellFormed x.length)
    (h_dom_len : x.length = domain.length)
    (h_mem : ∀ i (hi : i < domain.length), x[i]'(h_dom_len ▸ hi) ∈ domain[i]'hi)
    (h_cert : checkEquivalence teacher student domain eps prec = true) :
    let t_out := SequentialNet.forwardReal teacher x
    let s_out := SequentialNet.forwardReal student x
    let t_int := SequentialNet.forwardInterval teacher domain prec
    let s_int := SequentialNet.forwardInterval student domain prec
    -- Dimensions match
    t_int.length = s_int.length ∧
    -- All outputs are within eps
    ∀ i (hi_t : i < t_int.length) (hi_s : i < s_int.length),
      |t_out[i]'((SequentialNet.forwardLength_aux teacher.layers x domain h_dom_len hwf_t prec) ▸ hi_t) -
       s_out[i]'((SequentialNet.forwardLength_aux student.layers x domain h_dom_len hwf_s prec) ▸ hi_s)| ≤ (eps : ℝ) := by
  -- Get dimension equality
  have h_dim := checkEquivalence_dims h_cert

  -- Interval soundness
  have ⟨hT_len, hT_mem⟩ := SequentialNet.mem_forwardInterval h_dom_len hwf_t h_mem prec hprec
  have ⟨hS_len, hS_mem⟩ := SequentialNet.mem_forwardInterval h_dom_len hwf_s h_mem prec hprec

  constructor
  · exact h_dim
  · intro i hi_t hi_s

    -- Get membership in difference
    have hdiff := mem_subVectors hT_len hS_len hT_mem hS_mem

    -- The diff vector
    let diff := subVectors
      (SequentialNet.forwardInterval teacher domain prec)
      (SequentialNet.forwardInterval student domain prec)

    -- Index bound for diff
    have hi_diff : i < diff.length := by
      have hlen := subVectors_length (SequentialNet.forwardInterval teacher domain prec)
                                     (SequentialNet.forwardInterval student domain prec)
      rw [hlen, h_dim, Nat.min_self]
      exact h_dim ▸ hi_t

    -- Get membership for index i
    have hdiff_i := hdiff i hi_diff

    -- Apply the bounded check
    unfold checkEquivalence at h_cert
    by_cases hdim_eq : (SequentialNet.forwardInterval teacher domain prec).length =
                       (SequentialNet.forwardInterval student domain prec).length
    · simp only [bne_iff_ne, ne_eq, hdim_eq, not_true_eq_false, ↓reduceIte,
                 isBoundedBy, List.all_eq_true] at h_cert
      have hbound := h_cert (diff[i]) (List.getElem_mem hi_diff)
      exact intervalBoundedBy_spec hdiff_i hbound
    · simp only [bne_iff_ne, ne_eq, hdim_eq, not_false_eq_true, ↓reduceIte] at h_cert
      exact absurd h_cert (by decide)

end LeanCert.ML.Distillation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58d40cf8b4e8fe6710437fe57ce0dac4a499ed75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
