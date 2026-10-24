# residueAtZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbc62709-b74a-5006-4b35-ff5bdc6407ac",
  "kind": "lemma",
  "lexical_name": "residueAtZero",
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
  "slug": "residueatzero--d3f3725a9530d08d5352d83e",
  "source": {
    "blob": "37ebc097b2f05a955e08b89d04b4afa1b77f2ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 895,
    "line": 853,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3f3725a9530d08d5352d83ebf4ed453f6b558a9f5bf69a7fdccdc6e7ef839ea",
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

Occurrence: `result:bbc62709-b74a-5006-4b35-ff5bdc6407ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 853–895.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma residueAtZero (xpos : 0 < x) : ∀ᶠ (c : ℝ) in 𝓝[>] 0,
    RectangleIntegral' (f x) (-c - c * I) (c + c * I) = 1 := by
  /-- For $c>0$ sufficiently small, -/
  filter_upwards
    [Ioo_mem_nhdsGT (by linarith : (0 : ℝ) < 1 / 2), diffBddAtZero xpos]
  intro c hc bddAbove
  obtain ⟨cpos, _⟩ := hc
  have RectSub : Square 0 c \ {0} ⊆ {0, -1}ᶜ := by
    refine fun s ⟨hs, hs0⟩ ↦ not_or.mpr ⟨hs0, ?_⟩
    rw [Square, mem_Rect (by simpa using by linarith) (by simp [cpos.le])] at hs
    replace hs : -c ≤ s.re ∧ s.re ≤ c ∧ -c ≤ s.im ∧ s.im ≤ c := by simpa using hs
    simpa [Complex.ext_iff] using fun h ↦ by linarith
  have fHolo : HolomorphicOn (f x) (Square 0 c \ {0}) := (isHolomorphicOn xpos).mono RectSub
  have f1Holo : HolomorphicOn ((f x) - (fun (s : ℂ) ↦ 1 / s)) (Square 0 c \ {0}) :=
    fHolo.sub (by simpa using differentiableOn_inv.mono fun s hs ↦ hs.2)

  have RectMemNhds : Square 0 c ∈ 𝓝 0 := square_mem_nhds 0 (ne_of_gt cpos)
  /--
  $x^s/(s(s+1))$ is equal to $1/s$ plus a function, $g$, say,
  holomorphic in the whole rectangle (by Lemma \ref{diffBddAtZero}).
  -/
  obtain ⟨g, gHolo, g_eq_fDiff⟩ :=
    existsDifferentiableOn_of_bddAbove RectMemNhds f1Holo bddAbove
  simp_rw [Square, add_zero] at fHolo gHolo RectMemNhds
  /-- Now apply Lemma \ref{ResidueTheoremOnRectangleWithSimplePole}. -/
  refine ResidueTheoremOnRectangleWithSimplePole ?_ ?_ RectMemNhds gHolo ?_
  any_goals simpa using cpos.le
  convert g_eq_fDiff using 3 <;> simp [Square]



@[blueprint
  "residueAtNegOne"
  (title := "residueAtNegOne")
  (statement := /--
  Let $x>0$. Then for all sufficiently small $c>0$, we have that
  $$
  \frac1{2\pi i}
  \int_{-c-i*c-1}^{c+ i*c-1}\frac{x^s}{s(s+1)}ds = -\frac1x.
  $$
  -/)
  (proof := /-- Compute the integral. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean#L853).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ebc097b2f05a955e08b89d04b4afa1b77f2ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
