# pole_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e89f748-e55e-435c-b7c9-b980d47a4a18",
  "kind": "theorem",
  "lexical_name": "pole_transport",
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
  "slug": "pole-transport--821172068ffc30b53dd90576",
  "source": {
    "blob": "1a43a2268cb9ffd5d36054c7408f6055147e2325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transforms/Variant9555d105c04ac39c283ca86052990c6b78c458434e3d66efdbd441acdc5389fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:821172068ffc30b53dd905766612db54d5e146eabb3ad5485e36765a3910b9c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transforms/Variant9555d105c04ac39c283ca86052990c6b78c458434e3d66efdbd441acdc5389fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e89f748-e55e-435c-b7c9-b980d47a4a18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_transport (A : ℝ) (hA : 1 ≤ A) :
    Zeta23.paperFT (complexCorrelation A) (I / 2) +
      Zeta23.paperFT (complexCorrelation A) (-I / 2) =
        (realPoleContribution (actualTest A) : ℂ) := by
  have hp := paperFT_moment A (1 / 2)
  have hn := paperFT_moment A (-1 / 2)
  have hpa : -I * ((1 / 2 : ℝ) : ℂ) = -I / 2 := by push_cast; ring
  have hna : -I * ((-1 / 2 : ℝ) : ℂ) = I / 2 := by push_cast; ring
  have hpf : (fun x : ℝ ↦ Real.exp ((1 / 2) * x) * actualTest A x) =
      (fun x : ℝ ↦ Real.exp (x / 2) * actualTest A x) := by
    funext x
    congr 2
    ring
  have hnf : (fun x : ℝ ↦ Real.exp ((-1 / 2) * x) * actualTest A x) =
      (fun x : ℝ ↦ Real.exp (-x / 2) * actualTest A x) := by
    funext x
    congr 2
    ring
  rw [hpa, hpf] at hp
  rw [hna, hnf] at hn
  have hc2 : conj (2 : ℂ) = 2 := by
    change conj ((2 : ℝ) : ℂ) = ((2 : ℝ) : ℂ)
    exact Complex.conj_ofReal 2
  have hcpos : conj (I / 2 : ℂ) = -I / 2 := by
    rw [map_div₀, Complex.conj_I, hc2]
  have hcneg : conj (-I / 2 : ℂ) = I / 2 := by
    rw [map_div₀, map_neg, Complex.conj_I, hc2, neg_neg]
  rw [complexCorrelation_eq_weilTest,
    Zeta23.EF.paperFT_weilTest (complexTest_continuous A hA) (complexTest_continuous A hA)
      (complexTest_hasCompactSupport A hA) (complexTest_hasCompactSupport A hA) (I / 2),
    Zeta23.EF.paperFT_weilTest (complexTest_continuous A hA) (complexTest_continuous A hA)
      (complexTest_hasCompactSupport A hA) (complexTest_hasCompactSupport A hA) (-I / 2),
    hcpos, hcneg, hp, hn]
  simp only [Complex.conj_ofReal]
  unfold realPoleContribution
  push_cast
  ring

/-- The multiplier and its sign agree with the original quarter-line source convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transforms/Variant9555d105c04ac39c283ca86052990c6b78c458434e3d66efdbd441acdc5389fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transforms/Variant9555d105c04ac39c283ca86052990c6b78c458434e3d66efdbd441acdc5389fe.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a43a2268cb9ffd5d36054c7408f6055147e2325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
