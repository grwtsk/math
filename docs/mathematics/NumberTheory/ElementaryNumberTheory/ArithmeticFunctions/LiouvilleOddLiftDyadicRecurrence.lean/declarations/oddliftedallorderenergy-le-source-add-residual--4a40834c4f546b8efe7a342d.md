# oddLiftedAllOrderEnergy_le_source_add_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9de3fb2f-76d2-dca1-5fa9-76fcf4f3e9a0",
  "kind": "theorem",
  "lexical_name": "oddLiftedAllOrderEnergy_le_source_add_residual",
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
  "slug": "oddliftedallorderenergy-le-source-add-residual--4a40834c4f546b8efe7a342d",
  "source": {
    "blob": "a57b6376f4fcecb6c4ae962ff47d885eda17ec38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 263,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a40834c4f546b8efe7a342d0d716fafb6e0f0988a44e3f637af1053ad3ba89f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9de3fb2f-76d2-dca1-5fa9-76fcf4f3e9a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddLiftedAllOrderEnergy_le_source_add_residual
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M) :
    oddLiftedAllOrderEnergy M H ≤
      (liouvilleAllOrderEnergy M H +
        oddResidualAllOrderEnergy M H) / 2 := by
  unfold oddLiftedAllOrderEnergy liouvilleAllOrderEnergy
    oddResidualAllOrderEnergy
  calc
    (∑ S ∈ (Finset.univ :
          Finset (Finset {h : ℕ // h ∈ H})).erase ∅,
        (oddLiftedMean M H S) ^ 2) ≤
      ∑ S ∈ (Finset.univ :
          Finset (Finset {h : ℕ // h ∈ H})).erase ∅,
        ((liouvilleSubsetMean M H S) ^ 2 +
          (oddResidualMean M H S) ^ 2) / 2 := by
      apply Finset.sum_le_sum
      intro S _
      exact oddLiftedMean_sq_le_source_residual_average M H S hM
    _ = _ := by
      rw [Finset.sum_div, Finset.sum_add_distrib]

/-- An honest TWO-supplier quantitative energy return. Any estimate of
the smaller ordinary Liouville energy must be accompanied by a SECOND
estimate of the odd-affine residual energy. Neither is supplied here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a57b6376f4fcecb6c4ae962ff47d885eda17ec38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
