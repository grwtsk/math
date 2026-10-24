# mertensEndpointCrossCollisionCongruenceFibreEnergy_le_l1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e6451e7-badb-7fb3-60a7-49ed41fb7a78",
  "kind": "theorem",
  "lexical_name": "mertensEndpointCrossCollisionCongruenceFibreEnergy_le_l1",
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
  "slug": "mertensendpointcrosscollisioncongruencefibreenergy-le-l1--09da3d03c6b86444861d617b",
  "source": {
    "blob": "251309b0060626a7f04dc7e64215d9076402c568",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 66,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09da3d03c6b86444861d617b1d57d934792399cbe59c551680421e7db8743ea8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e6451e7-badb-7fb3-60a7-49ed41fb7a78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensEndpointCrossCollisionCongruenceFibreEnergy_le_l1
    (b : ℕ) :
    mertensEndpointCrossCollisionCongruenceFibreEnergy b ≤
      2 * mertensEndpointCrossCongruenceL1Mass b := by
  unfold mertensEndpointCrossCollisionCongruenceFibreEnergy
    mertensEndpointCrossCongruenceL1Mass
  apply mul_le_mul_of_nonneg_left ?_ (by norm_num)
  calc
    (∑ d ∈ Finset.Ico 1 b,
      moebiusReal d * mertensEndpointCrossCongruenceFibre b d) ≤
        |∑ d ∈ Finset.Ico 1 b,
          moebiusReal d * mertensEndpointCrossCongruenceFibre b d| :=
      le_abs_self _
    _ ≤ ∑ d ∈ Finset.Ico 1 b,
        |moebiusReal d * mertensEndpointCrossCongruenceFibre b d| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Ico 1 b,
        |mertensEndpointCrossCongruenceFibre b d| := by
      apply Finset.sum_le_sum
      intro d _hd
      rw [abs_mul]
      have hmu := abs_moebiusReal_le_one d
      simpa using
        mul_le_mul_of_nonneg_right hmu
          (abs_nonneg (mertensEndpointCrossCongruenceFibre b d))

/-- Positivity of the exact reciprocal endpoint weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `251309b0060626a7f04dc7e64215d9076402c568` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
