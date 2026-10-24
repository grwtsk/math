# HasFDerivAt.of_local_left_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2da694a133a4fea7c66a999c921eecc0a5687ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce9087b2013dd1b16f31db227fd4d6271c853c1fdf0b70bdd79d6e02f3df8c1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70e98e5d-7882-f69b-aeea-1f58658cda25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7a6e618-2f80-52c3-e5c2-f10730e12160",
  "kind": "theorem",
  "lexical_name": "HasFDerivAt.of_local_left_inverse",
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
  "slug": "hasfderivat-of-local-left-inverse--1f1d5a0b75c42cd20fa5f74d",
  "source": {
    "blob": "f2da694a133a4fea7c66a999c921eecc0a5687ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 387,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantce9087b2013dd1b16f31db227fd4d6271c853c1fdf0b70bdd79d6e02f3df8c1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f1d5a0b75c42cd20fa5f74d16d3cdd7200f0a46581d828d7e1d5510489fddc1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantce9087b2013dd1b16f31db227fd4d6271c853c1fdf0b70bdd79d6e02f3df8c1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7a6e618-2f80-52c3-e5c2-f10730e12160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivAt.of_local_left_inverse {f : E → F} {f' : E ≃L[𝕜] F} {g : F → E} {a : F}
    (hg : ContinuousAt g a) (hf : HasFDerivAt f (f' : E →L[𝕜] F) (g a))
    (hfg : ∀ᶠ y in 𝓝 a, f (g y) = y) : HasFDerivAt g (f'.symm : F →L[𝕜] E) a := by
  have : (fun x : F => g x - g a - f'.symm (x - a)) =O[𝓝 a]
      fun x : F => f' (g x - g a) - (x - a) := by
    refine' ((f'.symm : F →L[𝕜] E).isBigO_comp _ _).congr (fun x => _) fun _ => rfl
    simp
  refine' this.trans_isLittleO _
  clear this
  refine'
    ((hf.comp_tendsto hg).symm.congr' (hfg.mono _) (eventually_of_forall fun _ => rfl)).trans_isBigO
      _
  · rintro p hp
    simp [hp, hfg.self_of_nhds]
  · refine' ((hf.isBigO_sub_rev f'.antilipschitz).comp_tendsto hg).congr'
      (eventually_of_forall fun _ => rfl) (hfg.mono _)
    rintro p hp
    simp only [(· ∘ ·), hp, hfg.self_of_nhds]
#align has_fderiv_at.of_local_left_inverse HasFDerivAt.of_local_left_inverse

/-- If `f` is a local homeomorphism defined on a neighbourhood of `f.symm a`, and `f` has an
invertible derivative `f'` in the sense of strict differentiability at `f.symm a`, then `f.symm` has
the derivative `f'⁻¹` at `a`.

This is one of the easy parts of the inverse function theorem: it assumes that we already have
an inverse function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantce9087b2013dd1b16f31db227fd4d6271c853c1fdf0b70bdd79d6e02f3df8c1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantce9087b2013dd1b16f31db227fd4d6271c853c1fdf0b70bdd79d6e02f3df8c1b.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2da694a133a4fea7c66a999c921eecc0a5687ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
