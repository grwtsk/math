# mem_cosComputableReduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4267de62c5262789afc965b531752f72f540144",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d67fd57-33d2-120a-f35c-6f0036b32372",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42ef1896-4a5c-7933-2ce6-0f494d6e99df",
  "kind": "theorem",
  "lexical_name": "mem_cosComputableReduced",
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
  "slug": "mem-coscomputablereduced--57d4713a5ec16f816c01f5f0",
  "source": {
    "blob": "b4267de62c5262789afc965b531752f72f540144",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 288,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57d4713a5ec16f816c01f5f094be47003066dbbdee5760e8ae1560037d151dee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42ef1896-4a5c-7933-2ce6-0f494d6e99df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_cosComputableReduced {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (n : ℕ := 10) :
    Real.cos x ∈ cosComputableReduced I n := by
  unfold cosComputableReduced reduceToMainPeriod
  simp only []
  set Ired := shiftInterval I (computeShiftK I) with hIred
  set k := computeShiftK I with hk
  have hxred : x - 2 * Real.pi * k ∈ Ired := by
    rw [hIred, hk]
    exact mem_shiftInterval_of_mem hx
  have hcos_eq : Real.cos x = Real.cos (x - 2 * Real.pi * k) := by
    have h := Real.cos_add_int_mul_two_pi x (-k)
    simp only [Int.cast_neg, neg_mul] at h
    rw [← h]
    ring_nf
  split_ifs with hwide
  · simp only [IntervalRat.mem_def, Rat.cast_neg, Rat.cast_one]
    exact ⟨Real.neg_one_le_cos x, Real.cos_le_one x⟩
  · push Not at hwide
    rw [hcos_eq]
    exact IntervalRat.mem_cosComputable hxred n

end LeanCert.Engine.TaylorModel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4267de62c5262789afc965b531752f72f540144` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
