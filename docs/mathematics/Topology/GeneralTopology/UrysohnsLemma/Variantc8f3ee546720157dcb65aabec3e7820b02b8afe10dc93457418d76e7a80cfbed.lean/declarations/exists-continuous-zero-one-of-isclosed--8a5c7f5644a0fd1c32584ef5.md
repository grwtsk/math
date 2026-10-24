# exists_continuous_zero_one_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d4f1e4992149b89860d993d63593c9ef22f450b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3abea524-af66-b5c2-61ac-8707009a60ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9443e5e-a17b-41a1-13fd-589bb98ec768",
  "kind": "theorem",
  "lexical_name": "exists_continuous_zero_one_of_isClosed",
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
  "slug": "exists-continuous-zero-one-of-isclosed--8a5c7f5644a0fd1c32584ef5",
  "source": {
    "blob": "8d4f1e4992149b89860d993d63593c9ef22f450b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 323,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a5c7f5644a0fd1c32584ef524f09d6c5519b1f8026775b3bc7f91e97c4f288d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9443e5e-a17b-41a1-13fd-589bb98ec768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_continuous_zero_one_of_isClosed [NormalSpace X]
    {s t : Set X} (hs : IsClosed s) (ht : IsClosed t)
    (hd : Disjoint s t) : ∃ f : C(X, ℝ), EqOn f 0 s ∧ EqOn f 1 t ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1 := by
  -- The actual proof is in the code above. Here we just repack it into the expected format.
  let P : Set X → Set X → Prop := fun _ _ ↦ True
  set c : Urysohns.CU P :=
  { C := s
    U := tᶜ
    P_C_U := trivial
    closed_C := hs
    open_U := ht.isOpen_compl
    subset := disjoint_left.1 hd
    hP := by
      rintro c u c_closed - u_open cu
      rcases normal_exists_closure_subset c_closed u_open cu with ⟨v, v_open, cv, hv⟩
      exact ⟨v, v_open, cv, hv, trivial, trivial⟩ }
  exact ⟨⟨c.lim, c.continuous_lim⟩, c.lim_of_mem_C, fun x hx => c.lim_of_notMem_U _ fun h => h hx,
    c.lim_mem_Icc⟩

/-- Urysohn's lemma: if `s` and `t` are two disjoint sets in a regular locally compact topological
space `X`, with `s` compact and `t` closed, then there exists a continuous
function `f : X → ℝ` such that

* `f` equals zero on `s`;
* `f` equals one on `t`;
* `0 ≤ f x ≤ 1` for all `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantc8f3ee546720157dcb65aabec3e7820b02b8afe10dc93457418d76e7a80cfbed.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4f1e4992149b89860d993d63593c9ef22f450b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
