# extDerivWithin_apply_vectorField_of_pairwise_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1727a645-e14c-8a83-f69a-a9181684282c",
  "kind": "theorem",
  "lexical_name": "extDerivWithin_apply_vectorField_of_pairwise_commute",
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
  "slug": "extderivwithin-apply-vectorfield-of-pairwise-commute--45df01a0ef25b26242936833",
  "source": {
    "blob": "97d5c8ca6ebeacaa9f651ca7adc2e3a769487fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 171,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant228b91107ea77a3bf3e834e3229cca82632051116fcb7e9fcda7161ed41cba41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45df01a0ef25b26242936833e07ff77445f75311921b6f498a8f29e8bfe101c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant228b91107ea77a3bf3e834e3229cca82632051116fcb7e9fcda7161ed41cba41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1727a645-e14c-8a83-f69a-a9181684282c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extDerivWithin_apply_vectorField_of_pairwise_commute
    {ω : E → E [⋀^Fin n]→L[𝕜] F} {V : Fin (n + 1) → E → E}
    (hω : DifferentiableWithinAt 𝕜 ω s x) (hV : ∀ i, DifferentiableWithinAt 𝕜 (V i) s x)
    (hsx : UniqueDiffWithinAt 𝕜 s x)
    (hcomm : Pairwise fun i j ↦ lieBracketWithin 𝕜 (V i) (V j) s x = 0) :
    extDerivWithin ω s x (V · x) =
      (∑ i, (-1) ^ i.val • fderivWithin 𝕜 (fun x ↦ ω x (i.removeNth (V · x))) s x (V i x)) := by
  cases n with
  | zero =>
    simp [extDerivWithin_apply, fderivWithin_continuousAlternatingMap_apply_const_apply,
      fderivWithin_continuousAlternatingMap_apply_apply, *]
  | succ n =>
    rw [extDerivWithin_apply_vectorField hω hV hsx, sub_eq_self]
    refine Fintype.sum_eq_zero _ fun i ↦ sum_eq_zero fun j hj ↦ ?_
    rw [hcomm (ne_of_lt <| by simpa using hj), (ω x).map_coord_zero 0] <;>
      simp

/-- Let `ω` be a differentiable `n`-form and `V i` be `n + 1` differentiable vector fields.
If `V i` pairwise commute at `x`, i.e., $[V_i, V_j](x) = 0$ for all `i ≠ j`, then

$$
  dω(V_0(x), \dots, V_{n + 1}(x)) = \sum_{i=0}^{n + 1} (-1)^i •
    D_x\left(ω\big(x; V_0(x), \dots, \widehat{V_i(x)}, \dots, V_{n + 1}(x)\big)\right)(V_i(x)).
$$
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant228b91107ea77a3bf3e834e3229cca82632051116fcb7e9fcda7161ed41cba41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant228b91107ea77a3bf3e834e3229cca82632051116fcb7e9fcda7161ed41cba41.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97d5c8ca6ebeacaa9f651ca7adc2e3a769487fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
