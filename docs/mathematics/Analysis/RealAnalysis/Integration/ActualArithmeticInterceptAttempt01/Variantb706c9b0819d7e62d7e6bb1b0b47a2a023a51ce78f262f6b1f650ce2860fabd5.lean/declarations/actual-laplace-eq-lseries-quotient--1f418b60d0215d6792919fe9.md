# actual_laplace_eq_LSeries_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e36fd76-952d-3e47-484e-e9b1c42ea7ac",
  "kind": "theorem",
  "lexical_name": "actual_laplace_eq_LSeries_quotient",
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
  "slug": "actual-laplace-eq-lseries-quotient--1f418b60d0215d6792919fe9",
  "source": {
    "blob": "70dce43833e653a0e8b110c0ac669754cc27026f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variantb706c9b0819d7e62d7e6bb1b0b47a2a023a51ce78f262f6b1f650ce2860fabd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f418b60d0215d6792919fe9b415ad83411292fd42d1b98443dd9ed3dd28a2cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variantb706c9b0819d7e62d7e6bb1b0b47a2a023a51ce78f262f6b1f650ce2860fabd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e36fd76-952d-3e47-484e-e9b1c42ea7ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_laplace_eq_LSeries_quotient {s : ℝ} (hs : 0 < s) :
    ((actualLaplace s : ℝ):ℂ) =
      (LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) (1+(s:ℂ))-
        (s:ℂ)⁻¹+(Real.eulerMascheroniConstant:ℂ))/(s:ℂ) := by
  have h := actual_prefix_laplace_eq_LSeries hs
  rw [Complex.ofReal_mul] at h
  have hn : (s:ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (ne_of_gt hs)
  rw [actual_laplace_compensation hs]
  push_cast
  rw [show ((s+1:ℝ):ℂ) = 1+(s:ℂ) by push_cast;ring] at h
  rw [←h]
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variantb706c9b0819d7e62d7e6bb1b0b47a2a023a51ce78f262f6b1f650ce2860fabd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt01/Variantb706c9b0819d7e62d7e6bb1b0b47a2a023a51ce78f262f6b1f650ce2860fabd5.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70dce43833e653a0e8b110c0ac669754cc27026f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
