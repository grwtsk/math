# cauSeq_converges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1863a5255808e28c97c8a7f3a19f797a7d3d9d93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cef16ee-123c-a46a-59dc-2c0620d9ab4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:723efa6c-52ff-8a0c-3917-284ffae8207c",
  "kind": "theorem",
  "lexical_name": "cauSeq_converges",
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
  "slug": "causeq-converges--cbd6a5b783c1fb363c9d5a31",
  "source": {
    "blob": "1863a5255808e28c97c8a7f3a19f797a7d3d9d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 318,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd6a5b783c1fb363c9d5a318f2bb3df69853563be7dcdecb4378dd7706b1cd1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:723efa6c-52ff-8a0c-3917-284ffae8207c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauSeq_converges (f : CauSeq ℝ abs) : ∃ x, f ≈ const abs x := by
  let s := {x : ℝ | const abs x < f}
  have lb : ∃ x, x ∈ s := exists_lt f
  have ub' : ∀ x, f < const abs x → ∀ y ∈ s, y ≤ x := fun x h y yS =>
    le_of_lt <| const_lt.1 <| CauSeq.lt_trans yS h
  have ub : ∃ x, ∀ y ∈ s, y ≤ x := (exists_gt f).imp ub'
  refine ⟨sSup s, ((lt_total _ _).resolve_left fun h => ?_).resolve_right fun h => ?_⟩
  · rcases h with ⟨ε, ε0, i, ih⟩
    refine (csSup_le lb (ub' _ ?_)).not_gt (sub_lt_self _ (half_pos ε0))
    refine ⟨_, half_pos ε0, i, fun j ij => ?_⟩
    rw [sub_apply, const_apply, sub_right_comm, le_sub_iff_add_le, add_halves]
    exact ih _ ij
  · rcases h with ⟨ε, ε0, i, ih⟩
    refine (le_csSup ub ?_).not_gt ((lt_add_iff_pos_left _).2 (half_pos ε0))
    refine ⟨_, half_pos ε0, i, fun j ij => ?_⟩
    rw [sub_apply, const_apply, add_comm, ← sub_sub, le_sub_iff_add_le, add_halves]
    exact ih _ ij

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1863a5255808e28c97c8a7f3a19f797a7d3d9d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
