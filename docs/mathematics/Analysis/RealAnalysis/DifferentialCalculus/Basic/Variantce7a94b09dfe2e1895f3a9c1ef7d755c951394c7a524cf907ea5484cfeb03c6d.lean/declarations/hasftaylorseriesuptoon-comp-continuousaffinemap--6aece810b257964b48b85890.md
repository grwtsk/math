# HasFTaylorSeriesUpToOn.comp_continuousAffineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:561ad53f-9141-86f8-61f7-d01ce4ca0720",
  "kind": "theorem",
  "lexical_name": "HasFTaylorSeriesUpToOn.comp_continuousAffineMap",
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
  "slug": "hasftaylorseriesuptoon-comp-continuousaffinemap--6aece810b257964b48b85890",
  "source": {
    "blob": "15943630e54e3f746360263ac0408991b6e34331",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 366,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantce7a94b09dfe2e1895f3a9c1ef7d755c951394c7a524cf907ea5484cfeb03c6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aece810b257964b48b85890e07b31ecda8ef494cd4d454f99b7a7ed9d68cbb7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantce7a94b09dfe2e1895f3a9c1ef7d755c951394c7a524cf907ea5484cfeb03c6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:561ad53f-9141-86f8-61f7-d01ce4ca0720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFTaylorSeriesUpToOn.comp_continuousAffineMap
    (hf : HasFTaylorSeriesUpToOn n f p s) (g : G →ᴬ[𝕜] E) :
    HasFTaylorSeriesUpToOn n (f ∘ g)
      (fun x k => (p (g x) k).compContinuousLinearMap fun _ => g.contLinear) (g ⁻¹' s) := by
  let A : ∀ m : ℕ, (E [×m]→L[𝕜] F) → G [×m]→L[𝕜] F :=
    fun m h ↦ h.compContinuousLinearMap fun _ ↦ g.contLinear
  have hA : ∀ m, IsBoundedLinearMap 𝕜 (A m) := fun m =>
    isBoundedLinearMap_continuousMultilinearMap_comp_linear g.contLinear
  constructor
  · intro x hx
    simp only [(hf.zero_eq (g x) hx).symm, Function.comp_apply]
    change (p (g x) 0 fun _ : Fin 0 => g.contLinear 0) = p (g x) 0 0
    rw [map_zero]
    rfl
  · intro m hm x hx
    convert!
      (hA m).hasFDerivAt.comp_hasFDerivWithinAt x
        ((hf.fderivWithin m hm (g x) hx).comp x g.hasFDerivWithinAt (Subset.refl _))
    ext y v
    change p (g x) (Nat.succ m) (g.contLinear ∘ cons y v)
      = p (g x) m.succ (cons (g.contLinear y) (g.contLinear ∘ v))
    rw [comp_cons]
  · intro m hm
    exact (hA m).continuous.comp_continuousOn <| (hf.cont m hm).comp g.continuous.continuousOn <|
      Subset.refl _

/-- If `f` admits a Taylor series `p` in a set `s`, and `g` is linear, then `f ∘ g` admits a Taylor
series in `g ⁻¹' s`, whose `k`-th term at `x` is given by `p (g x) k (g v₁, ..., g vₖ)` . -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantce7a94b09dfe2e1895f3a9c1ef7d755c951394c7a524cf907ea5484cfeb03c6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantce7a94b09dfe2e1895f3a9c1ef7d755c951394c7a524cf907ea5484cfeb03c6d.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15943630e54e3f746360263ac0408991b6e34331` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
