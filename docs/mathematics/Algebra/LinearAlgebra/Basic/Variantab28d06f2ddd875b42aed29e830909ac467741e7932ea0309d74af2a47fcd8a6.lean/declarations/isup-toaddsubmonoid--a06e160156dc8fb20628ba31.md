# iSup_toAddSubmonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35189106b641ace4ccf0894c8d714e0be8c0fc1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8574fd6-dfa6-2790-54b5-1862dfb94798",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b3919d5-2783-4c90-8c27-c9eee91b3215",
  "kind": "theorem",
  "lexical_name": "iSup_toAddSubmonoid",
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
  "slug": "isup-toaddsubmonoid--a06e160156dc8fb20628ba31",
  "source": {
    "blob": "35189106b641ace4ccf0894c8d714e0be8c0fc1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 272,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a06e160156dc8fb20628ba312346441fda9c00e89f1ad608f2161a2486069b4f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b3919d5-2783-4c90-8c27-c9eee91b3215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_toAddSubmonoid {ι : Sort*} (p : ι → Submodule R M) :
    (⨆ i, p i).toAddSubmonoid = ⨆ i, (p i).toAddSubmonoid := by
  refine le_antisymm (fun x => ?_) (iSup_le fun i => toAddSubmonoid_mono <| le_iSup _ i)
  simp_rw [iSup_eq_span, AddSubmonoid.iSup_eq_closure, mem_toAddSubmonoid, coe_toAddSubmonoid]
  intro hx
  refine Submodule.span_induction (fun x hx => ?_) ?_ (fun x y _ _ hx hy => ?_)
    (fun r x _ hx => ?_) hx
  · exact AddSubmonoid.subset_closure hx
  · exact AddSubmonoid.zero_mem _
  · exact AddSubmonoid.add_mem _ hx hy
  · refine AddSubmonoid.closure_induction ?_ ?_ ?_ hx
    · rintro x ⟨_, ⟨i, rfl⟩, hix : x ∈ p i⟩
      apply AddSubmonoid.subset_closure (Set.mem_iUnion.mpr ⟨i, _⟩)
      exact smul_mem _ r hix
    · rw [smul_zero]
      exact AddSubmonoid.zero_mem _
    · intro x y _ _ hx hy
      rw [smul_add]
      exact AddSubmonoid.add_mem _ hx hy

/-- An induction principle for elements of `⨆ i, p i`.
If `C` holds for `0` and all elements of `p i` for all `i`, and is preserved under addition,
then it holds for all elements of the supremum of `p`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantab28d06f2ddd875b42aed29e830909ac467741e7932ea0309d74af2a47fcd8a6.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35189106b641ace4ccf0894c8d714e0be8c0fc1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
