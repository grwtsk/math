# FP.finsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59e814a9d575f97ea4410146754b2c83d82f718d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac9119e859b2ac36f0de810852dba0268d1b45f4fc33279af3d66e8727c179ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ec82c81-7951-66f6-79be-36eb41886e16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0e7022b-7f64-09fb-fd51-76a23c8cd633",
  "kind": "theorem",
  "lexical_name": "FP.finsetProd",
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
  "slug": "fp-finsetprod--cc14af93eaca597d1283123e",
  "source": {
    "blob": "59e814a9d575f97ea4410146754b2c83d82f718d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 239,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variantac9119e859b2ac36f0de810852dba0268d1b45f4fc33279af3d66e8727c179ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc14af93eaca597d1283123e301913337e4cd1392158a3bf348e063308d79f32",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variantac9119e859b2ac36f0de810852dba0268d1b45f4fc33279af3d66e8727c179ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0e7022b-7f64-09fb-fd51-76a23c8cd633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FP.finsetProd {M} [CommMonoid M] (a : Stream' M) (s : Finset ℕ) (hs : s.Nonempty) :
    FP a (s.prod fun i => a.get i) := by
  refine FP_drop_subset_FP _ (s.min' hs) ?_
  induction s using Finset.eraseInduction with | H s ih => _
  rw [← Finset.mul_prod_erase _ _ (s.min'_mem hs), ← Stream'.head_drop]
  rcases (s.erase (s.min' hs)).eq_empty_or_nonempty with h | h
  · rw [h, Finset.prod_empty, mul_one]
    exact FP.head _
  · apply FP.cons
    rw [Stream'.tail_eq_drop, Stream'.drop_drop, add_comm]
    have hmin : s.min' hs + 1 ≤ (s.erase (s.min' hs)).min' h :=
      Nat.succ_le_of_lt (Finset.min'_lt_of_mem_erase_min' _ _ <| Finset.min'_mem _ _)
    obtain ⟨d, hd⟩ := Nat.exists_eq_add_of_le hmin
    have := ih _ (s.min'_mem hs) h
    rw [hd, ← Stream'.drop_drop, add_comm] at this
    exact FP_drop_subset_FP _ _ this

@[deprecated (since := "2026-04-08")] alias FS.finset_sum := FS.finsetSum

@[to_additive existing, deprecated (since := "2026-04-08")]
alias FP.finset_prod := FP.finsetProd

@[deprecated (since := "2026-08-14")] alias FS.head' := FS.head

@[to_additive existing, deprecated (since := "2026-08-14")]
alias FP.head' := FP.head

@[deprecated (since := "2026-08-14")] alias FS.tail' := FS.of_tail

@[to_additive existing, deprecated (since := "2026-08-14")]
alias FP.tail' := FP.of_tail

@[deprecated (since := "2026-08-14")] alias FS.tail := FS.of_tail

@[to_additive existing, deprecated (since := "2026-08-14")]
alias FP.tail := FP.of_tail

@[deprecated (since := "2026-08-14")] alias FS.cons' := FS.cons

@[to_additive existing, deprecated (since := "2026-08-14")]
alias FP.cons' := FP.cons

end Hindman
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variantac9119e859b2ac36f0de810852dba0268d1b45f4fc33279af3d66e8727c179ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variantac9119e859b2ac36f0de810852dba0268d1b45f4fc33279af3d66e8727c179ef.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e814a9d575f97ea4410146754b2c83d82f718d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
