# _root_.InfIrred.isPrimary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d002a86a9b8b251eb45c00496e2189164b8156a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:818af8ff-51e6-04a4-021f-46b940644a14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f31545fe-b97c-702d-5582-40c299dac7eb",
  "kind": "lemma",
  "lexical_name": "_root_.InfIrred.isPrimary",
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
  "slug": "root-infirred-isprimary--965079f4546efecd3e916e82",
  "source": {
    "blob": "5d002a86a9b8b251eb45c00496e2189164b8156a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 245,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:965079f4546efecd3e916e82f91f4333f168165a9e7a957726c37b5de7406499",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f31545fe-b97c-702d-5582-40c299dac7eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.InfIrred.isPrimary {N : Submodule R M} (h : InfIrred N) : N.IsPrimary := by
  rw [Submodule.IsPrimary]
  refine ⟨h.ne_top, fun {a b} hab ↦ ?_⟩
  let f : ℕ → Submodule R M := fun n ↦
  { carrier := {x | a ^ n • x ∈ N}
    add_mem' hx hy := by simp [N.add_mem hx hy]
    zero_mem' := by simp
    smul_mem' x y h := by simp [smul_comm _ x, N.smul_mem x h] }
  have hf : Monotone f := by
    intro n m hnm x hx
    simpa [hnm, smul_smul, ← pow_add] using! N.smul_mem (a ^ (m - n)) hx
  obtain ⟨n, hn⟩ := monotone_stabilizes_iff_noetherian.mpr ‹_› ⟨f, hf⟩
  rcases h with ⟨-, h⟩
  specialize @h (f n) (N + a ^ n • ⊤) ?_
  · refine le_antisymm (fun r ⟨h1, h2⟩ ↦ ?_) (le_inf (fun x ↦ N.smul_mem (a ^ n)) (by simp))
    simp only [add_eq_sup, SetLike.mem_coe, mem_sup, mem_smul_pointwise_iff_exists] at h2
    obtain ⟨x, hx, -, ⟨y, -, rfl⟩, rfl⟩ := h2
    have h : (a ^ n • y ∈ N) = (a ^ (n + n) • y ∈ N) := congr_arg (y ∈ ·) (hn (n + n) le_add_self)
    rw [pow_add, mul_smul] at h
    rwa [N.add_mem_iff_right hx, h, ← N.add_mem_iff_right (N.smul_mem (a ^ n) hx), ← smul_add]
  rw [add_eq_sup, sup_eq_left] at h
  refine h.imp (fun h ↦ ?_) (fun h ↦ ⟨n, h⟩)
  replace hn : f n = f (n + 1) := hn (n + 1) n.le_succ
  rw [← h, hn]
  rw [← h] at hab
  simpa [f, pow_succ, mul_smul] using! hab

variable (R M) in
/-- The Lasker--Noether theorem: every submodule in a Noetherian module admits a decomposition into
  primary submodules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d002a86a9b8b251eb45c00496e2189164b8156a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
