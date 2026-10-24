# error_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f868736-746e-7020-78ab-55bc99a6e228",
  "kind": "theorem",
  "lexical_name": "error_window",
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
  "slug": "error-window--522947b01b4e6db17cbd3575",
  "source": {
    "blob": "75a3fa95f986354db3f9c550b4fbfdb858ca5471",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variant93ec301ac0ae6c517d9f3e6d3666145e51610e8408db61568dc5bc2d32229454.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:522947b01b4e6db17cbd35754b26583c2adcc17fab403a5e737427fcc6a59f43",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variant93ec301ac0ae6c517d9f3e6d3666145e51610e8408db61568dc5bc2d32229454.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f868736-746e-7020-78ab-55bc99a6e228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem error_window {Y : ℝ} (hY : 7 ≤ Y) :
    mangoldtLogError (Real.log Y) - mangoldtLogError (Real.log 7) =
      (∑ n ∈ Finset.Ioc 7 (Nat.floor Y), (vonMangoldt n : ℝ) / (n : ℝ)) -
        Real.log (Y / 7) := by
  have hp : 0 < Y := by linarith
  have hs := closed_prefix_split hY (fun n => (vonMangoldt n : ℝ) / (n : ℝ))
  unfold mangoldtLogError mangoldtLogPrefix weightedMangoldt
  rw [Real.exp_log hp, Real.exp_log (by norm_num : (0 : ℝ) < 7), Nat.floor_ofNat,
    Real.log_div hp.ne' (by norm_num : (7 : ℝ) ≠ 0)]
  linarith

/-- The exact square expansion retains both weighted sums and the complete closed psi boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variant93ec301ac0ae6c517d9f3e6d3666145e51610e8408db61568dc5bc2d32229454.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variant93ec301ac0ae6c517d9f3e6d3666145e51610e8408db61568dc5bc2d32229454.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a3fa95f986354db3f9c550b4fbfdb858ca5471` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
