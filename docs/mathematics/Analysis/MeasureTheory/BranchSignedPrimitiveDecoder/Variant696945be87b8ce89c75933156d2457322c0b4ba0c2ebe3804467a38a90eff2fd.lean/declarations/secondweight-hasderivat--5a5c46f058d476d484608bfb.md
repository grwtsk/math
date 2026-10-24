# secondWeight_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29de1380-3eb8-7ed0-4237-3c5a89a83950",
  "kind": "theorem",
  "lexical_name": "secondWeight_hasDerivAt",
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
  "slug": "secondweight-hasderivat--5a5c46f058d476d484608bfb",
  "source": {
    "blob": "fa2a69ac42b44cda1242a485f0a0f00ba1aacb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 52,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a5c46f058d476d484608bfb8ba0b44e2d1766848c7a67231ed4634741ddc2d6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29de1380-3eb8-7ed0-4237-3c5a89a83950`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem secondWeight_hasDerivAt {v X : ℝ} (hv : 0 < v) (hX : 0 < X) :
    HasDerivAt (fun y ↦ secondWeight y X)
      (-Real.log (X / v) / (v * Real.sqrt v)) v := by
  have hs : Real.sqrt v ≠ 0 := (Real.sqrt_pos.2 hv).ne'
  have hl := (Real.hasDerivAt_log (ne_of_gt (div_pos hX hv))).comp v
    ((hasDerivAt_const v X).div (hasDerivAt_id v) hv.ne')
  have hd := (((hl.const_mul 2).sub_const 4).div (Real.hasDerivAt_sqrt hv.ne') hs).add_const
    (4 / Real.sqrt X)
  apply hd.congr_deriv
  simp only [Function.comp_apply]
  field_simp
  rw [Real.sq_sqrt hv.le]
  ring

/-- Continuity of the multiplier on every strictly positive compact interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa2a69ac42b44cda1242a485f0a0f00ba1aacb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
