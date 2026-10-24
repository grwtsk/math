# emultiplicity_factorial_mul_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c144769-6528-234e-7e46-922324f6915c",
  "kind": "theorem",
  "lexical_name": "emultiplicity_factorial_mul_succ",
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
  "slug": "emultiplicity-factorial-mul-succ--6d466ae1d842b1bac2763713",
  "source": {
    "blob": "2fe5ba89c0076f5a7140e285b5ae6711366e732c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant7722ec615748c4ae613b29a80d15cbe9a4c90c8ea7ed7dfb0bd3a71dbe856040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d466ae1d842b1bac27637136242a1eed4d9c4e910265d4da0ede6bc1a826034",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant7722ec615748c4ae613b29a80d15cbe9a4c90c8ea7ed7dfb0bd3a71dbe856040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c144769-6528-234e-7e46-922324f6915c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_factorial_mul_succ {n p : ℕ} (hp : p.Prime) :
    emultiplicity p (p * (n + 1))! = emultiplicity p (p * n)! + emultiplicity p (n + 1) + 1 := by
  have hp' := hp.prime
  have h0 : 2 ≤ p := hp.two_le
  have h1 : 1 ≤ p * n + 1 := Nat.le_add_left _ _
  have h2 : p * n + 1 ≤ p * (n + 1) := by linarith
  have h3 : p * n + 1 ≤ p * (n + 1) + 1 := by lia
  have hm : emultiplicity p (p * n)! ≠ ⊤ := by
    rw [Ne, emultiplicity_eq_top, Classical.not_not, Nat.finiteMultiplicity_iff]
    exact ⟨hp.ne_one, factorial_pos _⟩
  revert hm
  have h4 : ∀ m ∈ Ico (p * n + 1) (p * (n + 1)), emultiplicity p m = 0 := by
    intro m hm
    rw [emultiplicity_eq_zero, not_dvd_iff_lt_mul_succ _ hp.pos]
    rw [mem_Ico] at hm
    exact ⟨n, lt_of_succ_le hm.1, hm.2⟩
  simp_rw [← prod_Ico_id_eq_factorial, Finset.emultiplicity_prod hp', ← sum_Ico_consecutive _ h1 h3,
    add_assoc]
  intro h
  rw [WithTop.add_left_inj h, sum_Ico_succ_top h2, hp.emultiplicity_mul, hp.emultiplicity_self,
    sum_congr rfl h4, sum_const_zero, zero_add, add_comm 1]

/-- The multiplicity of `p` in `(p * n)!` is `n` more than that of `n!`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant7722ec615748c4ae613b29a80d15cbe9a4c90c8ea7ed7dfb0bd3a71dbe856040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant7722ec615748c4ae613b29a80d15cbe9a4c90c8ea7ed7dfb0bd3a71dbe856040.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fe5ba89c0076f5a7140e285b5ae6711366e732c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
