# iteratedFDerivWithin_succ_apply_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c838c642f870cc3283188bf6ef5a0ed8c37aa2dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 831,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a1e29ce-2f96-69c6-ac41-350f3f48ccc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a58112a-7f82-7216-a3ed-6cdfaac78d60",
  "kind": "theorem",
  "lexical_name": "iteratedFDerivWithin_succ_apply_right",
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
  "slug": "iteratedfderivwithin-succ-apply-right--dd245313ac3a92409618916e",
  "source": {
    "blob": "c838c642f870cc3283188bf6ef5a0ed8c37aa2dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 831,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd245313ac3a92409618916eda4d51ebb693e5bf367c9f06becda64d26f57f20",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a58112a-7f82-7216-a3ed-6cdfaac78d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 831–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedFDerivWithin_succ_apply_right {n : ℕ} (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s)
    (m : Fin (n + 1) → E) :
    (iteratedFDerivWithin 𝕜 (n + 1) f s x : (Fin (n + 1) → E) → F) m =
      iteratedFDerivWithin 𝕜 n (fun y => fderivWithin 𝕜 f s y) s x (init m) (m (last n)) := by
  induction' n with n IH generalizing x
  · rw [iteratedFDerivWithin_succ_eq_comp_left, iteratedFDerivWithin_zero_eq_comp,
      iteratedFDerivWithin_zero_apply, Function.comp_apply,
      LinearIsometryEquiv.comp_fderivWithin _ (hs x hx)]
    rfl
  · let I := continuousMultilinearCurryRightEquiv' 𝕜 n E F
    have A : ∀ y ∈ s, iteratedFDerivWithin 𝕜 n.succ f s y =
        (I ∘ iteratedFDerivWithin 𝕜 n (fun y => fderivWithin 𝕜 f s y) s) y := fun y hy ↦ by
      ext m
      rw [@IH y hy m]
      rfl
    calc
      (iteratedFDerivWithin 𝕜 (n + 2) f s x : (Fin (n + 2) → E) → F) m =
          (fderivWithin 𝕜 (iteratedFDerivWithin 𝕜 n.succ f s) s x : E → E[×n + 1]→L[𝕜] F) (m 0)
            (tail m) :=
        rfl
      _ = (fderivWithin 𝕜 (I ∘ iteratedFDerivWithin 𝕜 n (fderivWithin 𝕜 f s) s) s x :
              E → E[×n + 1]→L[𝕜] F) (m 0) (tail m) := by
        rw [fderivWithin_congr A (A x hx)]
      _ = (I ∘ fderivWithin 𝕜 (iteratedFDerivWithin 𝕜 n (fderivWithin 𝕜 f s) s) s x :
              E → E[×n + 1]→L[𝕜] F) (m 0) (tail m) := by
        simp only [LinearIsometryEquiv.comp_fderivWithin _ (hs x hx)]; rfl
      _ = (fderivWithin 𝕜 (iteratedFDerivWithin 𝕜 n (fun y => fderivWithin 𝕜 f s y) s) s x :
              E → E[×n]→L[𝕜] E →L[𝕜] F) (m 0) (init (tail m)) ((tail m) (last n)) := rfl
      _ = iteratedFDerivWithin 𝕜 (Nat.succ n) (fun y => fderivWithin 𝕜 f s y) s x (init m)
            (m (last (n + 1))) := by
        rw [iteratedFDerivWithin_succ_apply_left, tail_init_eq_init_tail]
        rfl
#align iterated_fderiv_within_succ_apply_right iteratedFDerivWithin_succ_apply_right

/-- Writing explicitly the `n+1`-th derivative as the composition of a currying linear equiv,
and the `n`-th derivative of the derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean#L831).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c838c642f870cc3283188bf6ef5a0ed8c37aa2dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
