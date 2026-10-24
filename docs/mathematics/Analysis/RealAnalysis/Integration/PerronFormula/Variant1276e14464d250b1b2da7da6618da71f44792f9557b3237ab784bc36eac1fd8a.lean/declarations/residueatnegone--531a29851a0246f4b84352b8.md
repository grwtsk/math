# residueAtNegOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52216ce7-c7ea-f1c8-0472-4adb175c15c4",
  "kind": "lemma",
  "lexical_name": "residueAtNegOne",
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
  "slug": "residueatnegone--531a29851a0246f4b84352b8",
  "source": {
    "blob": "37ebc097b2f05a955e08b89d04b4afa1b77f2ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 942,
    "line": 896,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:531a29851a0246f4b84352b8a00aa7d5de3d2c6dee7272d0760e002779e6530b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52216ce7-c7ea-f1c8-0472-4adb175c15c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 896–942.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma residueAtNegOne (xpos : 0 < x) : ∀ᶠ (c : ℝ) in 𝓝[>] 0,
    RectangleIntegral' (f x) (-c - c * I - 1) (c + c * I - 1) = -x⁻¹ := by
  filter_upwards [Ioo_mem_nhdsGT (by linarith : (0 : ℝ) < 1 / 2), diffBddAtNegOne xpos]
  intro c hc bddAbove
  obtain ⟨cpos, _⟩ := hc
  have h_mem {s : ℂ} (hs : s ∈ Square (-1) c) :
      -c ≤ s.re + 1 ∧ s.re + 1 ≤ c ∧ -c ≤ s.im ∧ s.im ≤ c := by
    rw [Square, mem_Rect (by simpa using by linarith) (by simp [cpos.le])] at hs
    simpa using hs
  have RectSub : Square (-1) c \ {-1} ⊆ {0, -1}ᶜ := by
    refine fun s ⟨hs, hs1⟩ ↦ not_or.mpr ⟨?_, hs1⟩
    simpa [Complex.ext_iff] using fun _ _ ↦ by linarith [h_mem hs]
  have fHolo : HolomorphicOn (f x) (Square (-1) c \ {-1}) := (isHolomorphicOn xpos).mono RectSub
  have f1Holo :
      HolomorphicOn ((f x) - (fun (s : ℂ) ↦ -x⁻¹ / (s + 1))) (Square (-1) c \ {-1}) := by
    refine fHolo.sub <| (differentiableOn_const _).neg.div ?_
      fun x hx ↦ sPlusOneNeZero hx.2
    exact differentiableOn_id.add (differentiableOn_const 1)
  have RectMemNhds : Square (-1) c ∈ 𝓝 (-1) := square_mem_nhds (-1) (ne_of_gt cpos)
  obtain ⟨g, gHolo, g_eq_fDiff⟩ :=
    existsDifferentiableOn_of_bddAbove RectMemNhds f1Holo bddAbove
  simp_rw [Square] at fHolo gHolo RectMemNhds
  refine ResidueTheoremOnRectangleWithSimplePole ?_ ?_ RectMemNhds gHolo ?_
  · simpa using cpos.le
  · simpa using cpos.le
  · convert g_eq_fDiff using 3; simp


@[blueprint
  "residuePull1"
  (title := "residuePull1")
  (statement := /--
  For $x>1$ (of course $x>0$ would suffice) and $\sigma>0$, we have
  $$
  \frac1{2\pi i}
  \int_{(\sigma)}\frac{x^s}{s(s+1)}ds =1
  +
  \frac 1{2\pi i}
  \int_{(-1/2)}\frac{x^s}{s(s+1)}ds.
  $$
  -/)
  (proof := /--
  We pull to a square with corners at $-c-i*c$ and $c+i*c$ for $c>0$
  sufficiently small.
  By Lemma \ref{residueAtZero}, the integral over this square is equal to $1$.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean#L896).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ebc097b2f05a955e08b89d04b4afa1b77f2ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
