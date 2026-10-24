# linearIndependent_iff_not_smul_mem_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb0af92c-e552-d3a8-2a99-f3906afc0097",
  "kind": "theorem",
  "lexical_name": "linearIndependent_iff_not_smul_mem_span",
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
  "slug": "linearindependent-iff-not-smul-mem-span--12da096e2cf335bb9b2793e5",
  "source": {
    "blob": "3624b387ea4062357a4d5b9465d82c958c5cb63a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 922,
    "line": 900,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variant15a3f1d129ee46ce6217a9429779d7bcbdf491054b754fd11aa3149c7777d7be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12da096e2cf335bb9b2793e53ef1eff7f585ddfa6e1199d3b5dbf33229f25840",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearIndependent/Variant15a3f1d129ee46ce6217a9429779d7bcbdf491054b754fd11aa3149c7777d7be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb0af92c-e552-d3a8-2a99-f3906afc0097`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 900–922.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_iff_not_smul_mem_span :
    LinearIndependent R v ↔ ∀ (i : ι) (a : R), a • v i ∈ span R (v '' (univ \ {i})) → a = 0 :=
  ⟨fun hv i a ha => by
    rw [Finsupp.span_image_eq_map_total, mem_map] at ha
    rcases ha with ⟨l, hl, e⟩
    rw [sub_eq_zero.1 (linearIndependent_iff.1 hv (l - Finsupp.single i a) (by simp [e]))] at hl
    by_contra hn
    exact (not_mem_of_mem_diff (hl <| by simp [hn])) (mem_singleton _), fun H =>
    linearIndependent_iff.2 fun l hl => by
      ext i; simp only [Finsupp.zero_apply]
      by_contra hn
      refine' hn (H i _ _)
      refine' (Finsupp.mem_span_image_iff_total R).2 ⟨Finsupp.single i (l i) - l, _, _⟩
      · rw [Finsupp.mem_supported']
        intro j hj
        have hij : j = i :=
          Classical.not_not.1 fun hij : j ≠ i =>
            hj ((mem_diff _).2 ⟨mem_univ _, fun h => hij (eq_of_mem_singleton h)⟩)
        simp [hij]
      · simp [hl]⟩
#align linear_independent_iff_not_smul_mem_span linearIndependent_iff_not_smul_mem_span

/-- See also `CompleteLattice.independent_iff_linearIndependent_of_ne_zero`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearIndependent/Variant15a3f1d129ee46ce6217a9429779d7bcbdf491054b754fd11aa3149c7777d7be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variant15a3f1d129ee46ce6217a9429779d7bcbdf491054b754fd11aa3149c7777d7be.lean#L900).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3624b387ea4062357a4d5b9465d82c958c5cb63a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
