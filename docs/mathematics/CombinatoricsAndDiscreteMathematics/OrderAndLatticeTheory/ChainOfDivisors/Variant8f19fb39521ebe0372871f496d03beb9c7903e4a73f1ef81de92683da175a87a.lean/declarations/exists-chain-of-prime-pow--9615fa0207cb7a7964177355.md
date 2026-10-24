# exists_chain_of_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce0ff1cd269a361b949443ad25be5c6e6d1d8f23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b2c23dc-37a3-7993-150f-33dd8bd6e81f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c007f5ff-eef0-ba21-416b-cd89e9e8f762",
  "kind": "theorem",
  "lexical_name": "exists_chain_of_prime_pow",
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
  "slug": "exists-chain-of-prime-pow--9615fa0207cb7a7964177355",
  "source": {
    "blob": "ce0ff1cd269a361b949443ad25be5c6e6d1d8f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9615fa0207cb7a7964177355963aca3e77478f9aa6f009955c31bf5004a3b20a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c007f5ff-eef0-ba21-416b-cd89e9e8f762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_chain_of_prime_pow {p : Associates M} {n : ℕ} (hn : n ≠ 0) (hp : Prime p) :
    ∃ c : Fin (n + 1) → Associates M,
      c 1 = p ∧ StrictMono c ∧ ∀ {r : Associates M}, r ≤ p ^ n ↔ ∃ i, r = c i := by
  refine' ⟨fun i => p ^ (i : ℕ), _, fun n m h => _, @fun y => ⟨fun h => _, _⟩⟩
  · dsimp only
    rw [Fin.val_one', Nat.mod_eq_of_lt, pow_one]
    exact Nat.lt_succ_of_le (Nat.one_le_iff_ne_zero.mpr hn)
  · exact Associates.dvdNotUnit_iff_lt.mp
        ⟨pow_ne_zero n hp.ne_zero, p ^ (m - n : ℕ),
          not_isUnit_of_not_isUnit_dvd hp.not_unit (dvd_pow dvd_rfl (Nat.sub_pos_of_lt h).ne'),
          (pow_mul_pow_sub p h.le).symm⟩
  · obtain ⟨i, i_le, hi⟩ := (dvd_prime_pow hp n).1 h
    rw [associated_iff_eq] at hi
    exact ⟨⟨i, Nat.lt_succ_of_le i_le⟩, hi⟩
  · rintro ⟨i, rfl⟩
    exact ⟨p ^ (n - i : ℕ), (pow_mul_pow_sub p (Nat.succ_le_succ_iff.mp i.2)).symm⟩
#align divisor_chain.exists_chain_of_prime_pow DivisorChain.exists_chain_of_prime_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce0ff1cd269a361b949443ad25be5c6e6d1d8f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
