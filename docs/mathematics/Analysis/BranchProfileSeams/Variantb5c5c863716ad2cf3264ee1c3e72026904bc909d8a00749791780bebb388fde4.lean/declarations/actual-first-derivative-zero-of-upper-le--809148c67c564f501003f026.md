# actual_first_derivative_zero_of_upper_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d69df7a9-f17a-8cd1-67e7-3e10a63c2288",
  "kind": "theorem",
  "lexical_name": "actual_first_derivative_zero_of_upper_le",
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
  "slug": "actual-first-derivative-zero-of-upper-le--809148c67c564f501003f026",
  "source": {
    "blob": "ce69e8874d17ca1067ea512e82806383327e4578",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 99,
    "path": "GRWTSK/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:809148c67c564f501003f026e06cd957c00f6b8d95c45718367fa9ab78300677",
  "verification": {
    "reference": "docs/verification/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d69df7a9-f17a-8cd1-67e7-3e10a63c2288`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_derivative_zero_of_upper_le {A x : ℝ} (hA : 0 < A)
    (hx : A ≤ x) : deriv (normalizedTest explicitSecondDerivative A) x = 0 := by
  rw [actual_first_derivative_eq_indicator hA]
  by_cases hm : x ∈ Icc (-A) A
  · have he : x = A := le_antisymm hm.2 hx
    subst x
    rw [indicator_of_mem hm]
    exact (normalizedInterior_frontier A hA A (by
      rw [frontier_Icc (by linarith : -A ≤ A)]
      simp)).2
  · exact indicator_of_notMem hm _

/-- The genuine one-sided derivative from inside the support has the positive trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchProfileSeams/Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce69e8874d17ca1067ea512e82806383327e4578` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
