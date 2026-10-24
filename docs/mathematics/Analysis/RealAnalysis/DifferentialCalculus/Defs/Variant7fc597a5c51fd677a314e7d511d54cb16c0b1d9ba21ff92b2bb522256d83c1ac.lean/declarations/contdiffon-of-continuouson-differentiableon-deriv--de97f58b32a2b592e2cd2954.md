# contDiffOn_of_continuousOn_differentiableOn_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7692c6ea-d921-894a-8da2-ad2f521fdf86",
  "kind": "theorem",
  "lexical_name": "contDiffOn_of_continuousOn_differentiableOn_deriv",
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
  "slug": "contdiffon-of-continuouson-differentiableon-deriv--de97f58b32a2b592e2cd2954",
  "source": {
    "blob": "1ff08774614c00c44490691c85df17723f649e61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant7fc597a5c51fd677a314e7d511d54cb16c0b1d9ba21ff92b2bb522256d83c1ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de97f58b32a2b592e2cd2954a0e352cc91196efda7fbb5518b47a5751e2a5607",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant7fc597a5c51fd677a314e7d511d54cb16c0b1d9ba21ff92b2bb522256d83c1ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7692c6ea-d921-894a-8da2-ad2f521fdf86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffOn_of_continuousOn_differentiableOn_deriv {n : ℕ∞}
    (Hcont : ∀ m : ℕ, (m : ℕ∞) ≤ n → ContinuousOn (fun x => iteratedDerivWithin m f s x) s)
    (Hdiff : ∀ m : ℕ, (m : ℕ∞) < n → DifferentiableOn 𝕜 (fun x => iteratedDerivWithin m f s x) s) :
    ContDiffOn 𝕜 n f s := by
  apply contDiffOn_of_continuousOn_differentiableOn
  · simpa only [iteratedFDerivWithin_eq_equiv_comp, LinearIsometryEquiv.comp_continuousOn_iff]
  · simpa only [iteratedFDerivWithin_eq_equiv_comp, LinearIsometryEquiv.comp_differentiableOn_iff]

/-- To check that a function is `n` times continuously differentiable, it suffices to check that its
first `n` derivatives are differentiable. This is slightly too strong as the condition we
require on the `n`-th derivative is differentiability instead of continuity, but it has the
advantage of avoiding the discussion of continuity in the proof (and for `n = ∞` this is optimal).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant7fc597a5c51fd677a314e7d511d54cb16c0b1d9ba21ff92b2bb522256d83c1ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant7fc597a5c51fd677a314e7d511d54cb16c0b1d9ba21ff92b2bb522256d83c1ac.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ff08774614c00c44490691c85df17723f649e61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
