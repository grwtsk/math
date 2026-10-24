# diffBddAtZero

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
      "line": 762,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56c83517-8328-5931-efac-0a429e801e5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2dbc659b-81ab-3607-5277-7bc1cb5498f9",
  "kind": "lemma",
  "lexical_name": "diffBddAtZero",
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
  "slug": "diffbddatzero--a03f88cfda4201b9ca18785b",
  "source": {
    "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 807,
    "line": 762,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a03f88cfda4201b9ca18785bdbbe8ec52580aa258a9aae6ea92d091f6a52ad36",
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

Occurrence: `result:2dbc659b-81ab-3607-5277-7bc1cb5498f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 762–807.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma diffBddAtZero {x : ℝ} (xpos : 0 < x) :
    ∀ᶠ (c : ℝ) in 𝓝[>] 0,
      BddAbove ((norm ∘ (fun (s : ℂ) ↦ (x : ℂ) ^ s / (s * (s + 1)) - 1 / s)) ''
        (Square 0 c \ {0})) := by

  apply bddAbove_square_of_tendsto
  suffices
      Tendsto
        (norm ∘ (fun (s : ℂ) ↦ ↑x ^ s / s - ↑x ^ (0 : ℂ) / s - ↑x ^ s / (1 + s)))
        (𝓝[≠] 0)
        (𝓝 (‖(deriv (fun (s : ℂ) ↦ (x : ℂ) ^ s) 0) -
          x ^ (0 : ℂ) / (1 + 0)‖))
    by
    apply this.congr'
    filter_upwards
      [diff_mem_nhdsWithin_compl (isOpen_compl_singleton.mem_nhds
        (Set.mem_compl_singleton_iff.mpr (by norm_num : (0 : ℂ) ≠ -1))) {0}]
    with s hs
    rw [Function.comp_apply, Function.comp_apply, keyIdentity _ hs.2 hs.1, cpow_zero]; ring_nf
  have hx0 : (x : ℂ) ≠ 0 := slitPlane_ne_zero (.inl xpos)
  refine (Tendsto.sub ?_ (tendsto_nhdsWithin_of_tendsto_nhds ?_)).norm
  · convert hasDerivAt_iff_tendsto_slope.mp
      (differentiableAt_fun_id.const_cpow (.inl hx0)).hasDerivAt using 2
    rw [slope_def_field]; ring
  · exact (continuous_id.const_cpow (.inl hx0)).tendsto 0
      |>.div (tendsto_const_nhds.add tendsto_id) (by norm_num)


@[blueprint
  "diffBddAtNegOne"
  (title := "diffBddAtNegOne")
  (statement := /--
  Let $x>0$. Then for $0 < c < 1 /2$, we have that the function
  $$
  s ↦ \frac{x^s}{s(s+1)} - \frac{-x^{-1}}{s+1}
  $$
  is bounded above on the rectangle with corners at $-1-c-i*c$ and $-1+c+i*c$ (except at $s=-1$).
  -/)
  (proof := /--
  Applying Lemma \ref{keyIdentity}, the
   function $s ↦ x^s/s(s+1) - x^{-1}/(s+1) = x^s/s - x^s/(s+1) - (-x^{-1})/(s+1)$. The first term
   is bounded for $s$
   away from $0$. The last two terms are the difference quotient of the function $s ↦ x^s$ at
   $-1$; since it's differentiable, the difference remains bounded as $s\to -1$.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean#L762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75667ad1313ed12d8a0eb632481031c24c9a4686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
