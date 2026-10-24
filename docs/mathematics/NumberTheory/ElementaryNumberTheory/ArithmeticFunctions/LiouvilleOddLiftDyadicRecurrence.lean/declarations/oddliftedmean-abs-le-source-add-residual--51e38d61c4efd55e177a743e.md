# oddLiftedMean_abs_le_source_add_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f953b8e6-8428-f27e-7017-4a23fe19a8e0",
  "kind": "theorem",
  "lexical_name": "oddLiftedMean_abs_le_source_add_residual",
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
  "slug": "oddliftedmean-abs-le-source-add-residual--51e38d61c4efd55e177a743e",
  "source": {
    "blob": "a57b6376f4fcecb6c4ae962ff47d885eda17ec38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 182,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51e38d61c4efd55e177a743ea3d6fed1446b030782271af8beb819f9a5cc3cdd",
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

Occurrence: `result:f953b8e6-8428-f27e-7017-4a23fe19a8e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddLiftedMean_abs_le_source_add_residual
    (M : ℕ) (H : Finset ℕ) (S : Finset {h : ℕ // h ∈ H})
    (hM : 0 < M) :
    |oddLiftedMean M H S| ≤
      (|liouvilleSubsetMean M H S| +
        |oddResidualMean M H S|) / 2 := by
  rw [oddLiftedMean_half_source_plus_residual M H S hM]
  calc
    |(((-1 : ℚ) ^ S.card * liouvilleSubsetMean M H S) +
        oddResidualMean M H S) / 2| =
      |((-1 : ℚ) ^ S.card * liouvilleSubsetMean M H S) +
        oddResidualMean M H S| / 2 := by
      rw [abs_div]
      norm_num
    _ ≤ (|(-1 : ℚ) ^ S.card * liouvilleSubsetMean M H S| +
          |oddResidualMean M H S|) / 2 :=
      div_le_div_of_nonneg_right (abs_add_le _ _) (by norm_num)
    _ = _ := by simp [abs_mul]

/-- Source-bound supplier: the residual is not silently assigned zero.
This proposition is an explicit prerequisite, NOT a result here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleOddLiftDyadicRecurrence.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a57b6376f4fcecb6c4ae962ff47d885eda17ec38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
