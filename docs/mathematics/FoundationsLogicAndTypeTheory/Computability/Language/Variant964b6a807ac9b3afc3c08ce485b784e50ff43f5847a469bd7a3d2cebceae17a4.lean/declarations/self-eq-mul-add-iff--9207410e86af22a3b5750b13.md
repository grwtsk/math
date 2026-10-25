# self_eq_mul_add_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3212bf8122f8798818bc34a11f81eb7a8712392e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/964b6a807ac9b3afc3c08ce485b784e50ff43f5847a469bd7a3d2cebceae17a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9769e8bd-621a-a0a2-a6fd-008af6ff11b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8d33346-a78e-0074-44b1-87dfc2ff26ad",
  "kind": "theorem",
  "lexical_name": "self_eq_mul_add_iff",
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
  "slug": "self-eq-mul-add-iff--9207410e86af22a3b5750b13",
  "source": {
    "blob": "3212bf8122f8798818bc34a11f81eb7a8712392e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 293,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Language/Variant964b6a807ac9b3afc3c08ce485b784e50ff43f5847a469bd7a3d2cebceae17a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9207410e86af22a3b5750b132358b050de16441616ea9172ef54d542b8164b52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Language/Variant964b6a807ac9b3afc3c08ce485b784e50ff43f5847a469bd7a3d2cebceae17a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8d33346-a78e-0074-44b1-87dfc2ff26ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem self_eq_mul_add_iff {l m n : Language α} (hm : [] ∉ m) : l = m * l + n ↔ l = m∗ * n where
  mp h := by
    apply le_antisymm
    · intro x hx
      induction' hlen : x.length using Nat.strong_induction_on with _ ih generalizing x
      subst hlen
      rw [h] at hx
      obtain hx | hx := hx
      · obtain ⟨a, ha, b, hb, rfl⟩ := mem_mul.mp hx
        rw [length_append] at ih
        have hal : 0 < a.length := length_pos_iff.mpr <| ne_of_mem_of_not_mem ha hm
        specialize ih b.length (Nat.lt_add_left_iff_pos.mpr hal) hb rfl
        rw [← one_add_self_mul_kstar_eq_kstar, one_add_mul, mul_assoc]
        right
        exact ⟨_, ha, _, ih, rfl⟩
      · exact ⟨[], nil_mem_kstar _, _, ⟨hx, nil_append _⟩⟩
    · rw [kstar_eq_iSup_pow, iSup_mul, iSup_le_iff]
      intro i
      induction' i with _ ih <;> rw [h]
      · rw [pow_zero, one_mul, add_comm]
        exact le_self_add
      · rw [add_comm, pow_add, pow_one, mul_assoc]
        exact le_add_right (mul_le_mul_left' ih _)
  mpr h := by rw [h, add_comm, ← mul_assoc, ← one_add_mul, one_add_self_mul_kstar_eq_kstar]

/-- Language `l.reverse` is defined as the set of words from `l` backwards. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Language/Variant964b6a807ac9b3afc3c08ce485b784e50ff43f5847a469bd7a3d2cebceae17a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Language/Variant964b6a807ac9b3afc3c08ce485b784e50ff43f5847a469bd7a3d2cebceae17a4.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3212bf8122f8798818bc34a11f81eb7a8712392e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
