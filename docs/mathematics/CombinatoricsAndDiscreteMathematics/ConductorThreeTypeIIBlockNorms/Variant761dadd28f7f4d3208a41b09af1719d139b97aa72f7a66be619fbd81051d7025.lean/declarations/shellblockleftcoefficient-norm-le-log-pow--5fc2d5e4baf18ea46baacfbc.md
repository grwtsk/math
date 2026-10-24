# shellBlockLeftCoefficient_norm_le_log_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:398b1c5a-0777-64a5-5343-70aca7508401",
  "kind": "theorem",
  "lexical_name": "shellBlockLeftCoefficient_norm_le_log_pow",
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
  "slug": "shellblockleftcoefficient-norm-le-log-pow--5fc2d5e4baf18ea46baacfbc",
  "source": {
    "blob": "c671112b21e31264fb82ae7f977de5bb083e7d0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 234,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fc2d5e4baf18ea46baacfbc16681c4cd58bd2f9017c1becc077cabbe2c31ab9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:398b1c5a-0777-64a5-5343-70aca7508401`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shellBlockLeftCoefficient_norm_le_log_pow {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) (m : B.Left) :
    ‖shellBlockLeftCoefficient B m‖ ≤
      Real.log ((2 ^ (B.leftExponent + 1) : ℕ) : ℝ) := by
  have hcut := m.2.1
  have hmpos : 0 < m.1.1 := by
    exact (by positivity : 0 < 2 ^ B.leftExponent).trans_le m.2.2.1
  have hlog : Real.log (m.1.1 : ℝ) ≤
      Real.log ((2 ^ (B.leftExponent + 1) : ℕ) : ℝ) := by
    apply Real.log_le_log
    · exact_mod_cast hmpos
    · exact_mod_cast m.2.2.2.le
  rw [shellBlockLeftCoefficient, conductorThreeVaughanLeft, if_pos hcut,
    Complex.norm_real, Real.norm_eq_abs, abs_mul,
    abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
  calc
    |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
        m.1.1 : ℝ)| * ArithmeticFunction.vonMangoldt m.1.1 ≤
        1 * ArithmeticFunction.vonMangoldt m.1.1 :=
      mul_le_mul_of_nonneg_right
        (abs_conductorThreeIntegerValue_cast_le_one_shell m.1.1)
        ArithmeticFunction.vonMangoldt_nonneg
    _ ≤ Real.log ((2 ^ (B.leftExponent + 1) : ℕ) : ℝ) := by
      have hLambda : ArithmeticFunction.vonMangoldt m.1.1 ≤
          Real.log (m.1.1 : ℝ) := ArithmeticFunction.vonMangoldt_le_log
      linarith

/-- Exact-scale left shell energy bound. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c671112b21e31264fb82ae7f977de5bb083e7d0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
