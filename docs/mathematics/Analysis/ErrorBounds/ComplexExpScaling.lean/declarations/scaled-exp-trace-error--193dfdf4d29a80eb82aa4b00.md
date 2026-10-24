# scaled_exp_trace_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81c88b08-c814-1670-4a30-17dc36ad2b0c",
  "kind": "theorem",
  "lexical_name": "scaled_exp_trace_error",
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
  "slug": "scaled-exp-trace-error--193dfdf4d29a80eb82aa4b00",
  "source": {
    "blob": "6f346671610e4c06e4cb5befd909e7b6ff792218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 173,
    "path": "GRWTSK/Analysis/ErrorBounds/ComplexExpScaling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:193dfdf4d29a80eb82aa4b00b8d5aed17d05b10b6850b721452038372b7a1142",
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

Occurrence: `result:81c88b08-c814-1670-4a30-17dc36ad2b0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_exp_trace_error {w : ℂ} {B : ℝ} (hw : ‖w‖ ≤ B) (hre : w.re ≤ 0)
    (s M : ℕ) (hguard : (B / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℝ))
    (acc : ℕ → ℂ) (e_seed : ℝ) (r : ℕ → ℝ)
    (hseed : ‖taylorValue (w / (2 ^ s : ℕ)) M - acc 0‖ ≤ e_seed)
    (hstep : ∀ j < s, ‖acc (j + 1) - acc j ^ 2‖ ≤ r j) :
    ‖Complex.exp w - acc s‖ ≤
      roundedRadius (taylorTail (B / (2 ^ s : ℕ)) M + e_seed) r s := by
  have h0 : ‖Complex.exp (w / (2 ^ s : ℕ)) - acc 0‖ ≤
      taylorTail (B / (2 ^ s : ℕ)) M + e_seed := by
    calc
      _ = ‖(Complex.exp (w / (2 ^ s : ℕ)) - taylorValue (w / (2 ^ s : ℕ)) M) +
          (taylorValue (w / (2 ^ s : ℕ)) M - acc 0)‖ := by congr 1; abel
      _ ≤ _ := (norm_add_le _ _).trans (add_le_add (scaled_seed_error hw s M hguard) hseed)
  have h := squaring_trace_error (norm_exp_le_one (scaled_re_nonpos hre s))
    acc _ r h0 s hstep
  simpa only [exponential_reconstruct] using h

/-- Elementary rational majorant for the reconstruction radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ComplexExpScaling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ComplexExpScaling.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f346671610e4c06e4cb5befd909e7b6ff792218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
