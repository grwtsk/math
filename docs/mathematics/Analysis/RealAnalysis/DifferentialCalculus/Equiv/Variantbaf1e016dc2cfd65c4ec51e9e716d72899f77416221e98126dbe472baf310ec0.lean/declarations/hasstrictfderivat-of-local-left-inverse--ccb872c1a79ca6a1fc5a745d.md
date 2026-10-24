# HasStrictFDerivAt.of_local_left_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90b77768-29a0-77d2-0ffb-a2ff77a4b0ca",
  "kind": "theorem",
  "lexical_name": "HasStrictFDerivAt.of_local_left_inverse",
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
  "slug": "hasstrictfderivat-of-local-left-inverse--ccb872c1a79ca6a1fc5a745d",
  "source": {
    "blob": "18fdffc1134922d0fe471ae56cdec78fd2355d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 367,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccb872c1a79ca6a1fc5a745d2c728b6c3ee69884140464c4eabddd7bd9890824",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90b77768-29a0-77d2-0ffb-a2ff77a4b0ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasStrictFDerivAt.of_local_left_inverse {f : E → F} {f' : E ≃L[𝕜] F} {g : F → E} {a : F}
    (hg : ContinuousAt g a) (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) (g a))
    (hfg : ∀ᶠ y in 𝓝 a, f (g y) = y) : HasStrictFDerivAt g (f'.symm : F →L[𝕜] E) a := by
  replace hg := hg.prod_map' hg
  replace hfg := hfg.prod_mk_nhds hfg
  have :
    (fun p : F × F => g p.1 - g p.2 - f'.symm (p.1 - p.2)) =O[𝓝 (a, a)] fun p : F × F =>
      f' (g p.1 - g p.2) - (p.1 - p.2) := by
    refine' ((f'.symm : F →L[𝕜] E).isBigO_comp _ _).congr (fun x => _) fun _ => rfl
    simp
  refine' this.trans_isLittleO _
  clear this
  refine'
    ((hf.comp_tendsto hg).symm.congr' (hfg.mono _) (eventually_of_forall fun _ => rfl)).trans_isBigO
      _
  · rintro p ⟨hp1, hp2⟩
    simp [hp1, hp2]
  · refine (hf.isBigO_sub_rev.comp_tendsto hg).congr' (eventually_of_forall fun _ => rfl)
      (hfg.mono ?_)
    rintro p ⟨hp1, hp2⟩
    simp only [(· ∘ ·), hp1, hp2]
#align has_strict_fderiv_at.of_local_left_inverse HasStrictFDerivAt.of_local_left_inverse

/-- If `f (g y) = y` for `y` in some neighborhood of `a`, `g` is continuous at `a`, and `f` has an
invertible derivative `f'` at `g a`, then `g` has the derivative `f'⁻¹` at `a`.

This is one of the easy parts of the inverse function theorem: it assumes that we already have
an inverse function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18fdffc1134922d0fe471ae56cdec78fd2355d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
