# diffBddAtNegOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abfd9c1b-85c0-5f7a-fdf3-fd34f398c6b4",
  "kind": "lemma",
  "lexical_name": "diffBddAtNegOne",
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
  "slug": "diffbddatnegone--72a6fa8d235bc8224bfff944",
  "source": {
    "blob": "37ebc097b2f05a955e08b89d04b4afa1b77f2ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 852,
    "line": 816,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72a6fa8d235bc8224bfff944befc28aa579d2f0c20ceecb31b8c2b575cc1d5d2",
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

Occurrence: `result:abfd9c1b-85c0-5f7a-fdf3-fd34f398c6b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 816–852.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma diffBddAtNegOne {x : ℝ} (xpos : 0 < x) :
    ∀ᶠ (c : ℝ) in 𝓝[>] 0,
      BddAbove ((norm ∘ (fun (s : ℂ) ↦ (x : ℂ) ^ s / (s * (s + 1)) -
          (-x⁻¹) / (s + 1))) '' (Square (-1) c \ {-1})) := by

  apply bddAbove_square_of_tendsto
  suffices
      Tendsto (norm ∘ (fun (s : ℂ) ↦ ↑x ^ s / s - (↑x ^ s / (s + 1) - x⁻¹ / (s + 1))))
        (𝓝[≠] (-1))
        (𝓝 (‖x ^ (-1 : ℂ) / -1 - (deriv (fun (s : ℂ) ↦ (x : ℂ) ^ s) (-1))‖))
    by
    apply this.congr'
    filter_upwards
      [diff_mem_nhdsWithin_compl (isOpen_compl_singleton.mem_nhds
        (Set.mem_compl_singleton_iff.mpr (by norm_num : (-1 : ℂ) ≠ 0))) {-1}]
    with s hs
    rw [Function.comp_apply, Function.comp_apply, keyIdentity _ hs.1 hs.2]
    ring_nf
  have hx0 : (x : ℂ) ≠ 0 := slitPlane_ne_zero (.inl xpos)
  refine (Tendsto.sub (tendsto_nhdsWithin_of_tendsto_nhds ?_) ?_).norm
  · exact ((continuous_id.const_cpow (.inl hx0)).tendsto _).div tendsto_id (by norm_num)
  · convert hasDerivAt_iff_tendsto_slope.mp
      (differentiableAt_fun_id.const_cpow (.inl hx0)).hasDerivAt using 2
    rw [slope_def_field, cpow_neg_one, ofReal_inv]; ring


@[blueprint
  "residueAtZero"
  (title := "residueAtZero")
  (statement := /--
  Let $x>0$. Then for all sufficiently small $c>0$, we have that
  $$
  \frac1{2\pi i}
  \int_{-c-i*c}^{c+ i*c}\frac{x^s}{s(s+1)}ds = 1.
  $$
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean#L816).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ebc097b2f05a955e08b89d04b4afa1b77f2ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
