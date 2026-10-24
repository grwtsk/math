# radius_le_radius_continuousLinearMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00a0625bc4196339213abf6c9cb87b79515aa3af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 388,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae57484e-dbbb-905d-3dfc-5005f307b8a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af2603bb-2ee8-0a01-a3cb-e5810706c41f",
  "kind": "theorem",
  "lexical_name": "radius_le_radius_continuousLinearMap_comp",
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
  "slug": "radius-le-radius-continuouslinearmap-comp--484f5940814436ed7afe925b",
  "source": {
    "blob": "00a0625bc4196339213abf6c9cb87b79515aa3af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 388,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:484f5940814436ed7afe925b2d4f0a89ed5e13c097c4b18e4c8067121ef3c26b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af2603bb-2ee8-0a01-a3cb-e5810706c41f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radius_le_radius_continuousLinearMap_comp (p : FormalMultilinearSeries 𝕜 E F)
    (f : F →L[𝕜] G) : p.radius ≤ (f.compFormalMultilinearSeries p).radius := by
  refine ENNReal.le_of_forall_nnreal_lt fun r hr => ?_
  apply le_radius_of_isBigO
  apply (IsBigO.trans_isLittleO _ (p.isLittleO_one_of_lt_radius hr)).isBigO
  refine IsBigO.mul (@IsBigOWith.isBigO _ _ _ _ _ ‖f‖ _ _ _ ?_) (isBigO_refl _ _)
  refine IsBigOWith.of_bound (Eventually.of_forall fun n => ?_)
  simpa only [norm_norm] using f.norm_compContinuousMultilinearMap_le (p n)

end FormalMultilinearSeries

/-! ### Expanding a function as a power series -/


section

variable {f g : E → F} {p pf : FormalMultilinearSeries 𝕜 E F} {s t : Set E} {x : E} {r r' : ℝ≥0∞}

/-- Given a function `f : E → F` and a formal multilinear series `p`, we say that `f` has `p` as
a power series on the ball of radius `r > 0` around `x` if `f (x + y) = ∑' pₙ yⁿ` for all `‖y‖ < r`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00a0625bc4196339213abf6c9cb87b79515aa3af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
