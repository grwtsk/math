# squaring_chain_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97c479c8-3fa6-35f9-dcc1-86e42bbdc4cc",
  "kind": "theorem",
  "lexical_name": "squaring_chain_sound",
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
  "slug": "squaring-chain-sound--b14d835af6f121686401034a",
  "source": {
    "blob": "1b3e5241c50b19df80f2f902ac161ed1e7beedd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 58,
    "path": "GRWTSK/Analysis/Complex/DyadicExponentialEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b14d835af6f121686401034a3b8e037995c8f9e0d65523fbe81498bb0759661f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97c479c8-3fa6-35f9-dcc1-86e42bbdc4cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squaring_chain_sound (a : ℂ) (values : ℕ → ℂ) (rounding : ℕ → ℝ)
    (initial : ℝ) (hinitial : ‖a - values 0‖ ≤ initial) (s : ℕ)
    (hstep : ∀ j, j < s → ‖values j ^ 2 - values (j + 1)‖ ≤ rounding j) :
    ‖squareValue a s - values s‖ ≤ propagatedError values rounding initial s := by
  revert hstep
  induction s with
  | zero => intro _; exact hinitial
  | succ s ih =>
      intro hstep
      have hp := ih (fun j hj => hstep j (Nat.lt_trans hj (Nat.lt_succ_self s)))
      exact norm_rounded_square_sub_le (squareValue a s) (values s) (values (s + 1))
        (propagatedError values rounding initial s) (rounding s) hp
        (hstep s (Nat.lt_succ_self s))

/-- Exact algebraic squaring sets only the local rounding allowances to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/DyadicExponentialEnclosure.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b3e5241c50b19df80f2f902ac161ed1e7beedd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
