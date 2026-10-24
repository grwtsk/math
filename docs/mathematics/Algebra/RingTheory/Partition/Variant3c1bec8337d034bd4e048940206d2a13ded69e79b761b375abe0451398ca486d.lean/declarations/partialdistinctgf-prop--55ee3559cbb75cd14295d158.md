# partialDistinctGF_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0f2a81f-63da-9b77-a6e4-b852459f3a75",
  "kind": "theorem",
  "lexical_name": "partialDistinctGF_prop",
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
  "slug": "partialdistinctgf-prop--55ee3559cbb75cd14295d158",
  "source": {
    "blob": "fd3803481cce58398a936482e24df9e892c5ef87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 442,
    "path": "GRWTSK/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55ee3559cbb75cd14295d158fe949ff7931117fedb1a8fab34b76a82a4ba9ec1",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0f2a81f-63da-9b77-a6e4-b852459f3a75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialDistinctGF_prop [CommSemiring α] (n m : ℕ) :
    (Finset.card
          ((univ : Finset (Nat.Partition n)).filter fun p =>
            p.parts.Nodup ∧ ∀ j ∈ p.parts, j ∈ (range m).map ⟨Nat.succ, Nat.succ_injective⟩) :
        α) =
      coeff α n (partialDistinctGF m) := by
  rw [partialDistinctGF]
  -- Porting note: `convert` timeouts. Please revert to `convert` when the performance of `convert`
  --               is improved.
  refine Eq.trans ?_
    (Eq.trans (partialGF_prop α n ((range m).map ⟨Nat.succ, Nat.succ_injective⟩) ?_
      (fun _ => {0, 1}) fun _ _ => Or.inl rfl) (Eq.symm ?_))
  · congr
    congr! with p
    rw [Multiset.nodup_iff_count_le_one]
    congr! with i
    rcases Multiset.count i p.parts with (_ | _ | ms) <;> simp
  · simp only [mem_map, Function.Embedding.coeFn_mk]
    rintro i ⟨_, _, rfl⟩
    apply Nat.succ_pos
  · congr 1
    simp_rw [Finset.prod_map, two_series]
    congr with i
    simp [Set.image_pair]
#align theorems_100.partial_distinct_gf_prop Theorems100.partialDistinctGF_prop

/-- If m is big enough, the partial product's coefficient counts the number of distinct partitions
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3803481cce58398a936482e24df9e892c5ef87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
