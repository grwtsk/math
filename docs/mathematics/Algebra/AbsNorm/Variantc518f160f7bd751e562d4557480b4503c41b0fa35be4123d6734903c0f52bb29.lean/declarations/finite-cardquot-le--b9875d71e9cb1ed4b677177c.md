# finite_cardQuot_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00e6765ba0e20490bbe27999dc8e2f9e01bc483d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06019a94-508a-2948-283e-ff69a98e7430",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21215633-880e-10a2-5713-95e8cb14ea47",
  "kind": "theorem",
  "lexical_name": "finite_cardQuot_le",
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
  "slug": "finite-cardquot-le--b9875d71e9cb1ed4b677177c",
  "source": {
    "blob": "00e6765ba0e20490bbe27999dc8e2f9e01bc483d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 221,
    "path": "GRWTSK/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9875d71e9cb1ed4b677177c7906fd3074defb3a6ee12d72d02de329d17914c1",
  "verification": {
    "reference": "docs/verification/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21215633-880e-10a2-5713-95e8cb14ea47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_cardQuot_le (B : ℕ) : {I : Ideal S | I.cardQuot ≤ B}.Finite := by
  classical
  rcases finite_or_infinite S
  · apply Set.toFinite
  -- if `S` is infinite, then we can pick a finite set `s` of cardinality `B + 1`
  obtain ⟨s, hs⟩ := Infinite.exists_subset_card_eq S (B + 1)
  -- and consider the finite set `t` of nonzero differences
  let t := (s - s) \ {0}
  refine Set.Finite.of_sdiff ?_ (Set.finite_singleton ⊥)
  -- in a ring with finite quotients, each nonzero element is contained in only finitely many ideals
  -- so it is enough to show that each ideal `I` of norm at most `B` contains some element of `t`
  suffices {I | Submodule.cardQuot I ≤ B} \ {⊥} ⊆ ⋃ x ∈ t, {I | x ∈ I} from
    (t.finite_toSet.biUnion fun x hx ↦ finite_setOfPred_mem x (by grind)).subset this
  intro I hI
  rw [Set.mem_sdiff, Set.mem_ofPred, Submodule.cardQuot_apply] at hI
  simp_rw [Set.mem_iUnion, exists_prop, Set.mem_ofPred_eq]
  -- `s` has cardinality `B + 1`, but the quotient `S ⧸ I` has cardinality at most `B`
  replace hs : (s.image (Ideal.Quotient.mk I)).card < s.card := by
    have := finiteQuotient hI.2
    have := Fintype.ofFinite (S ⧸ I)
    grw [Finset.card_le_univ, Fintype.card_eq_nat_card, hI.1, hs, Nat.lt_add_one_iff]
  -- so we can find distinct `x, y ∈ s` with the desired collision `x - y ∈ I`
  obtain ⟨x, hx, y, hy, hxy, h⟩ := Finset.exists_ne_map_eq_of_card_image_lt hs
  refine ⟨x - y, ?_, (Submodule.Quotient.eq I).mp h⟩
  refine Finset.mem_sdiff.mpr ⟨Finset.mem_sub.mpr ⟨x, hx, y, hy, rfl⟩, ?_⟩
  rwa [Finset.notMem_singleton, sub_ne_zero]

/-- A ring with finite quotients has only finitely many nonzero prime ideals of bounded norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AbsNorm/Variantc518f160f7bd751e562d4557480b4503c41b0fa35be4123d6734903c0f52bb29.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00e6765ba0e20490bbe27999dc8e2f9e01bc483d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
