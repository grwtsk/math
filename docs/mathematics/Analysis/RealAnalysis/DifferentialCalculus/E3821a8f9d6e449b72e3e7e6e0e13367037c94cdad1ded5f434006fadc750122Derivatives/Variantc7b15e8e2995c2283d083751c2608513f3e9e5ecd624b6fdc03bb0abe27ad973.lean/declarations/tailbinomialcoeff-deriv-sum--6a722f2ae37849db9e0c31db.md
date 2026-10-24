# tailBinomialCoeff_deriv_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aedc94cb-d264-2a83-aa97-967f93c404a6",
  "kind": "theorem",
  "lexical_name": "tailBinomialCoeff_deriv_sum",
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
  "slug": "tailbinomialcoeff-deriv-sum--6a722f2ae37849db9e0c31db",
  "source": {
    "blob": "ed535f20a92d2fde3911d4583fe0d1b127a08193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variantc7b15e8e2995c2283d083751c2608513f3e9e5ecd624b6fdc03bb0abe27ad973.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a722f2ae37849db9e0c31db4f24a534e5d9bdb1b0c56f17ba621919d65693da",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variantc7b15e8e2995c2283d083751c2608513f3e9e5ecd624b6fdc03bb0abe27ad973.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aedc94cb-d264-2a83-aa97-967f93c404a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tailBinomialCoeff_deriv_sum (r : ℕ) (t u : ℝ) :
    ∑ i ∈ Finset.range (r + 1), deriv (tailBinomialCoeff r i) t * u ^ i =
      -(r : ℝ) * (u - t) ^ (r - 1) := by
  have hsum : HasDerivAt
      (fun x => ∑ i ∈ Finset.range (r + 1), tailBinomialCoeff r i x * u ^ i)
      (∑ i ∈ Finset.range (r + 1), deriv (tailBinomialCoeff r i) t * u ^ i) t :=
    HasDerivAt.fun_sum fun i _ => (hasDerivAt_tailBinomialCoeff r i t).mul_const _
  have heq : (fun x => ∑ i ∈ Finset.range (r + 1), tailBinomialCoeff r i x * u ^ i) =
      fun x => (u - x) ^ r := funext (fun x => tailBinomialCoeff_sum r x u)
  rw [heq] at hsum
  have hp := ((hasDerivAt_id t).const_sub u).pow r
  have hp' : HasDerivAt (fun x : ℝ => (u - x) ^ r) (-(r : ℝ) * (u - t) ^ (r - 1)) t := by
    convert! hp using 1
    simp only [id_eq]
    ring
  exact hsum.unique hp'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variantc7b15e8e2995c2283d083751c2608513f3e9e5ecd624b6fdc03bb0abe27ad973.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variantc7b15e8e2995c2283d083751c2608513f3e9e5ecd624b6fdc03bb0abe27ad973.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed535f20a92d2fde3911d4583fe0d1b127a08193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
