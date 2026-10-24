# eq_of_upperHalf_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00e03027-ad74-6457-5c4f-c696a6c1c933",
  "kind": "theorem",
  "lexical_name": "eq_of_upperHalf_dvd",
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
  "slug": "eq-of-upperhalf-dvd--27b1b9303647ffc928bb949f",
  "source": {
    "blob": "b56c6e42dd7ae8890c9fc83e8f92283597c06106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27b1b9303647ffc928bb949fa169cc246012f41993f4fdf03b8bab8801afec44",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00e03027-ad74-6457-5c4f-c696a6c1c933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_upperHalf_dvd
    {N p n : ℕ}
    (hp : N < 2 * p)
    (hnpos : 1 ≤ n)
    (hnN : n ≤ N)
    (hpdvd : p ∣ n)
    (_ppos : 1 ≤ p) :
    n = p := by
  obtain ⟨k, rfl⟩ := hpdvd
  have hk : 1 ≤ k := by
    by_contra hk0
    have : k = 0 := by omega
    subst k
    simp at hnpos
  by_cases hk1 : k = 1
  · simp [hk1]
  · have hk2 : 2 ≤ k := by omega
    have : 2 * p ≤ p * k := by nlinarith
    nlinarith

/-- Exact information loss: every basis column supported at p>N/2 is zero on
the complete truncated output 1..N. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b56c6e42dd7ae8890c9fc83e8f92283597c06106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
