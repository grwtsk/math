# multiplicity_choose

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
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee18e0c7-db7c-6f00-6f60-37961aa7a546",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:149495f5-71f3-8cd1-c5cd-6b19b85a0068",
  "kind": "theorem",
  "lexical_name": "multiplicity_choose",
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
  "slug": "multiplicity-choose--14195fcf44fd8c24e71a7403",
  "source": {
    "blob": "a9929cc2d5e8964bad57f537386b97a150c3d695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14195fcf44fd8c24e71a740310b33bfdd43e23f917dd804fa2054e89a3723d6f",
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

Occurrence: `result:149495f5-71f3-8cd1-c5cd-6b19b85a0068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_choose {p n k b : ℕ} (hp : p.Prime) (hkn : k ≤ n) (hnb : log p n < b) :
    multiplicity p (choose n k) =
      ((Ico 1 b).filter fun i => p ^ i ≤ k % p ^ i + (n - k) % p ^ i).card := by
  have h₁ :
    multiplicity p (choose n k) + multiplicity p (k ! * (n - k)!) =
      ((Finset.Ico 1 b).filter fun i => p ^ i ≤ k % p ^ i + (n - k) % p ^ i).card +
        multiplicity p (k ! * (n - k)!) := by
    rw [← hp.multiplicity_mul, ← mul_assoc, choose_mul_factorial_mul_factorial hkn,
      hp.multiplicity_factorial hnb, hp.multiplicity_mul,
      hp.multiplicity_factorial ((log_mono_right hkn).trans_lt hnb),
      hp.multiplicity_factorial (lt_of_le_of_lt (log_mono_right tsub_le_self) hnb),
      multiplicity_choose_aux hp hkn]
    simp [add_comm]
  refine (PartENat.add_right_cancel_iff ?_).1 h₁
  apply PartENat.ne_top_iff_dom.2
  exact finite_nat_iff.2 ⟨hp.ne_one, mul_pos (factorial_pos k) (factorial_pos (n - k))⟩
#align nat.prime.multiplicity_choose Nat.Prime.multiplicity_choose

/-- A lower bound on the multiplicity of `p` in `choose n k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9929cc2d5e8964bad57f537386b97a150c3d695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
