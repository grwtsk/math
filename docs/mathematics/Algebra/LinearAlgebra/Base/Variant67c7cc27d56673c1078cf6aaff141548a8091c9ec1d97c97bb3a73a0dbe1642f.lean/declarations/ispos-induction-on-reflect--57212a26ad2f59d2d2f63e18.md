# IsPos.induction_on_reflect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:536308a5-1c91-5c1f-d3b3-9cf8c290bd67",
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
  "slug": "ispos-induction-on-reflect--57212a26ad2f59d2d2f63e18",
  "source": {
    "blob": "457696b067384e7226aa4439d9e82f3e848249f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 734,
    "line": 709,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57212a26ad2f59d2d2f63e180fd5fda1163af9551e8b8f01c170a781acfc4719",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:536308a5-1c91-5c1f-d3b3-9cf8c290bd67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 709–734.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean#L709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457696b067384e7226aa4439d9e82f3e848249f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
