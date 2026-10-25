# multiplicity_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9929cc2d5e8964bad57f537386b97a150c3d695",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6eee54a5-d49b-c95f-c80d-1199a29e39e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d03f46e6-1ab5-7438-9a0f-e972722c0213",
  "kind": "theorem",
  "lexical_name": "multiplicity_factorial",
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
  "slug": "multiplicity-factorial--691b78692caf3e815f3a9e01",
  "source": {
    "blob": "a9929cc2d5e8964bad57f537386b97a150c3d695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:691b78692caf3e815f3a9e01a2036f8999e3ec38e6cb28a0555a9ad701a1a92d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d03f46e6-1ab5-7438-9a0f-e972722c0213`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_factorial {p : ℕ} (hp : p.Prime) :
    ∀ {n b : ℕ}, log p n < b → multiplicity p n ! = (∑ i in Ico 1 b, n / p ^ i : ℕ)
  | 0, b, _ => by simp [Ico, hp.multiplicity_one]
  | n + 1, b, hb =>
    calc
      multiplicity p (n + 1)! = multiplicity p n ! + multiplicity p (n + 1) := by
        rw [factorial_succ, hp.multiplicity_mul, add_comm]
      _ = (∑ i in Ico 1 b, n / p ^ i : ℕ) +
            ((Finset.Ico 1 b).filter fun i => p ^ i ∣ n + 1).card := by
        rw [multiplicity_factorial hp ((log_mono_right <| le_succ _).trans_lt hb), ←
          multiplicity_eq_card_pow_dvd hp.ne_one (succ_pos _) hb]
      _ = (∑ i in Ico 1 b, (n / p ^ i + if p ^ i ∣ n + 1 then 1 else 0) : ℕ) := by
        rw [sum_add_distrib, sum_boole]
        simp
      _ = (∑ i in Ico 1 b, (n + 1) / p ^ i : ℕ) :=
        congr_arg _ <| Finset.sum_congr rfl fun _ _ => (succ_div _ _).symm
#align nat.prime.multiplicity_factorial Nat.Prime.multiplicity_factorial

/-- The multiplicity of `p` in `(p * (n + 1))!` is one more than the sum
  of the multiplicities of `p` in `(p * n)!` and `n + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9929cc2d5e8964bad57f537386b97a150c3d695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
