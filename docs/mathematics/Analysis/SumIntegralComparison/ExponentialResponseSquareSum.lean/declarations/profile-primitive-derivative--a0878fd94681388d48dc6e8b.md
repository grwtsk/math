# profile_primitive_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45271ed192e91def64dcc93b949dc48f39bb9570",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39abe9d2-7f19-2fcb-3914-ab457278e56d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91bb95e1-814d-9b88-9f4b-f65bb616c723",
  "kind": "theorem",
  "lexical_name": "profile_primitive_derivative",
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
  "slug": "profile-primitive-derivative--a0878fd94681388d48dc6e8b",
  "source": {
    "blob": "45271ed192e91def64dcc93b949dc48f39bb9570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 58,
    "path": "GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0878fd94681388d48dc6e8b12088dbe7a71caa1cb0f2e3c052536efe2ecafc9",
  "verification": {
    "reference": "docs/verification/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91bb95e1-814d-9b88-9f4b-f65bb616c723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem profile_primitive_derivative {u t : ℝ} (ht : 0 < t) :
    HasDerivAt (profilePrimitive u) (profile u t) t := by
  have hder := ((Real.hasDerivAt_log ht.ne').sub
    ((Real.hasDerivAt_sqrt ht.ne').const_mul (4 * Real.exp (-u / 2)))).add
      ((hasDerivAt_id t).const_mul (Real.exp (-u / 2) ^ 2))
  have hsq : (Real.sqrt t)⁻¹ ^ 2 = t⁻¹ := by
    rw [inv_pow, Real.sq_sqrt ht.le]
  have hvalue : t⁻¹ - (4 * Real.exp (-u / 2)) * (1 / (2 * Real.sqrt t)) +
      Real.exp (-u / 2) ^ 2 * 1 = profile u t := by
    unfold profile
    simp only [one_div, mul_inv_rev]
    norm_num
    nlinarith [hsq]
  convert! hder using 1
  exact hvalue.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45271ed192e91def64dcc93b949dc48f39bb9570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
