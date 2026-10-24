# residueAtNegOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 888,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f4b711f-3b2a-5a8a-f3b9-6a6c81af5e4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15a75138-0535-91da-9a23-e60f5fb2127a",
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
  "slug": "residueatnegone--a06cc87574a7fb16d1838ba6",
  "source": {
    "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 934,
    "line": 888,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a06cc87574a7fb16d1838ba6b7e039253ea662d206502134d0cd547862d36f3a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15a75138-0535-91da-9a23-e60f5fb2127a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 888–934.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean#L888).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75667ad1313ed12d8a0eb632481031c24c9a4686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
