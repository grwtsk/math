# logDeriv_completedZeta_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2951ab4e-5eb4-bc4f-a8ae-bec8f5f5ff3a",
  "kind": "lemma",
  "lexical_name": "logDeriv_completedZeta_conj",
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
  "slug": "logderiv-completedzeta-conj--ed7baa292985c8064ebea7e4",
  "source": {
    "blob": "ed874bd9cb2a69f95ecb6b37abad38bb8a7812f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed7baa292985c8064ebea7e433c78fdce757c38f386de3eb27e791d2696ecbb5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2951ab4e-5eb4-bc4f-a8ae-bec8f5f5ff3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_completedZeta_conj {s : ℂ} (hre : 0 < s.re) (hs0 : s ≠ 0) (hs1 : s ≠ 1)
    (hζs : riemannZeta s ≠ 0) :
    logDeriv completedRiemannZeta (starRingEnd ℂ s)
      = starRingEnd ℂ (logDeriv completedRiemannZeta s) := by
  have hcre : 0 < (starRingEnd ℂ s).re := by rwa [Complex.conj_re]
  have hc0 : starRingEnd ℂ s ≠ 0 := (map_ne_zero _).mpr hs0
  have hc1 : starRingEnd ℂ s ≠ 1 := fun h => hs1 (by rw [← Complex.conj_conj s, h, map_one])
  have hζc : riemannZeta (starRingEnd ℂ s) ≠ 0 := by
    rw [_root_.riemannZeta_conj]
    exact (map_ne_zero _).mpr hζs
  rw [Zeta23.WeilEF.logDeriv_completedZeta _ hc1 hζc hcre,
    Zeta23.WeilEF.logDeriv_completedZeta _ hs1 hζs hre, map_add, logDeriv_Gammaℝ_conj,
    logDerivZeta_conj']

/-- The fold symmetry: Λ'/Λ(1 − s̄) = −conj(Λ'/Λ(s)) (Re s > 0, s ≠ 1, ζ(s) ≠ 0). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed874bd9cb2a69f95ecb6b37abad38bb8a7812f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
