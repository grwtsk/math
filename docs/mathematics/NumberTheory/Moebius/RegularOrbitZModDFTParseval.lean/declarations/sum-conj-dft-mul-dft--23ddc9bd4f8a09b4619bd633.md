# sum_conj_dft_mul_dft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe73e153-c27e-f83a-e369-a76bf00c60ac",
  "kind": "theorem",
  "lexical_name": "sum_conj_dft_mul_dft",
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
  "slug": "sum-conj-dft-mul-dft--23ddc9bd4f8a09b4619bd633",
  "source": {
    "blob": "6b33dd290e6721a5fe505484dd1864d9b9cd2e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23ddc9bd4f8a09b4619bd633d7319319d7076ac984bc52c2363ec9b357403516",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe73e153-c27e-f83a-e369-a76bf00c60ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_conj_dft_mul_dft
    (d : ℕ) [NeZero d]
    (C : ZMod (d * d) → ℂ) :
    (∑ k : ZMod (d * d),
      star (ZMod.dft C k) * ZMod.dft C k) =
      (((d * d : ℕ) : ℂ)) *
        (∑ s : ZMod (d * d), star (C s) * C s) := by
  have hnorm : (∑ k : ZMod (d * d), ‖ZMod.dft C k‖ ^ 2) =
      ((d * d : ℕ) : ℝ) * ∑ s : ZMod (d * d), ‖C s‖ ^ 2 := by
    rw [← sum_norm_sq_stdAddCharResidueFourier_eq_mathlibDft d C]
    exact stdAddChar_parseval_norm_sq (d * d) C
  simp only [← Complex.normSq_eq_norm_sq] at hnorm
  have hc := congrArg (fun x : ℝ => (x : ℂ)) hnorm
  simpa only [Complex.ofReal_sum, Complex.ofReal_mul, Complex.ofReal_natCast,
    Complex.normSq_eq_conj_mul_self, starRingEnd_apply] using hc

/-- Exact unnormalized squared-norm Parseval identity for Mathlib's
`ZMod.dft` at square modulus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b33dd290e6721a5fe505484dd1864d9b9cd2e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
