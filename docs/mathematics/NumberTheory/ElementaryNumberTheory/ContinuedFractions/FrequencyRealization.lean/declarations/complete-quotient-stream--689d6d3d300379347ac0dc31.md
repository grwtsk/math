# complete_quotient_stream

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d11c6e3e-c16f-9b73-a6f3-3522db0fe882",
  "kind": "theorem",
  "lexical_name": "complete_quotient_stream",
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
  "slug": "complete-quotient-stream--689d6d3d300379347ac0dc31",
  "source": {
    "blob": "9dfe868ea52027095f1c600ae0983ff6f22db1b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 188,
    "path": "GRWTSK/NumberTheory/ContinuedFractions/FrequencyRealization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:689d6d3d300379347ac0dc3199cc680031c7c1e4e282e729a69a83924e6ae3dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d11c6e3e-c16f-9b73-a6f3-3522db0fe882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_quotient_stream (a : ℕ → ℕ) (ha : ∀ n, 0 < a n)
    {x : ℕ → ℝ} (hbox : x ∈ tailBox a)
    (hrec : ∀ n, (x n - (a n : ℝ)) * x (n + 1) = 1) (n : ℕ) :
    GenContFract.IntFractPair.stream (x 0) n =
      some ⟨(a n : ℤ), (x (n + 1))⁻¹⟩ := by
  induction n with
  | zero => rw [GenContFract.IntFractPair.stream_zero, complete_quotient_pair a ha hbox hrec]
  | succ n ih =>
    have hp : 0 < x (n + 1) :=
      lt_of_lt_of_le (by exact_mod_cast ha (n + 1)) (hbox (n + 1)).1
    rw [GenContFract.IntFractPair.stream_succ_of_some ih (inv_ne_zero (ne_of_gt hp))]
    simp only [inv_inv, complete_quotient_pair a ha hbox hrec]

/-- The reciprocal first quotient is a real frequency strictly between zero and one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ContinuedFractions/FrequencyRealization.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dfe868ea52027095f1c600ae0983ff6f22db1b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
