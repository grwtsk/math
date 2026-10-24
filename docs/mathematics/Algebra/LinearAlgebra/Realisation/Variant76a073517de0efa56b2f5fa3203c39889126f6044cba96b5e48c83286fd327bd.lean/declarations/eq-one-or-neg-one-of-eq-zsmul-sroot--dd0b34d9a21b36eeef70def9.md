# eq_one_or_neg_one_of_eq_zsmul_sRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61c5a78924657bcf15c3fa4c05b3c9967e7bcb1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 471,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bde5007-d027-73c9-eb2e-aa4a5c096372",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66432227-d647-c0f4-49cd-ade43e9644bb",
  "kind": "lemma",
  "lexical_name": "eq_one_or_neg_one_of_eq_zsmul_sRoot",
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
  "slug": "eq-one-or-neg-one-of-eq-zsmul-sroot--dd0b34d9a21b36eeef70def9",
  "source": {
    "blob": "61c5a78924657bcf15c3fa4c05b3c9967e7bcb1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 471,
    "path": "GRWTSK/Algebra/LinearAlgebra/Realisation/Variant76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd0b34d9a21b36eeef70def9e5b056f8d25173183466788519ad1674a6f4793d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Realisation/Variant76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66432227-d647-c0f4-49cd-ade43e9644bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_one_or_neg_one_of_eq_zsmul_sRoot {p : M × N} (hp : p ∈ rl.idx) {z : ℤ} {j : n}
    (h : p.1 = z • rl.sRoot j) :
    z = 1 ∨ z = -1 := by
  obtain ⟨w, hw, i, rfl⟩ := hp
  replace hw := (rl.idx_subset_span_int_sprod_span_int <| rl.mk_mem_idx (inv_mem hw) j).1
  obtain ⟨c, hc : ∑ k, c k • rl.sRoot k = w.1.symm (rl.sRoot j)⟩ :=
    (Submodule.mem_span_range_iff_exists_fun ℤ).mp hw
  apply Int.eq_one_or_neg_one_of_mul_eq_one (v := c i)
  replace h : rl.sRoot i = z • w.1.symm (rl.sRoot j) := by simp [← map_zsmul, ← h]
  have : ∑ k, (z • c) k • rl.sRoot k = rl.sRoot i := by simp [h, ← hc, Finset.smul_sum, mul_smul]
  simpa using Fintype.linearIndependent_iffₛ.mp (rl.lin_ind_sRoot.restrict_scalars' ℤ) (z • c)
    (Pi.single i 1) (by rw [this, Fintype.sum_single_smul, one_smul]) i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Realisation/Variant76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Realisation/Variant76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c5a78924657bcf15c3fa4c05b3c9967e7bcb1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
