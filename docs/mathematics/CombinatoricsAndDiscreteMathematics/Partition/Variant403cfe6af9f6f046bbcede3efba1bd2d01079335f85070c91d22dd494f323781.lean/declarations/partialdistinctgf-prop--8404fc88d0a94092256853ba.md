# partialDistinctGF_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dc64de1-e5e5-04ac-0960-3fbab0efb62e",
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
  "slug": "partialdistinctgf-prop--8404fc88d0a94092256853ba",
  "source": {
    "blob": "9e498a5d44f6ee8fe8f50756715a6387fd4b3250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 306,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8404fc88d0a94092256853bac7497571f8bed5656f6e725e15fd1d871ab70fdc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dc64de1-e5e5-04ac-0960-3fbab0efb62e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialDistinctGF_prop [CommSemiring α] (n m : ℕ) :
    #{p : n.Partition |
        p.parts.Nodup ∧ ∀ j ∈ p.parts, j ∈ (range m).map ⟨Nat.succ, Nat.succ_injective⟩} =
      coeff α n (partialDistinctGF m) := by
  rw [partialDistinctGF]
  convert partialGF_prop α n
    ((range m).map ⟨Nat.succ, Nat.succ_injective⟩) _ (fun _ => {0, 1}) (fun _ _ => Or.inl rfl)
    using 2
  · congr! with p
    rw [Multiset.nodup_iff_count_le_one]
    congr! 1 with i
    rcases Multiset.count i p.parts with (_ | _ | ms) <;> simp
  · simp_rw [Finset.prod_map, two_series]
    congr with i
    simp [Set.image_pair]
  · simp only [mem_map, Function.Embedding.coeFn_mk]
    rintro i ⟨_, _, rfl⟩
    apply Nat.succ_pos

/-- If m is big enough, the partial product's coefficient counts the number of distinct partitions
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e498a5d44f6ee8fe8f50756715a6387fd4b3250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
