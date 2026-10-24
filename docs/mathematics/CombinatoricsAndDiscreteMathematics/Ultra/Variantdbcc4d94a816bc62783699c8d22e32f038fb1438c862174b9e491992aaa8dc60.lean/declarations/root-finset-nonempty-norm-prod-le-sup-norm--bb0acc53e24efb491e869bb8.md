# _root_.Finset.Nonempty.norm_prod_le_sup'_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7b85a1970373ec177320fc4875388074ce53404",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddd8e6ae-9a4b-7889-caa4-a2d7bf9e87fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5e3686b-8fd4-5279-54e4-2c26e4aad965",
  "kind": "lemma",
  "lexical_name": "_root_.Finset.Nonempty.norm_prod_le_sup'_norm",
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
  "slug": "root-finset-nonempty-norm-prod-le-sup-norm--bb0acc53e24efb491e869bb8",
  "source": {
    "blob": "a7b85a1970373ec177320fc4875388074ce53404",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 207,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb0acc53e24efb491e869bb89c0d1ccabd8f6f50740714a9080d9ac51c6534ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5e3686b-8fd4-5279-54e4-2c26e4aad965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Finset.Nonempty.norm_prod_le_sup'_norm {s : Finset ι} (hs : s.Nonempty) (f : ι → M) :
    ‖∏ i ∈ s, f i‖ ≤ s.sup' hs (‖f ·‖) := by
  simp only [Finset.le_sup'_iff]
  induction hs using Finset.Nonempty.cons_induction with
  | singleton j => simp only [Finset.mem_singleton, Finset.prod_singleton, exists_eq_left, le_refl]
  | cons j t hj _ IH =>
      simp only [Finset.prod_cons, Finset.mem_cons, exists_eq_or_imp]
      refine (le_total ‖∏ i ∈ t, f i‖ ‖f j‖).imp ?_ ?_ <;> intro h
      · exact (norm_mul_le_max _ _).trans (max_eq_left h).le
      · exact ⟨_, IH.choose_spec.left, (norm_mul_le_max _ _).trans <|
          ((max_eq_right h).le.trans IH.choose_spec.right)⟩

/-- Nonarchimedean norm of a product is less than or equal to the largest norm of a term in the
product. -/
@[to_additive /-- Nonarchimedean norm of a sum is less than or equal to the largest norm of a term
in the sum. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b85a1970373ec177320fc4875388074ce53404` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
