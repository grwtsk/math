# HasFDerivWithinAt.of_local_left_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77d9b2a1-6583-dcd8-4f95-f3024bb8f86d",
  "kind": "theorem",
  "lexical_name": "HasFDerivWithinAt.of_local_left_inverse",
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
  "slug": "hasfderivwithinat-of-local-left-inverse--f201385af74f075f262b98f1",
  "source": {
    "blob": "602460e86a21e102e0d57a38ef1953ab09d545a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 334,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variant214d98d4ee395195930dff11e96813257c48d851f8509a5f94e442a72fcd81d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f201385af74f075f262b98f1f85c442cb7b59dbb7e20b30fa985845753b83455",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variant214d98d4ee395195930dff11e96813257c48d851f8509a5f94e442a72fcd81d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77d9b2a1-6583-dcd8-4f95-f3024bb8f86d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivWithinAt.of_local_left_inverse {g : F → E} {f' : E ≃L[𝕜] F} {a : F} {t : Set F}
    (hg : Tendsto g (𝓝[t] a) (𝓝[s] (g a))) (hf : HasFDerivWithinAt f (f' : E →L[𝕜] F) s (g a))
    (ha : a ∈ t) (hfg : ∀ᶠ y in 𝓝[t] a, f (g y) = y) :
    HasFDerivWithinAt g (f'.symm : F →L[𝕜] E) t a := by
  have : (fun x : F => g x - g a - f'.symm (x - a)) =O[𝓝[t] a]
      fun x : F => f' (g x - g a) - (x - a) :=
    ((f'.symm : F →L[𝕜] E).isBigO_comp _ _).congr (fun x ↦ by simp) fun _ ↦ rfl
  refine .of_isLittleO <| this.trans_isLittleO ?_
  clear this
  refine ((hf.isLittleO.comp_tendsto hg).symm.congr' (hfg.mono ?_) .rfl).trans_isBigO ?_
  · intro p hp
    simp [hp, hfg.self_of_nhdsWithin ha]
  · refine ((hf.isBigO_sub_rev f'.antilipschitz).comp_tendsto hg).congr'
      (Eventually.of_forall fun _ => rfl) (hfg.mono ?_)
    rintro p hp
    simp only [(· ∘ ·), hp, hfg.self_of_nhdsWithin ha]

/-- If `f (g y) = y` for `y` in some neighborhood of `a`, `g` is continuous at `a`, and `f` has an
invertible derivative `f'` at `g a` in the strict sense, then `g` has the derivative `f'⁻¹` at `a`
in the strict sense.

This is one of the easy parts of the inverse function theorem: it assumes that we already have an
inverse function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variant214d98d4ee395195930dff11e96813257c48d851f8509a5f94e442a72fcd81d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variant214d98d4ee395195930dff11e96813257c48d851f8509a5f94e442a72fcd81d1.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `602460e86a21e102e0d57a38ef1953ab09d545a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
