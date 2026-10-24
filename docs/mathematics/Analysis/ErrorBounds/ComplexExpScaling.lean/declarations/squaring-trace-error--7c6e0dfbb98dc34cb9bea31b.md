# squaring_trace_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5967b132-517b-2b0a-def1-c73ba47f4fb9",
  "kind": "theorem",
  "lexical_name": "squaring_trace_error",
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
  "slug": "squaring-trace-error--7c6e0dfbb98dc34cb9bea31b",
  "source": {
    "blob": "6f346671610e4c06e4cb5befd909e7b6ff792218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 116,
    "path": "GRWTSK/Analysis/ErrorBounds/ComplexExpScaling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c6e0dfbb98dc34cb9bea31b8a1843a331d7bca37ebd2cc88b4074dd1d3d3118",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/ComplexExpScaling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5967b132-517b-2b0a-def1-c73ba47f4fb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squaring_trace_error {u : ℂ} (hu : ‖u‖ ≤ 1) (acc : ℕ → ℂ)
    (e : ℝ) (r : ℕ → ℝ) (hseed : ‖u - acc 0‖ ≤ e) (s : ℕ)
    (hstep : ∀ j < s, ‖acc (j + 1) - acc j ^ 2‖ ≤ r j) :
    ‖squaredValue u s - acc s‖ ≤ roundedRadius e r s := by
  induction s with
  | zero => simpa only [squaredValue_zero, roundedRadius] using hseed
  | succ s ih =>
    have hp := ih (fun j hj => hstep j (Nat.lt_succ_of_lt hj))
    have hs : ‖acc s ^ 2 - acc (s + 1)‖ ≤ r s := by
      simpa only [norm_sub_rev] using hstep s (Nat.lt_succ_self s)
    rw [squaredValue_succ]
    calc
      _ = ‖(squaredValue u s ^ 2 - acc s ^ 2) +
          (acc s ^ 2 - acc (s + 1))‖ := by congr 1; abel
      _ ≤ ‖squaredValue u s ^ 2 - acc s ^ 2‖ +
          ‖acc s ^ 2 - acc (s + 1)‖ := norm_add_le _ _
      _ ≤ _ := add_le_add (square_error (norm_squaredValue_le_one hu s) hp) hs

/-- The exact exponential, rather than the Taylor sample, has norm at most one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ComplexExpScaling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ComplexExpScaling.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f346671610e4c06e4cb5befd909e7b6ff792218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
