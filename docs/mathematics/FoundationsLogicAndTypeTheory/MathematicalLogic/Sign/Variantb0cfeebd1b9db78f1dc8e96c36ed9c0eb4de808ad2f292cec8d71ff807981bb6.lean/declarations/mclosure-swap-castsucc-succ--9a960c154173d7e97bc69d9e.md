# mclosure_swap_castSucc_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44d53713a1ba03e8f8028ace3bc2a45ab8ab9016",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e56bfd68-d811-478f-3979-8324ca8cf9ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6bb2be3-60a6-31a6-0cef-78d851143470",
  "kind": "theorem",
  "lexical_name": "mclosure_swap_castSucc_succ",
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
  "slug": "mclosure-swap-castsucc-succ--9a960c154173d7e97bc69d9e",
  "source": {
    "blob": "44d53713a1ba03e8f8028ace3bc2a45ab8ab9016",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantb0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a960c154173d7e97bc69d9e89edb7f9a2ea00951ad7ad6b0dbf15da8907373e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantb0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6bb2be3-60a6-31a6-0cef-78d851143470`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mclosure_swap_castSucc_succ (n : ℕ) :
    Submonoid.closure (Set.range fun i : Fin n ↦ swap i.castSucc i.succ) = ⊤ := by
  apply top_unique
  rw [← mclosure_isSwap, Submonoid.closure_le]
  rintro _ ⟨i, j, ne, rfl⟩
  wlog lt : i < j generalizing i j
  · rw [swap_comm]; exact this _ _ ne.symm (ne.lt_or_gt.resolve_left lt)
  induction j using Fin.induction with
  | zero => cases lt
  | succ j ih =>
    have mem : swap j.castSucc j.succ ∈ Submonoid.closure
      (Set.range fun (i : Fin n) ↦ swap i.castSucc i.succ) := Submonoid.subset_closure ⟨_, rfl⟩
    obtain rfl | lts := (Fin.le_castSucc_iff.mpr lt).eq_or_lt
    · exact mem
    rw [swap_comm, ← swap_mul_swap_mul_swap (y := Fin.castSucc j) lts.ne lt.ne]
    exact mul_mem (mul_mem mem <| ih lts.ne lts) mem

/-- Like `swap_induction_on`, but with the composition on the right of `f`.

An induction principle for permutations. If `motive` holds for the identity permutation, and
is preserved under composition with a non-trivial swap, then `motive` holds for all permutations. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantb0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantb0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44d53713a1ba03e8f8028ace3bc2a45ab8ab9016` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
