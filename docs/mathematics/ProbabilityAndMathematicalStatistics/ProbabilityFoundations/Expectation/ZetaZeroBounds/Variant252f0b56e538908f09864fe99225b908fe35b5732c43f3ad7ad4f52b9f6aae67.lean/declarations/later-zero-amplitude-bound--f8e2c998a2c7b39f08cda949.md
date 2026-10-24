# later_zero_amplitude_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d239037a-26de-654f-1139-53baa776df12",
  "kind": "theorem",
  "lexical_name": "later_zero_amplitude_bound",
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
  "slug": "later-zero-amplitude-bound--f8e2c998a2c7b39f08cda949",
  "source": {
    "blob": "00d3d989b865cc98b5feee54980cef5418465734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 82,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant252f0b56e538908f09864fe99225b908fe35b5732c43f3ad7ad4f52b9f6aae67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8e2c998a2c7b39f08cda949557e83a8ed72f64ba38962bf0379dcb2f485e3a3",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant252f0b56e538908f09864fe99225b908fe35b5732c43f3ad7ad4f52b9f6aae67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d239037a-26de-654f-1139-53baa776df12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem later_zero_amplitude_bound :
    ∀ x ∈ Set.Icc (1:ℝ) 100, Real.sqrt x / 50 ≤ (1:ℚ)/4 := by
  certify_bound

/-! ## Part D: Tail Sum Bound

The tail sum Σ_{γ > γ_c} √x/γ can be bounded by an integral:
  Σ_{γ > γ_c} √x/γ ≤ √x · ∫_{γ_c}^∞ (density) · (1/γ) dγ

Using zero density N(T) ~ T·log(T)/(2π), density ≈ log(T)/(2π).
So the integral is roughly √x · log(γ_max/γ_c) / (2π).
-/

-- Log ratio bound: log(1000/100) = log(10) ≈ 2.30
-- So for γ_c = 100, γ_max = 1000, tail bound ≈ √x · 2.30 / 6.28 ≈ 0.37 · √x

-- Rewrite as universal bound for LeanCert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant252f0b56e538908f09864fe99225b908fe35b5732c43f3ad7ad4f52b9f6aae67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant252f0b56e538908f09864fe99225b908fe35b5732c43f3ad7ad4f52b9f6aae67.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00d3d989b865cc98b5feee54980cef5418465734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
