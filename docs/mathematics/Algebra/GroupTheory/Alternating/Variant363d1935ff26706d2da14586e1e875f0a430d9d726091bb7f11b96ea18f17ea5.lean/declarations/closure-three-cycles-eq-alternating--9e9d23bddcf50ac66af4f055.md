# closure_three_cycles_eq_alternating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f6436e591fcf88179183f5db404bd2a3723669f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9c85912-4540-e397-2a4c-3f31159d4e86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7724bc64-3d99-7542-33d6-9d02e26754ca",
  "kind": "theorem",
  "lexical_name": "closure_three_cycles_eq_alternating",
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
  "slug": "closure-three-cycles-eq-alternating--9e9d23bddcf50ac66af4f055",
  "source": {
    "blob": "2f6436e591fcf88179183f5db404bd2a3723669f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 147,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e9d23bddcf50ac66af4f05517ddb4a7db7a026eb11e6633bfd84bd6609adbec",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7724bc64-3d99-7542-33d6-9d02e26754ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_three_cycles_eq_alternating :
    closure { σ : Perm α | IsThreeCycle σ } = alternatingGroup α :=
  closure_eq_of_le _ (fun σ hσ => mem_alternatingGroup.2 hσ.sign) fun σ hσ => by
    suffices hind :
      ∀ (n : ℕ) (l : List (Perm α)) (_ : ∀ g, g ∈ l → IsSwap g) (_ : l.length = 2 * n),
        l.prod ∈ closure { σ : Perm α | IsThreeCycle σ }
    · obtain ⟨l, rfl, hl⟩ := truncSwapFactors σ
      obtain ⟨n, hn⟩ := (prod_list_swap_mem_alternatingGroup_iff_even_length hl).1 hσ
      rw [← two_mul] at hn
      exact hind n l hl hn
    intro n
    induction' n with n ih <;> intro l hl hn
    · simp [List.length_eq_zero.1 hn, one_mem]
    rw [Nat.mul_succ] at hn
    obtain ⟨a, l, rfl⟩ := l.exists_of_length_succ hn
    rw [List.length_cons, Nat.succ_inj'] at hn
    obtain ⟨b, l, rfl⟩ := l.exists_of_length_succ hn
    rw [List.prod_cons, List.prod_cons, ← mul_assoc]
    rw [List.length_cons, Nat.succ_inj'] at hn
    exact
      mul_mem
        (IsSwap.mul_mem_closure_three_cycles (hl a (List.mem_cons_self a _))
          (hl b (List.mem_cons_of_mem a (l.mem_cons_self b))))
        (ih _ (fun g hg => hl g (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hg))) hn)
#align equiv.perm.closure_three_cycles_eq_alternating Equiv.Perm.closure_three_cycles_eq_alternating

/-- A key lemma to prove $A_5$ is simple. Shows that any normal subgroup of an alternating group on
  at least 5 elements is the entire alternating group if it contains a 3-cycle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f6436e591fcf88179183f5db404bd2a3723669f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
