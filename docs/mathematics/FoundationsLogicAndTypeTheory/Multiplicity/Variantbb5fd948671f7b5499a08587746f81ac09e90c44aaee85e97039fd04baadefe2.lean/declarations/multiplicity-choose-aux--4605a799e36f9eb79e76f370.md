# multiplicity_choose_aux

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
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b28980b6-4c0c-1e57-fa8c-86c65cf97322",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72d6cecd-2943-4b3e-7ac5-8ed63f6558ea",
  "kind": "theorem",
  "lexical_name": "multiplicity_choose_aux",
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
  "slug": "multiplicity-choose-aux--4605a799e36f9eb79e76f370",
  "source": {
    "blob": "a9929cc2d5e8964bad57f537386b97a150c3d695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4605a799e36f9eb79e76f370f4685a25f6d0c17af9db7bfa4112ccfecf7adcd0",
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

Occurrence: `result:72d6cecd-2943-4b3e-7ac5-8ed63f6558ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_choose_aux {p n b k : ℕ} (hp : p.Prime) (hkn : k ≤ n) :
    ∑ i in Finset.Ico 1 b, n / p ^ i =
      ((∑ i in Finset.Ico 1 b, k / p ^ i) + ∑ i in Finset.Ico 1 b, (n - k) / p ^ i) +
        ((Finset.Ico 1 b).filter fun i => p ^ i ≤ k % p ^ i + (n - k) % p ^ i).card :=
  calc
    ∑ i in Finset.Ico 1 b, n / p ^ i = ∑ i in Finset.Ico 1 b, (k + (n - k)) / p ^ i := by
      simp only [add_tsub_cancel_of_le hkn]
    _ = ∑ i in Finset.Ico 1 b,
          (k / p ^ i + (n - k) / p ^ i + if p ^ i ≤ k % p ^ i + (n - k) % p ^ i then 1 else 0) :=
      by simp only [Nat.add_div (pow_pos hp.pos _)]
    _ = _ := by simp [sum_add_distrib, sum_boole]
#align nat.prime.multiplicity_choose_aux Nat.Prime.multiplicity_choose_aux

/-- The multiplicity of `p` in `choose n k` is the number of carries when `k` and `n - k`
  are added in base `p`. The set is expressed by filtering `Ico 1 b` where `b`
  is any bound greater than `log p n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9929cc2d5e8964bad57f537386b97a150c3d695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
