# twistedPsiCriticalBound_implies_halfPlusEpsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b75b21433614f86c097c9b3683ea0cab0ec1160",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f778dd7f-7597-4442-56b3-2fe6f3f03183",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c39a19e4-ba3c-2c67-0f62-2670e20a88fe",
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
  "slug": "twistedpsicriticalbound-implies-halfplusepsilon--fd433c245fa14a8af36b58c1",
  "source": {
    "blob": "9b75b21433614f86c097c9b3683ea0cab0ec1160",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd433c245fa14a8af36b58c1371368d70aaba0466fa89ba73054ba5f038190a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c39a19e4-ba3c-2c67-0f62-2670e20a88fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–148.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b75b21433614f86c097c9b3683ea0cab0ec1160` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
