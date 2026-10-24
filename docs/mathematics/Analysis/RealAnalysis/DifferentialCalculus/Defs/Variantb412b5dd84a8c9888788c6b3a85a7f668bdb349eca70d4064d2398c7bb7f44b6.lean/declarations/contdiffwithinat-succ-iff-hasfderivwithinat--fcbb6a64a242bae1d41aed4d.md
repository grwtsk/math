# contDiffWithinAt_succ_iff_hasFDerivWithinAt'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e835999-498a-d706-52fc-efe4a32df239",
  "kind": "theorem",
  "lexical_name": "contDiffWithinAt_succ_iff_hasFDerivWithinAt'",
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
  "slug": "contdiffwithinat-succ-iff-hasfderivwithinat--fcbb6a64a242bae1d41aed4d",
  "source": {
    "blob": "e834e7aeb42bb0ef05723187db05ca420093bb70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 436,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb412b5dd84a8c9888788c6b3a85a7f668bdb349eca70d4064d2398c7bb7f44b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcbb6a64a242bae1d41aed4d3ae12185c1d8db6f62322be536a624fd68da7c19",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb412b5dd84a8c9888788c6b3a85a7f668bdb349eca70d4064d2398c7bb7f44b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e835999-498a-d706-52fc-efe4a32df239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffWithinAt_succ_iff_hasFDerivWithinAt' (hn : n ≠ ∞) :
    ContDiffWithinAt 𝕜 (n + 1) f s x ↔
      ∃ u ∈ 𝓝[insert x s] x, u ⊆ insert x s ∧ (n = ω → AnalyticOn 𝕜 f u) ∧
      ∃ f' : E → E →L[𝕜] F,
        (∀ x ∈ u, HasFDerivWithinAt f (f' x) s x) ∧ ContDiffWithinAt 𝕜 n f' s x := by
  refine ⟨fun hf => ?_, ?_⟩
  · obtain ⟨u, hu, f_an, f', huf', hf'⟩ := (contDiffWithinAt_succ_iff_hasFDerivWithinAt hn).mp hf
    obtain ⟨w, hw, hxw, hwu⟩ := mem_nhdsWithin.mp hu
    rw [inter_comm] at hwu
    refine ⟨insert x s ∩ w, inter_mem_nhdsWithin _ (hw.mem_nhds hxw), inter_subset_left, ?_, f',
      fun y hy => ?_, ?_⟩
    · intro h
      apply (f_an h).mono hwu
    · refine ((huf' y <| hwu hy).mono hwu).mono_of_mem_nhdsWithin ?_
      refine mem_of_superset ?_ (inter_subset_inter_left _ (subset_insert _ _))
      exact inter_mem_nhdsWithin _ (hw.mem_nhds hy.2)
    · exact hf'.mono_of_mem_nhdsWithin (nhdsWithin_mono _ (subset_insert _ _) hu)
  · rw [← contDiffWithinAt_insert, contDiffWithinAt_succ_iff_hasFDerivWithinAt hn,
      insert_eq_of_mem (mem_insert _ _)]
    rintro ⟨u, hu, hus, f_an, f', huf', hf'⟩
    exact ⟨u, hu, f_an, f', fun y hy => (huf' y hy).insert'.mono hus, hf'.insert.mono hus⟩


/-! ### Smooth functions within a set -/

variable (𝕜) in
/-- A function is continuously differentiable up to `n` on `s` if, for any point `x` in `s`, it
admits continuous derivatives up to order `n` on a neighborhood of `x` in `s`.

For `n = ∞`, we only require that this holds up to any finite order (where the neighborhood may
depend on the finite order we consider).
-/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb412b5dd84a8c9888788c6b3a85a7f668bdb349eca70d4064d2398c7bb7f44b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb412b5dd84a8c9888788c6b3a85a7f668bdb349eca70d4064d2398c7bb7f44b6.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e834e7aeb42bb0ef05723187db05ca420093bb70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
