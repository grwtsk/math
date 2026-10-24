# pow_smul_mem_closure_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "522713d023d0a4509e13a11eb1413cd5f72db447",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80a0b53b-42d8-3c0d-6759-8ded61781573",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46994973-0b4f-245d-c242-97fd5eeb62e7",
  "kind": "theorem",
  "lexical_name": "pow_smul_mem_closure_smul",
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
  "slug": "pow-smul-mem-closure-smul--647765660f3a95b5c23ddf80",
  "source": {
    "blob": "522713d023d0a4509e13a11eb1413cd5f72db447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 99,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:647765660f3a95b5c23ddf808647315d7a1477389afe7917d5a7f167b5e7885d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46994973-0b4f-245d-c242-97fd5eeb62e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_smul_mem_closure_smul {N : Type*} [CommMonoid N] [MulAction M N] [IsScalarTower M N N]
    (r : M) (s : Set N) {x : N} (hx : x ∈ closure s) : ∃ n : ℕ, r ^ n • x ∈ closure (r • s) := by
  refine' @closure_induction N _ s (fun x : N => ∃ n : ℕ, r ^ n • x ∈ closure (r • s)) _ hx _ _ _
  · intro x hx
    exact ⟨1, subset_closure ⟨_, hx, by rw [pow_one]⟩⟩
  · exact ⟨0, by simpa using one_mem _⟩
  · rintro x y ⟨nx, hx⟩ ⟨ny, hy⟩
    use ny + nx
    rw [pow_add, mul_smul, ← smul_mul_assoc, mul_comm, ← smul_mul_assoc]
    exact mul_mem hy hx
#align submonoid.pow_smul_mem_closure_smul Submonoid.pow_smul_mem_closure_smul
#align add_submonoid.nsmul_vadd_mem_closure_vadd AddSubmonoid.nsmul_vadd_mem_closure_vadd

variable [Group G]

/-- The submonoid with every element inverted. -/
@[to_additive " The additive submonoid with every element negated. "]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522713d023d0a4509e13a11eb1413cd5f72db447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
