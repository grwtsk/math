# mass_prime_two_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d8abb67-afe6-7cb3-26f5-4d92865ff0e5",
  "kind": "theorem",
  "lexical_name": "mass_prime_two_lower",
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
  "slug": "mass-prime-two-lower--b8ad4fb4f46cb95f0525f95b",
  "source": {
    "blob": "cc6b3b26e5107493c63c2dbe7ef3636807412367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant4496e2c3775b5e1eea1144de17c5e535c2b0bf4a4fb1b5b8e11311af74d4da31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8ad4fb4f46cb95f0525f95be9c8412134500583172db73f5240540e2ce31db4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant4496e2c3775b5e1eea1144de17c5e535c2b0bf4a4fb1b5b8e11311af74d4da31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d8abb67-afe6-7cb3-26f5-4d92865ff0e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mass_prime_two_lower (A c : ℝ) (hA : 1 ≤ A) :
    Real.exp (-c * Real.log 2) ≤ actualClosedPrimeLogMass A c := by
  let z : ℂ := (c : ℂ) + (Real.pi / Real.log 2 : ℝ) * I
  have hn := actualClosedPrimeLogPotential_norm_le_mass A c (Real.pi / Real.log 2)
  have hl : -actualClosedPrimeLogMass A c ≤ (actualClosedPrimeLogPotential A z).re := by
    exact (neg_le_neg hn).trans
      ((neg_le_neg (Complex.abs_re_le_norm _)).trans (neg_abs_le _))
  have hd := actualClosedPrimeLogPotential_centered_re_prime_two A c hA
  simp only [Complex.sub_re, ← actualClosedPrimeLogMass] at hd
  change (actualClosedPrimeLogPotential A z).re - actualClosedPrimeLogMass A c ≤ _ at hd
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant4496e2c3775b5e1eea1144de17c5e535c2b0bf4a4fb1b5b8e11311af74d4da31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant4496e2c3775b5e1eea1144de17c5e535c2b0bf4a4fb1b5b8e11311af74d4da31.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc6b3b26e5107493c63c2dbe7ef3636807412367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
