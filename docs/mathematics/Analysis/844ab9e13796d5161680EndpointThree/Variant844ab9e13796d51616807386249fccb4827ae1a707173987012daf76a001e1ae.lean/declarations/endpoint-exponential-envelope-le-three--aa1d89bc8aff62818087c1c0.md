# endpoint_exponential_envelope_le_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30f112d1f27fac22605edf5b47889c9d36f7e7f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 13,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/844ab9e13796d51616807386249fccb4827ae1a707173987012daf76a001e1ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f25da758-abcc-7829-ac1a-5181bdec2eb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bac2017-a38c-1fb4-0afa-36f01e0d8924",
  "kind": "theorem",
  "lexical_name": "endpoint_exponential_envelope_le_three",
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
  "slug": "endpoint-exponential-envelope-le-three--aa1d89bc8aff62818087c1c0",
  "source": {
    "blob": "30f112d1f27fac22605edf5b47889c9d36f7e7f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 13,
    "path": "GRWTSK/Analysis/844ab9e13796d5161680EndpointThree/Variant844ab9e13796d51616807386249fccb4827ae1a707173987012daf76a001e1ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa1d89bc8aff62818087c1c0cc35471bc91883a1d7e771ad0a084d7b95735433",
  "verification": {
    "reference": "docs/verification/Analysis/844ab9e13796d5161680EndpointThree/Variant844ab9e13796d51616807386249fccb4827ae1a707173987012daf76a001e1ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bac2017-a38c-1fb4-0afa-36f01e0d8924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_exponential_envelope_le_three (A : ℝ) (hA : 0 ≤ A) :
    2 * A ^ 3 * Real.exp (-A) ≤ 3 := by
  have hlinear : Real.exp 1 * (A / 3) ≤ Real.exp (A / 3) :=
    Real.exp_one_mul_le_exp
  have hcube : (Real.exp 1 * (A / 3)) ^ 3 ≤ (Real.exp (A / 3)) ^ 3 := by
    gcongr
  have he1 : (Real.exp (1 : ℝ)) ^ 3 = Real.exp (3 : ℝ) := by
    rw [← Real.exp_nat_mul]
    norm_num
  have heA : (Real.exp (A / 3)) ^ 3 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [mul_pow, he1, heA] at hcube
  have hsum := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 3) 6
  norm_num [Finset.sum_range_succ, Nat.factorial] at hsum
  have hpoly : (2 / 3 : ℝ) * A ^ 3 ≤ Real.exp A := by
    have hpower : 0 ≤ (A / 3) ^ 3 := by positivity
    have hmul := mul_le_mul_of_nonneg_right hsum hpower
    nlinarith [hcube]
  have hmul := mul_le_mul_of_nonneg_right hpoly (Real.exp_pos (-A)).le
  have he : Real.exp A * Real.exp (-A) = 1 := by
    rw [← Real.exp_add]
    simp
  rw [he] at hmul
  nlinarith

end RH16IndependentChallenge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/844ab9e13796d5161680EndpointThree/Variant844ab9e13796d51616807386249fccb4827ae1a707173987012daf76a001e1ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/844ab9e13796d5161680EndpointThree/Variant844ab9e13796d51616807386249fccb4827ae1a707173987012daf76a001e1ae.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30f112d1f27fac22605edf5b47889c9d36f7e7f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
