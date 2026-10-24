# endpoint_exponential_envelope_le_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e442628-310a-88b3-f181-42e62f137f15",
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
  "slug": "endpoint-exponential-envelope-le-three--70bb6783c27c1a2441f429eb",
  "source": {
    "blob": "ae6ef251e0a5593bd9cab09a68a1bf0c827c5e87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 21,
    "path": "GRWTSK/Analysis/EndpointThree/Variant244866f420373f17ca7f423b749814c1c1b9423cd5d0d4b2a85c1bae14bb1955.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70bb6783c27c1a2441f429eb7ba1051dd7bed3c5f5b6392e9e3994efc2b082b3",
  "verification": {
    "reference": "docs/verification/Analysis/EndpointThree/Variant244866f420373f17ca7f423b749814c1c1b9423cd5d0d4b2a85c1bae14bb1955.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e442628-310a-88b3-f181-42e62f137f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–51.

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

#check RH16IndependentChallenge.endpoint_exponential_envelope_le_three
#print axioms RH16IndependentChallenge.endpoint_exponential_envelope_le_three
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/EndpointThree/Variant244866f420373f17ca7f423b749814c1c1b9423cd5d0d4b2a85c1bae14bb1955.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/EndpointThree/Variant244866f420373f17ca7f423b749814c1c1b9423cd5d0d4b2a85c1bae14bb1955.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae6ef251e0a5593bd9cab09a68a1bf0c827c5e87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
