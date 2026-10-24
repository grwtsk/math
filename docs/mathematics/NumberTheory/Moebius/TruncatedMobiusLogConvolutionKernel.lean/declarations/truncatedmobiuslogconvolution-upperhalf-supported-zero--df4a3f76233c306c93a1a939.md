# truncatedMobiusLogConvolution_upperHalf_supported_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc61973a-46d2-f541-5f20-b772ffd33276",
  "kind": "theorem",
  "lexical_name": "truncatedMobiusLogConvolution_upperHalf_supported_zero",
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
  "slug": "truncatedmobiuslogconvolution-upperhalf-supported-zero--df4a3f76233c306c93a1a939",
  "source": {
    "blob": "b56c6e42dd7ae8890c9fc83e8f92283597c06106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df4a3f76233c306c93a1a93955ffb7b6fa999639a6f8109816a7eaec97b4d6b3",
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

Occurrence: `result:bc61973a-46d2-f541-5f20-b772ffd33276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncatedMobiusLogConvolution_upperHalf_supported_zero
    {N : ℕ} (a : ℕ → ℝ)
    (hsupp : ∀ d, a d ≠ 0 → N < 2 * d) :
    ∀ n : ℕ,
      truncatedMobiusLogConvolution N a n = 0 := by
  intro n
  by_cases hn : 1 ≤ n ∧ n ≤ N
  · rw [truncatedMobiusLogConvolution_eq_divisorSum hn.1 hn.2]
    apply Finset.sum_eq_zero
    intro d hd
    by_cases had : a d = 0
    · simp [had]
    · have hdUpper := hsupp d had
      have hddvd : d ∣ n := Nat.dvd_of_mem_divisors hd
      have hdpos : 1 ≤ d := Nat.pos_of_mem_divisors hd
      have hnd : n = d :=
        eq_of_upperHalf_dvd hdUpper hn.1 hn.2 hddvd hdpos
      subst n
      simp
  · simp [truncatedMobiusLogConvolution, hn]

/-- Exact limitation of the obstruction: this kernel theorem concerns arbitrary
coefficient differences a. It becomes an obstruction to an actual constrained
arithmetic packet family only after one proves that a nonzero upper-half
supported difference occurs between two admissible packets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b56c6e42dd7ae8890c9fc83e8f92283597c06106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
