# actual_signal_derivative_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4296a76c-f719-7f02-7a39-18c8c2098166",
  "kind": "theorem",
  "lexical_name": "actual_signal_derivative_bound",
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
  "slug": "actual-signal-derivative-bound--08fde6fbc243d9c91e3d4b42",
  "source": {
    "blob": "e8475b753f4394104b28eaf3c12aaff839350b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 79,
    "path": "GRWTSK/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08fde6fbc243d9c91e3d4b4278890def37d179f1afee99624fa7d2f75fa8e910",
  "verification": {
    "reference": "docs/verification/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4296a76c-f719-7f02-7a39-18c8c2098166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_signal_derivative_bound {x : ℝ} (hx : 1 ≤ x) :
    |signalDerivative x| ≤ 11 / 12 := by
  have hx0 : 0 ≤ x := by linarith
  have h1 : x ^ (-1 / 4 : ℝ) ≤ 1 :=
    Real.rpow_le_one_of_one_le_of_nonpos hx (by norm_num)
  have h2 : x ^ (-1 / 12 : ℝ) ≤ 1 :=
    Real.rpow_le_one_of_one_le_of_nonpos hx (by norm_num)
  have ha : |(3 / 4 : ℝ) * x ^ (-1 / 4 : ℝ) * Real.sin (x ^ (1 / 6 : ℝ))| ≤ 3 / 4 := by
    rw [abs_mul, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 3 / 4),
      abs_of_nonneg (Real.rpow_nonneg hx0 _)]
    calc
      _ ≤ (3 / 4 : ℝ) * 1 * 1 := by gcongr; exact Real.abs_sin_le_one _
      _ = _ := by ring
  have hb : |(1 / 6 : ℝ) * x ^ (-1 / 12 : ℝ) * Real.cos (x ^ (1 / 6 : ℝ))| ≤ 1 / 6 := by
    rw [abs_mul, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 6),
      abs_of_nonneg (Real.rpow_nonneg hx0 _)]
    calc
      _ ≤ (1 / 6 : ℝ) * 1 * 1 := by gcongr; exact Real.abs_cos_le_one _
      _ = _ := by ring
  apply (abs_add_le _ _).trans
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8475b753f4394104b28eaf3c12aaff839350b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
