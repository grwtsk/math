# pi_mem_of_mulSingle_mem_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "558f65fd18ca2c0f82765bdf522753c820b56b44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a726946d-90c8-6464-ae4a-1862b200b168",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:230b9189-d2a9-dfa2-2cdf-cdbf39045bd3",
  "kind": "theorem",
  "lexical_name": "pi_mem_of_mulSingle_mem_aux",
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
  "slug": "pi-mem-of-mulsingle-mem-aux--a45da8142b6434e9f59cb095",
  "source": {
    "blob": "558f65fd18ca2c0f82765bdf522753c820b56b44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a45da8142b6434e9f59cb095011ddb3263f44456c1a77178dcc89c0acad9548f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:230b9189-d2a9-dfa2-2cdf-cdbf39045bd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_mem_of_mulSingle_mem_aux [DecidableEq η] (I : Finset η) {H : Subgroup (∀ i, f i)}
    (x : ∀ i, f i) (h1 : ∀ i, i ∉ I → x i = 1) (h2 : ∀ i, i ∈ I → Pi.mulSingle i (x i) ∈ H) :
    x ∈ H := by
  induction I using Finset.induction_on generalizing x with
  | empty =>
    have : x = 1 := by
      ext i
      exact h1 i (Finset.notMem_empty i)
    rw [this]
    exact one_mem H
  | insert i I hnotMem ih =>
    have : x = Function.update x i 1 * Pi.mulSingle i (x i) := by
      ext j
      by_cases heq : j = i
      · subst heq
        simp
      · simp [heq]
    rw [this]
    clear this
    apply mul_mem
    · apply ih <;> clear ih
      · intro j hj
        by_cases heq : j = i
        · subst heq
          simp
        · simpa [heq] using h1 j (by simpa [heq] using hj)
      · intro j hj
        have : j ≠ i := by
          rintro rfl
          contradiction
        simp only [ne_eq, this, not_false_eq_true, Function.update_of_ne]
        exact h2 _ (Finset.mem_insert_of_mem hj)
    · apply h2
      simp

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant248f053853c36bcbb179fef461bc9fb26a4de2b4ffe3e32396786abb1dc68ba1.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `558f65fd18ca2c0f82765bdf522753c820b56b44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
