# squarefreeWeightSum_four_thirds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cff36bf-5f11-3e1a-3bf0-0b7e3209cb35",
  "kind": "theorem",
  "lexical_name": "squarefreeWeightSum_four_thirds",
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
  "slug": "squarefreeweightsum-four-thirds--420bf80ae8dde141fc3f07fa",
  "source": {
    "blob": "191694dcffb955d842ed61ef7f491413ba99656b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 111,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant438e4185da8f497bf7961d9d68db17e4c7d2c818ea8f8252bc8d0b5180478653.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:420bf80ae8dde141fc3f07fa7c6ebf8654ae2f037d69bc6c4e15e1817ff8ba86",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant438e4185da8f497bf7961d9d68db17e4c7d2c818ea8f8252bc8d0b5180478653.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cff36bf-5f11-3e1a-3bf0-0b7e3209cb35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefreeWeightSum_four_thirds (N : Nat) :
    squarefreeWeightSum N <= (4 / 3 : Real) * Real.sqrt (N : Real) + 1 / 2 := by
  by_cases hs : N <= 9
  · have h := squarefreeWeightSum_three_halves N
    have hn : (N : Real) <= 9 := by exact_mod_cast hs
    have hb : Real.sqrt (N : Real) <= 3 := by
      have h := Real.sqrt_le_sqrt hn
      norm_num at h
      exact h
    linarith
  have hn : 1 <= N := by omega
  have hu := reciprocalSqrtSum_upper_unit N hn
  have h4 := reciprocalSqrtSum_lower_next (N / 4)
  have h9 := reciprocalSqrtSum_lower_next (N / 9)
  have hf4 := sqrt_floor_next N 4 (by norm_num)
  have hf9 := sqrt_floor_next N 9 (by norm_num)
  norm_num only [Real.sqrt_natCast_ofNat] at hf4 hf9
  have h := squarefreeWeightSum_subtract_four_nine N
  by_cases h36 : 36 <= N
  · have h36pos : 1 <= N / 36 := by omega
    have hv := reciprocalSqrtSum_upper_unit (N / 36) h36pos
    have hf : Real.sqrt ((N / 36 : Nat) : Real) <= Real.sqrt (N : Real) / 6 := by
      have hc : ((N / 36 : Nat) : Real) <= (N : Real) / 36 := by
        apply (le_div_iff₀ (by norm_num : (0 : Real) < 36)).2
        exact_mod_cast (show N / 36 * 36 <= N by omega)
      have hh := Real.sqrt_le_sqrt hc
      rw [Real.sqrt_div (Nat.cast_nonneg N)] at hh
      norm_num at hh
      exact hh
    linarith
  · have hz : N / 36 = 0 := by omega
    rw [hz] at h
    norm_num [reciprocalSqrtSum] at h
    have hsqrt : 3 <= Real.sqrt (N : Real) := by
      have hc : (9 : Real) <= N := by exact_mod_cast (show 9 <= N by omega)
      have hh := Real.sqrt_le_sqrt hc
      norm_num at hh
      exact hh
    linarith

end RH16FourNineSupport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant438e4185da8f497bf7961d9d68db17e4c7d2c818ea8f8252bc8d0b5180478653.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant438e4185da8f497bf7961d9d68db17e4c7d2c818ea8f8252bc8d0b5180478653.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `191694dcffb955d842ed61ef7f491413ba99656b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
