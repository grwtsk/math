# tailBinomialCoeff_deriv_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66d88f9cbfbd169cf374a393ce25b899ca1bba40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1934680-ce40-3445-9a08-6acdd5462870",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0bb3f374-fab4-7ce5-2c42-667b16433efd",
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
  "slug": "tailbinomialcoeff-deriv-sum--d089ef31e8922595f77e6047",
  "source": {
    "blob": "66d88f9cbfbd169cf374a393ce25b899ca1bba40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d089ef31e8922595f77e60470c986af06fdc3dbde49ce7b21e107971e18a0c82",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bb3f374-fab4-7ce5-2c42-667b16433efd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–96.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66d88f9cbfbd169cf374a393ce25b899ca1bba40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
