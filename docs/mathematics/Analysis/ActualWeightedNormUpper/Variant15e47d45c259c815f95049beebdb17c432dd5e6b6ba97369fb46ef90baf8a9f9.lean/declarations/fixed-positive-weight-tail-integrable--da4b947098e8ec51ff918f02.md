# fixed_positive_weight_tail_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4b9c05c-af87-9361-0a71-790007291db5",
  "kind": "theorem",
  "lexical_name": "fixed_positive_weight_tail_integrable",
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
  "slug": "fixed-positive-weight-tail-integrable--da4b947098e8ec51ff918f02",
  "source": {
    "blob": "08851934490227b79c9b4f11523797e58b9db58a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 42,
    "path": "GRWTSK/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da4b947098e8ec51ff918f021997024ce3fd8557a77953fa3aeaae0d6e0da0ed",
  "verification": {
    "reference": "docs/verification/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4b9c05c-af87-9361-0a71-790007291db5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_positive_weight_tail_integrable {θ : ℝ} (hθ : 0 < θ) :
    IntegrableOn (tailPrice θ) (Ioi 0) volume := by
  have hm (n : ℕ) : IntegrableOn (fun y : ℝ ↦ y ^ n * Real.exp (-θ * y))
      (Ioi 0) volume := by
    simpa only [Real.rpow_natCast, Real.rpow_one] using
      (integrableOn_rpow_mul_exp_neg_mul_rpow (s := (n : ℝ)) (p := 1) (b := θ)
        (lt_of_lt_of_le (by norm_num : (-1 : ℝ) < 0) (Nat.cast_nonneg n)) (by norm_num) hθ)
  have heq : tailPrice θ = fun y ↦
      2359296 * (y ^ 5 * Real.exp (-θ * y)) +
        73728 * (y ^ 7 * Real.exp (-θ * y)) +
          576 * (y ^ 9 * Real.exp (-θ * y)) := by
    funext y
    unfold tailPrice tailPolynomial
    ring
  rw [heq]
  exact (((hm 5).const_mul 2359296).add ((hm 7).const_mul 73728)).add
    ((hm 9).const_mul 576)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08851934490227b79c9b4f11523797e58b9db58a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
