# eventually_differentiableAt_cuspFunction_nhds_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89b4a25870dcedc2776f47194ba9a7324690266a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:476841da-4acc-aad4-c2cf-2e6700b677bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bab4e9b-a16c-12d6-d4ff-4af6e2322382",
  "kind": "theorem",
  "lexical_name": "eventually_differentiableAt_cuspFunction_nhds_ne_zero",
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
  "slug": "eventually-differentiableat-cuspfunction-nhds-ne-zero--b4bfc25728df2743ac383a4a",
  "source": {
    "blob": "89b4a25870dcedc2776f47194ba9a7324690266a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4bfc25728df2743ac383a4aaba0e8de86ff16dc67a801981f415d7a872b4ede",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bab4e9b-a16c-12d6-d4ff-4af6e2322382`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_differentiableAt_cuspFunction_nhds_ne_zero (hh : 0 < h) (hf : Periodic f h)
    (h_hol : ∀ᶠ z in I∞, DifferentiableAt ℂ f z) :
    ∀ᶠ q in 𝓝[≠] 0, DifferentiableAt ℂ (cuspFunction h f) q := by
  refine ((invQParam_tendsto hh).eventually h_hol).mp ?_
  refine eventually_nhdsWithin_of_forall (fun q hq h_diff ↦ ?_)
  rw [← qParam_right_inv hh.ne' hq]
  exact differentiableAt_cuspFunction hh.ne' hf h_diff

end HoloOnC

section HoloAtInfC

variable {h : ℝ} {f : ℂ → ℂ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b4a25870dcedc2776f47194ba9a7324690266a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
