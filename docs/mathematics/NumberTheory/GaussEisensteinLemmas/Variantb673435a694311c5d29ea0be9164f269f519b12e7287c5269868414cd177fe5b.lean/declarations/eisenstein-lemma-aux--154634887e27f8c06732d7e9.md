# eisenstein_lemma_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc54faba7afc40e533581d7dca05000d2498378f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3dc6799-b462-b0b4-18b8-6c9aa85ce642",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a500dca-d0fe-43b0-2d55-2da5dbb82c1f",
  "kind": "theorem",
  "lexical_name": "eisenstein_lemma_aux₁",
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
  "slug": "eisenstein-lemma-aux--154634887e27f8c06732d7e9",
  "source": {
    "blob": "fc54faba7afc40e533581d7dca05000d2498378f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 120,
    "path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:154634887e27f8c06732d7e969fb9b6e2237146b0ff337e08ce4c80b04429768",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a500dca-d0fe-43b0-2d55-2da5dbb82c1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem eisenstein_lemma_aux₁ (p : ℕ) [Fact p.Prime] [hp2 : Fact (p % 2 = 1)] {a : ℕ}
    (hap : (a : ZMod p) ≠ 0) : ((∑ x in Ico 1 (p / 2).succ, a * x : ℕ) : ZMod 2) =
    ((Ico 1 (p / 2).succ).filter fun x : ℕ => p / 2 < (a * x : ZMod p).val).card +
      ∑ x in Ico 1 (p / 2).succ, x + (∑ x in Ico 1 (p / 2).succ, a * x / p : ℕ) :=
  have hp2 : (p : ZMod 2) = (1 : ℕ) := (eq_iff_modEq_nat _).2 hp2.1
  calc
    ((∑ x in Ico 1 (p / 2).succ, a * x : ℕ) : ZMod 2) =
        ((∑ x in Ico 1 (p / 2).succ, (a * x % p + p * (a * x / p)) : ℕ) : ZMod 2) := by
      simp only [mod_add_div]
    _ = (∑ x in Ico 1 (p / 2).succ, ((a * x : ℕ) : ZMod p).val : ℕ) +
        (∑ x in Ico 1 (p / 2).succ, a * x / p : ℕ) := by
      simp only [val_nat_cast]
      simp [sum_add_distrib, mul_sum.symm, Nat.cast_add, Nat.cast_mul, Nat.cast_sum, hp2]
    _ = _ :=
      congr_arg₂ (· + ·)
        (calc
          ((∑ x in Ico 1 (p / 2).succ, ((a * x : ℕ) : ZMod p).val : ℕ) : ZMod 2) =
              ∑ x in Ico 1 (p / 2).succ, (((a * x : ZMod p).valMinAbs +
                if (a * x : ZMod p).val ≤ p / 2 then 0 else p : ℤ) : ZMod 2) := by
            simp only [(val_eq_ite_valMinAbs _).symm]; simp [Nat.cast_sum]
          _ = ((Ico 1 (p / 2).succ).filter fun x : ℕ => p / 2 < (a * x : ZMod p).val).card +
              (∑ x in Ico 1 (p / 2).succ, (a * x : ZMod p).valMinAbs.natAbs : ℕ) := by
            simp [add_comm, sum_add_distrib, Finset.sum_ite, hp2, Nat.cast_sum]
          _ = _ := by
            rw [Finset.sum_eq_multiset_sum, Ico_map_valMinAbs_natAbs_eq_Ico_map_id p a hap, ←
              Finset.sum_eq_multiset_sum])
        rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc54faba7afc40e533581d7dca05000d2498378f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
