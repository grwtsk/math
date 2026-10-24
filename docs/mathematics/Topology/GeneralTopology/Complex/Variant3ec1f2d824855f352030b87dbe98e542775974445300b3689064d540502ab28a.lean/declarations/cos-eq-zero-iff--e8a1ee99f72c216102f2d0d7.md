# cos_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e776100272383a5bc5e205b786d6fc7110489c59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66b22c35-0b6a-2387-8bf1-b4f0947f5df0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e57fac8d-94dc-e996-701a-e017b78adaf3",
  "kind": "theorem",
  "lexical_name": "cos_eq_zero_iff",
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
  "slug": "cos-eq-zero-iff--e8a1ee99f72c216102f2d0d7",
  "source": {
    "blob": "e776100272383a5bc5e205b786d6fc7110489c59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8a1ee99f72c216102f2d0d76f933352b9a425eb802beff621a1b2dc27b674d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e57fac8d-94dc-e996-701a-e017b78adaf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cos_eq_zero_iff {θ : ℂ} : cos θ = 0 ↔ ∃ k : ℤ, θ = (2 * k + 1) * π / 2 := by
  have h : (exp (θ * I) + exp (-θ * I)) / 2 = 0 ↔ exp (2 * θ * I) = -1 := by
    rw [@div_eq_iff _ _ (exp (θ * I) + exp (-θ * I)) 2 0 two_ne_zero, zero_mul,
      add_eq_zero_iff_eq_neg, neg_eq_neg_one_mul, ← div_eq_iff (exp_ne_zero _), ← exp_sub]
    congr 3; ring_nf
  rw [cos, h, ← exp_pi_mul_I, exp_eq_exp_iff_exists_int, mul_right_comm]
  refine' exists_congr fun x => _
  refine' (iff_of_eq <| congr_arg _ _).trans (mul_right_inj' <| mul_ne_zero two_ne_zero I_ne_zero)
  field_simp; ring
#align complex.cos_eq_zero_iff Complex.cos_eq_zero_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e776100272383a5bc5e205b786d6fc7110489c59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
