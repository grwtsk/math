# firstRieszPrefix_eq_global_normalized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e39ba038-c60c-a0d6-1ed1-165c8bb0454e",
  "kind": "theorem",
  "lexical_name": "firstRieszPrefix_eq_global_normalized",
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
  "slug": "firstrieszprefix-eq-global-normalized--f115ee4f443c43a007a58f17",
  "source": {
    "blob": "2c162633e0f9251c3724b11a7454aeaebc60bbff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 155,
    "path": "GRWTSK/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f115ee4f443c43a007a58f17db9b8427e22c21ffe5aff9a0d4a3f790375697ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e39ba038-c60c-a0d6-1ed1-165c8bb0454e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstRieszPrefix_eq_global_normalized (N : ℕ) (x : ℝ)
    (hx : 1 < x) (hN : 3 ≤ N) (hxN : x ≤ N) :
    (firstRieszPrefix N x : ℂ) = (x : ℂ) ^ 2 / 2 + fullRieszZeroValue x +
      (rationalRieszPrimitive 2 x : ℂ) + normalizationAtTwo 2 +
        ((x - 2 : ℝ) : ℂ) * (normalizationAtThree 2 - normalizationAtTwo 2) := by
  let a : ℝ := min x 2
  have ha : 1 < a := lt_min hx (by norm_num)
  have ha2 : a ≤ 2 := min_le_right _ _
  have hax : a ≤ x := min_le_left _ _
  have he := firstRieszPrefix_eq_boundary_normalized N a x ha ha2 hN hax hxN
  have hp := congrArg (fun t : ℝ => (t : ℂ)) (primitive_change_base_all a 2 x ha ha2 hax)
  have h2 := congrArg (fun t : ℝ => (t : ℂ))
    (primitive_change_base_all a 2 2 ha ha2 ha2)
  have h3 := congrArg (fun t : ℝ => (t : ℂ))
    (primitive_change_base_all a 2 3 ha ha2 (by linarith))
  push_cast at hp h2 h3
  unfold normalizationAtTwo normalizationAtThree at he ⊢
  push_cast at he ⊢
  linear_combination he + hp - (3 - (x : ℂ)) * h2 - ((x : ℂ) - 2) * h3

end GRWTSK.NumberTheory.Chebyshev.GlobalRieszAffineNormalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c162633e0f9251c3724b11a7454aeaebc60bbff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
