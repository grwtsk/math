# twistedPsiCriticalBound_implies_halfPlusEpsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bb2f1ba-295f-f9b4-9284-72215414e509",
  "kind": "theorem",
  "lexical_name": "twistedPsiCriticalBound_implies_halfPlusEpsilon",
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
  "slug": "twistedpsicriticalbound-implies-halfplusepsilon--56bf5524bb6c5f2854ee6ba8",
  "source": {
    "blob": "1467b976b9f95f44a7bd4467bb4d758fb57fc567",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variante631c61e5db0d525e80879c76637191164c85da31bf92532605951bf6d59d1af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56bf5524bb6c5f2854ee6ba8e0c19029e83bafc6751206ab630d33f00d096f63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variante631c61e5db0d525e80879c76637191164c85da31bf92532605951bf6d59d1af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bb2f1ba-295f-f9b4-9284-72215414e509`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twistedPsiCriticalBound_implies_halfPlusEpsilon :
    TwistedPsiCriticalBound → TwistedPsiHalfPlusEpsilon := by
  rintro ⟨C₀, hC₀, x₀, hx₀, hCritical⟩ epsilon hepsilon
  let A : ℝ := halfPlusEpsilonEarlyMass x₀
  let B : ℝ := 4 / epsilon ^ 2
  refine ⟨C₀ * B + A, ?_, ?_⟩
  · have hB : 0 ≤ B := by
      dsimp [B]
      positivity
    have hA : 0 ≤ A := halfPlusEpsilonEarlyMass_nonneg x₀
    positivity
  · intro x hx
    have hxpow : 1 ≤ (x : ℝ) ^ (1 / 2 + epsilon) := by
      apply Real.one_le_rpow
      · exact_mod_cast (by omega : 1 ≤ x)
      · linarith
    by_cases hmain : x₀ ≤ x
    · have hcrit := hCritical x hmain
      have hrate := twistedPsiCriticalRate_le_halfPlusEpsilon hepsilon x (by omega)
      have hB : 0 ≤ B := by
        dsimp [B]
        positivity
      have hpow0 : 0 ≤ (x : ℝ) ^ (1 / 2 + epsilon) :=
        le_trans (by norm_num) hxpow
      calc
        |conductorThreePsi x| ≤ C₀ * twistedPsiCriticalRate x := hcrit
        _ ≤ C₀ * (B * (x : ℝ) ^ (1 / 2 + epsilon)) :=
          mul_le_mul_of_nonneg_left hrate hC₀
        _ ≤ (C₀ * B + A) * (x : ℝ) ^ (1 / 2 + epsilon) := by
          have hA : 0 ≤ A := halfPlusEpsilonEarlyMass_nonneg x₀
          nlinarith
    · have hearly : |conductorThreePsi x| ≤ A := by
        exact conductorThreePsi_abs_le_earlyMass hx
          (Nat.le_of_lt (lt_of_not_ge hmain))
      have hCB : 0 ≤ C₀ * B := by positivity
      have hA : 0 ≤ A := halfPlusEpsilonEarlyMass_nonneg x₀
      calc
        |conductorThreePsi x| ≤ A := hearly
        _ ≤ A * (x : ℝ) ^ (1 / 2 + epsilon) := by nlinarith
        _ ≤ (C₀ * B + A) * (x : ℝ) ^ (1 / 2 + epsilon) := by
          nlinarith

/-- Matrix decay with an arbitrarily small power loss. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variante631c61e5db0d525e80879c76637191164c85da31bf92532605951bf6d59d1af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variante631c61e5db0d525e80879c76637191164c85da31bf92532605951bf6d59d1af.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1467b976b9f95f44a7bd4467bb4d758fb57fc567` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
