# gram_readout_with_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5a3d2f4-96d4-2e27-0923-1d347a3f0d91",
  "kind": "theorem",
  "lexical_name": "gram_readout_with_tail_bound",
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
  "slug": "gram-readout-with-tail-bound--463d07fb1b9d16dfcaef80d4",
  "source": {
    "blob": "affebe081e0ae6b3697a7a38ff4a97babb758edb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 208,
    "path": "GRWTSK/Analysis/ErrorBounds/GrowingGramResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:463d07fb1b9d16dfcaef80d4239e5a3488684c1377c978c818364303a5b8833d",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/GrowingGramResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5a3d2f4-96d4-2e27-0923-1d347a3f0d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gram_readout_with_tail_bound {ι κ : Type*} [Fintype ι] [Fintype κ]
    (weight test : ι → ℝ) (source : ι × ι → ℝ) (feature : κ → ι → ℝ) (actual tail : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (testBound : ∀ i, |test i| ≤ weight i)
    (sourceReadout : actual = quadraticReadout test source + tail) :
    |actual - quadraticReadout test (gram feature)| ≤
      channelMass (pairWeight weight) (fun p => source p - gram feature p) + |tail| := by
  have readout : quadraticReadout test source - quadraticReadout test (gram feature) =
      ∑ p, outer test test p * (source p - gram feature p) := by
    simp only [quadraticReadout, mul_sub, Finset.sum_sub_distrib]
  have finiteBound := readout_error_bound (pairWeight weight) (outer test test)
    (fun p => source p - gram feature p) (quadraticReadout test source)
    (quadraticReadout test (gram feature)) readout
    (pair_consumer_bound weight test weightsNonnegative testBound)
  calc
    _ = |(quadraticReadout test source - quadraticReadout test (gram feature)) + tail| := by
      rw [sourceReadout]
      congr 1
      ring
    _ ≤ |quadraticReadout test source - quadraticReadout test (gram feature)| + |tail| := abs_add_le _ _
    _ ≤ _ := add_le_add_left finiteBound _

section Tower

variable {I K : ℕ → Type*} [∀ n, Fintype (I n)] [∀ n, Fintype (K n)]

/-- Residual mass at stage n, with its own finite coordinates and own weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/GrowingGramResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/GrowingGramResidual.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `affebe081e0ae6b3697a7a38ff4a97babb758edb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
