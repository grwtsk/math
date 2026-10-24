# contDiffOn_succ_iff_hasFDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d153a22f-287d-f013-a083-da2fb4f059e1",
  "kind": "theorem",
  "lexical_name": "contDiffOn_succ_iff_hasFDerivWithinAt",
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
  "slug": "contdiffon-succ-iff-hasfderivwithinat--91a875067fb9bdf8c5e2602f",
  "source": {
    "blob": "40b673d2a4a18360984ddc9c8558d622a443ccf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 778,
    "line": 747,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant3c3196e75ec179d4a374d122afc544dd7c900bd57634bd0b797c4098f0b5021f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91a875067fb9bdf8c5e2602f63c540d58ce4012d2e5b2d759abc37083e90f882",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant3c3196e75ec179d4a374d122afc544dd7c900bd57634bd0b797c4098f0b5021f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d153a22f-287d-f013-a083-da2fb4f059e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 747–778.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffOn_succ_iff_hasFDerivWithinAt {n : ℕ} :
    ContDiffOn 𝕜 (n + 1 : ℕ) f s ↔
      ∀ x ∈ s, ∃ u ∈ 𝓝[insert x s] x, ∃ f' : E → E →L[𝕜] F,
        (∀ x ∈ u, HasFDerivWithinAt f (f' x) u x) ∧ ContDiffOn 𝕜 n f' u := by
  constructor
  · intro h x hx
    rcases(h x hx) n.succ le_rfl with ⟨u, hu, p, Hp⟩
    refine'
      ⟨u, hu, fun y => (continuousMultilinearCurryFin1 𝕜 E F) (p y 1), fun y hy =>
        Hp.hasFDerivWithinAt (WithTop.coe_le_coe.2 (Nat.le_add_left 1 n)) hy, _⟩
    rw [hasFTaylorSeriesUpToOn_succ_iff_right] at Hp
    intro z hz m hm
    refine' ⟨u, _, fun x : E => (p x).shift, Hp.2.2.of_le hm⟩
    -- Porting note: without the explicit arguments `convert` can not determine the type.
    convert @self_mem_nhdsWithin _ _ z u
    exact insert_eq_of_mem hz
  · intro h x hx
    rw [contDiffWithinAt_succ_iff_hasFDerivWithinAt]
    rcases h x hx with ⟨u, u_nhbd, f', hu, hf'⟩
    have : x ∈ u := mem_of_mem_nhdsWithin (mem_insert _ _) u_nhbd
    exact ⟨u, u_nhbd, f', hu, hf' x this⟩
#align cont_diff_on_succ_iff_has_fderiv_within_at contDiffOn_succ_iff_hasFDerivWithinAt

/-! ### Iterated derivative within a set -/


variable (𝕜)

/-- The `n`-th derivative of a function along a set, defined inductively by saying that the `n+1`-th
derivative of `f` is the derivative of the `n`-th derivative of `f` along this set, together with
an uncurrying step to see it as a multilinear map in `n+1` variables..
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant3c3196e75ec179d4a374d122afc544dd7c900bd57634bd0b797c4098f0b5021f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant3c3196e75ec179d4a374d122afc544dd7c900bd57634bd0b797c4098f0b5021f.lean#L747).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40b673d2a4a18360984ddc9c8558d622a443ccf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
