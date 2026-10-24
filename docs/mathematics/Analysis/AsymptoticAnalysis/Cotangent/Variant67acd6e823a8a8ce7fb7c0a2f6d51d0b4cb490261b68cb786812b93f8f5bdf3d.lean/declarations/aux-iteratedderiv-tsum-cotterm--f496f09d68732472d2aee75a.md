# aux_iteratedDeriv_tsum_cotTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db236156-09d8-f07c-b9cd-d30f9cd7e1b0",
  "kind": "lemma",
  "lexical_name": "aux_iteratedDeriv_tsum_cotTerm",
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
  "slug": "aux-iteratedderiv-tsum-cotterm--f496f09d68732472d2aee75a",
  "source": {
    "blob": "72269d22ee9620a3a366eb7fcbc9aadc9ff593ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 361,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f496f09d68732472d2aee75a3c1dd91f880949fb0a2742045057cb80c701d61b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db236156-09d8-f07c-b9cd-d30f9cd7e1b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma aux_iteratedDeriv_tsum_cotTerm {k : ℕ} (hk : 1 ≤ k) (hz : z ∈ ℍₒ) :
    (-1) ^ k * (k !) * z ^ (-1 - k : ℤ) +
      iteratedDerivWithin k (fun z ↦ ∑' n : ℕ, cotTerm z n) ℍₒ z =
    (-1) ^ k * k ! * ∑' n : ℤ, (z + n) ^ (-1 - k : ℤ) := by
  rw [iteratedDerivWithin_tsum k isOpen_upperHalfPlaneSet hz
    (fun t ht ↦ summable_cotTerm (coe_mem_integerComplement ⟨t, ht⟩))
    (fun l hl hl2 ↦ summableLocallyUniformlyOn_iteratedDerivWithin_cotTerm hl)
    (fun n l z hl hz ↦ (differentiableOn_iteratedDerivWithin_cotTerm n l).differentiableAt
    (isOpen_upperHalfPlaneSet.mem_nhds hz))]
  conv =>
    enter [1, 2, 1, n]
    rw [eqOn_iteratedDerivWithin_cotTerm_upperHalfPlaneSet k n (by simp [hz])]
  rw [tsum_of_add_one_of_neg_add_one (by simpa using aux_summable_add hk z)
    (by simpa [sub_eq_add_neg] using aux_summable_sub hk z),
    tsum_mul_left, Summable.tsum_add (aux_summable_add hk z) (aux_summable_sub hk z)]
  push_cast
  ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72269d22ee9620a3a366eb7fcbc9aadc9ff593ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
