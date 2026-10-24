# applyId_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b97a1675a83e4cddc8ef8f230c9f785e80f96e15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4d3f5c6fa2b04b844d77be3b927520a05e31accfc2e3ac44eae207c24057e8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b443191d-8815-569a-13a5-ddfb99a11512",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6c87b89-7467-dd2f-92a9-9fefdaf8bfd4",
  "kind": "theorem",
  "lexical_name": "applyId_mem_iff",
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
  "slug": "applyid-mem-iff--2ea87bb02d4a29d41a7c9bbb",
  "source": {
    "blob": "b97a1675a83e4cddc8ef8f230c9f785e80f96e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantc4d3f5c6fa2b04b844d77be3b927520a05e31accfc2e3ac44eae207c24057e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ea87bb02d4a29d41a7c9bbb1bbbd5a2d5d64f9ec23ea7238bd7806268a03b7c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantc4d3f5c6fa2b04b844d77be3b927520a05e31accfc2e3ac44eae207c24057e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6c87b89-7467-dd2f-92a9-9fefdaf8bfd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyId_mem_iff [DecidableEq α] {xs ys : List α} (h₀ : List.Nodup xs) (h₁ : xs ~ ys)
    (x : α) : List.applyId.{u} (xs.zip ys) x ∈ ys ↔ x ∈ xs := by
  simp only [List.applyId]
  cases h₃ : List.dlookup x (List.map Prod.toSigma (xs.zip ys)) with
  | none =>
    dsimp [Option.getD]
    rw [h₁.mem_iff]
  | some val =>
    have h₂ : ys.Nodup := h₁.nodup_iff.1 h₀
    replace h₁ : xs.length = ys.length := h₁.length_eq
    dsimp
    induction xs generalizing ys with
    | nil => contradiction
    | cons x' xs xs_ih =>
      rcases ys with - | ⟨y, ys⟩
      · cases h₃
      simp only [zip_cons_cons, map_cons, Prod.toSigma_mk, dlookup, eq_rec_constant,
        dite_eq_ite] at h₃
      split_ifs at h₃ with h
      · rw [Option.some_inj] at h₃
        subst x'; subst val
        simp only [List.mem_cons, true_or]
      · obtain - | ⟨h₀, h₅⟩ := h₀
        obtain - | ⟨h₂, h₄⟩ := h₂
        have h₆ := Nat.succ.inj h₁
        specialize xs_ih h₅ h₃ h₄ h₆
        simp only [Ne.symm h, xs_ih, List.mem_cons]
        suffices val ∈ ys by tauto
        rw [← Option.mem_def, List.mem_dlookup_iff] at h₃
        · simp only [Prod.toSigma, List.mem_map, Prod.exists] at h₃
          rcases h₃ with ⟨a, b, h₃, h₄, h₅⟩
          apply (List.of_mem_zip h₃).2
        simp only [List.NodupKeys, List.keys, comp_def, Prod.fst_toSigma, List.map_map]
        rwa [List.map_fst_zip (le_of_eq h₆)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantc4d3f5c6fa2b04b844d77be3b927520a05e31accfc2e3ac44eae207c24057e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantc4d3f5c6fa2b04b844d77be3b927520a05e31accfc2e3ac44eae207c24057e8e.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b97a1675a83e4cddc8ef8f230c9f785e80f96e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
