# squarefreeWeightSum_three_halves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eaf175d-1237-5a29-22f9-100f1e8e4612",
  "kind": "theorem",
  "lexical_name": "squarefreeWeightSum_three_halves",
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
  "slug": "squarefreeweightsum-three-halves--bdd1878bfcdd1b71596262ed",
  "source": {
    "blob": "5388826d5112797c622ec2c364ba65acc3289eba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdd1878bfcdd1b71596262edd89ad7587a9f07416e76bb303e7eb9c17b90968c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eaf175d-1237-5a29-22f9-100f1e8e4612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefreeWeightSum_three_halves (N : Nat) :
    squarefreeWeightSum N <= (3 / 2 : Real) * Real.sqrt (N : Real) := by
  by_cases hN : N = 0
  · subst N
    norm_num [squarefreeWeightSum]
  have hu := reciprocalSqrtSum_upper_unit N (by omega)
  have hl := reciprocalSqrtSum_lower_next (N / 4)
  have hf : (N : Real) <= 4 * ((N / 4 + 1 : Nat) : Real) := by
    exact_mod_cast (show N <= 4 * (N / 4 + 1) by omega)
  have hf4 : (N : Real) / 4 <= ((N / 4 + 1 : Nat) : Real) := by linarith
  have hhalf : Real.sqrt (N : Real) / 2 <=
      Real.sqrt ((N / 4 + 1 : Nat) : Real) := by
    have h := Real.sqrt_le_sqrt hf4
    rw [Real.sqrt_div (Nat.cast_nonneg N)] at h
    norm_num at h
    simpa only [Nat.cast_add, Nat.cast_one] using h
  have h := squarefreeWeightSum_subtract_four N
  linarith

end RH16SquarefreeSampling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5388826d5112797c622ec2c364ba65acc3289eba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
