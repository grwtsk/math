# valid_ofFn_iff_no_zero_sum_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1a99eec-e476-04ad-c548-b9ff021cad0d",
  "kind": "theorem",
  "lexical_name": "valid_ofFn_iff_no_zero_sum_Icc",
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
  "slug": "valid-offn-iff-no-zero-sum-icc--c422e0b7a4d69885f0b21841",
  "source": {
    "blob": "6e0d451eed2d082fa55d5b667183d85e6bb619cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 225,
    "path": "GRWTSK/Combinatorics/Sequences/PartialSumOrdering.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c422e0b7a4d69885f0b218418da4a2aadb8015848a2b20f67f70034c13cb9585",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1a99eec-e476-04ad-c548-b9ff021cad0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valid_ofFn_iff_no_zero_sum_Icc {n : ℕ} (σ : Fin n → G) (hn : ∀ i, σ i ≠ 0) :
    ValidPartialSumOrder (List.ofFn σ) ↔
      ∀ a b : Fin n, 1 ≤ a.val → a < b → (∑ i ∈ Finset.Icc a b, σ i) ≠ 0 := by
  have hnonzero : ∀ x ∈ List.ofFn σ, x ≠ 0 := by
    intro x hx
    obtain ⟨i, rfl⟩ := List.mem_ofFn.mp hx
    exact hn i
  rw [valid_iff_no_long_zeroSumInterval _ hnonzero]
  constructor
  · intro h a b ha hab hz
    have hbound : b.val + 1 ≤ (List.ofFn σ).length := by simp
    have hab' : a.val + 1 ≤ b.val + 1 := by have := hab.le; simpa using this
    have he := (sum_Icc_eq_prefixSum_sub σ a b hab.le).symm.trans hz
    have hz' : ZeroSumInterval (List.ofFn σ) (a.val + 1) (b.val + 1) := by
      apply (zeroSumInterval_iff_prefixSum_eq _ _ _ (by omega) hab' hbound).mpr
      simpa using sub_eq_zero.mp he
    exact h (a.val + 1) (b.val + 1) (by omega) (by exact Nat.add_lt_add_right hab 1) hz'
  · intro h a b ha hab hz
    have hbl : b ≤ n := by simpa using hz.2.2.1
    let i : Fin n := ⟨a - 1, by omega⟩
    let j : Fin n := ⟨b - 1, by omega⟩
    have hij : i < j := by change a - 1 < b - 1; omega
    apply h i j (by change 1 ≤ a - 1; omega) hij
    rw [sum_Icc_eq_prefixSum_sub σ i j hij.le]
    have he := (zeroSumInterval_iff_prefixSum_eq _ a b (by omega) hab.le hz.2.2.1).mp hz
    have hb' : b - 1 + 1 = b := by omega
    simpa only [i, j, hb', sub_self] using congrArg (fun z => z - prefixSum (List.ofFn σ) (a - 1)) he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/PartialSumOrdering.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e0d451eed2d082fa55d5b667183d85e6bb619cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
