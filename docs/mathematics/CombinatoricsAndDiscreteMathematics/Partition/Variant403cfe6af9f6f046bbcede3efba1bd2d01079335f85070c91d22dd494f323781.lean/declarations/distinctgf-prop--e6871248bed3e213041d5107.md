# distinctGF_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:398a813d-7a5b-eb63-6aad-b99606acc688",
  "kind": "theorem",
  "lexical_name": "distinctGF_prop",
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
  "slug": "distinctgf-prop--e6871248bed3e213041d5107",
  "source": {
    "blob": "9e498a5d44f6ee8fe8f50756715a6387fd4b3250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 327,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6871248bed3e213041d51077c744d8f2682f95745377a1ac51931927ba828f0",
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

Occurrence: `result:398a813d-7a5b-eb63-6aad-b99606acc688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distinctGF_prop [CommSemiring α] (n m : ℕ) (h : n < m + 1) :
    #(Nat.Partition.distincts n) = coeff α n (partialDistinctGF m) := by
  rw [← partialDistinctGF_prop, Nat.Partition.distincts]
  congr with p
  apply (and_iff_left _).symm
  intro i hi
  have : i ≤ n := by
    simpa [p.parts_sum] using Multiset.single_le_sum (fun _ _ => Nat.zero_le _) _ hi
  simp only [mkOdd, exists_prop, mem_range, Function.Embedding.coeFn_mk, mem_map]
  refine ⟨i - 1, ?_, Nat.succ_pred_eq_of_pos (p.parts_pos hi)⟩
  rw [tsub_lt_iff_right (Nat.one_le_iff_ne_zero.mpr (p.parts_pos hi).ne')]
  exact lt_of_le_of_lt this h

/-- The key proof idea for the partition theorem, showing that the generating functions for both
sequences are ultimately the same (since the factor converges to 0 as m tends to infinity).
It's enough to not take the limit though, and just consider large enough `m`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e498a5d44f6ee8fe8f50756715a6387fd4b3250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
