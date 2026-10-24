# IsPos.induction_on_reflect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77e95b084476d1b16dd82d35a3bed2517c25b1a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 701,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3410df6-e858-4365-31de-633b62e7a314",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a4d765b-d363-ff25-76e7-b33d6e652093",
  "kind": "lemma",
  "lexical_name": "IsPos.induction_on_reflect",
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
  "slug": "ispos-induction-on-reflect--6b82b776719e3a9952275a44",
  "source": {
    "blob": "77e95b084476d1b16dd82d35a3bed2517c25b1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 701,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b82b776719e3a9952275a449ea1462dc96bc5c537ee4181b440a41e4aa6e416",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a4d765b-d363-ff25-76e7-b33d6e652093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 701–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPos.induction_on_reflect
    {i : ι} (h₀ : b.IsPos i)
    {p : ι → Prop}
    (h₁ : ∀ i ∈ b.support, p i)
    (h₂ : ∀ i j, p i → j ∈ b.support → p (P.reflectionPerm j i)) :
    p i := by
  generalize hN : (b.height i).natAbs = N
  induction N using Nat.strongRecOn generalizing i with
  | ind n ih =>
    obtain ⟨j, hj, hj'⟩ := h₀.exists_mem_support_pos_pairingIn
    rw [P.zero_lt_pairingIn_iff'] at hj'
    rcases eq_or_ne i j with rfl | hij; · exact h₁ i hj
    have hk := h₀.reflectionPerm hj hij
    have : (b.height (P.reflectionPerm j i)).natAbs < n := by
      suffices b.height (P.reflectionPerm j i) < b.height i by
        have : (b.height (P.reflectionPerm j i)).natAbs = b.height (P.reflectionPerm j i) :=
          Int.natAbs_of_nonneg <| (isPos_iff' _).mp hk
        lia
      have := P.reflection_apply_root' ℤ (i := j) (j := i)
      rw [← root_reflectionPerm, sub_eq_add_neg, ← neg_smul] at this
      rw [b.height_add_zsmul this]
      replace hj : 0 < b.height j := (isPos_iff _).mp <| isPos_of_mem_support hj
      aesop
    simpa using h₂ (P.reflectionPerm j i) j
      (ih (m := (b.height (P.reflectionPerm j i)).natAbs) this hk rfl) hj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean#L701).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e95b084476d1b16dd82d35a3bed2517c25b1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
