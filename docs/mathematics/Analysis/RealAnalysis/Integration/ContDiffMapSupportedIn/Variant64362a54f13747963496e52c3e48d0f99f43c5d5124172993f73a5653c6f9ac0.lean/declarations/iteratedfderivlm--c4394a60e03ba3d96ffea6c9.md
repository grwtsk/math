# iteratedFDerivLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6317a5b2508ed05385d4dba2a5ae9a78d855457a18a433b3686e791843f78c65",
  "kind": "def",
  "lexical_name": "iteratedFDerivLM",
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
  "slug": "iteratedfderivlm--c4394a60e03ba3d96ffea6c9",
  "source": {
    "blob": "61febe388136931eb71d1c284fc1506421af93d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 429,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4394a60e03ba3d96ffea6c91f4303119f4093c3143a98659f635325c37d8e5e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6317a5b2508ed05385d4dba2a5ae9a78d855457a18a433b3686e791843f78c65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def iteratedFDerivLM (i : ℕ) :
    𝓓^{n}_{K}(E, F) →ₗ[𝕜] 𝓓^{k}_{K}(E, E [×i]→L[ℝ] F) where
  /-
  Note: it is tempting to define this as some linear map if `k + i ≤ n`,
  and the zero map otherwise. However, we would lose the definitional equality between
  `iteratedFDerivLM 𝕜 n k i f` and `iteratedFDerivLM ℝ n k i f`.

  This is caused by the fact that the equality `f (if p then x else y) = if p then f x else f y`
  is not definitional.
  -/
  toFun f :=
    if hi : k + i ≤ n then
      .of_support_subset
        (f.contDiff.iteratedFDeriv_right <| mod_cast hi)
        ((support_iteratedFDeriv_subset i).trans f.tsupport_subset)
    else 0
  map_add' f g := by
    split_ifs with hi
    · have hi' : (i : ℕ∞ω) ≤ n := mod_cast (le_of_add_le_right hi)
      ext
      simp [iteratedFDeriv_add (f.contDiff.of_le hi') (g.contDiff.of_le hi'), FunLike.coe_add]
    · simp
  map_smul' c f := by
    split_ifs with hi
    · have hi' : (i : ℕ∞ω) ≤ n := mod_cast (le_of_add_le_right hi)
      ext
      simp [iteratedFDeriv_const_smul_apply (f.contDiff.of_le hi').contDiffAt, FunLike.coe_smul]
    · simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61febe388136931eb71d1c284fc1506421af93d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
