# integral_coe_re_add_coe_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "634ddd0ebbe50b0c4660c4105e20bdbbe27f6259",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42cd85af-4354-a6c1-58fb-76e821255d08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0fadbf8-39d0-6d87-202e-da5e7cb5254d",
  "kind": "theorem",
  "lexical_name": "integral_coe_re_add_coe_im",
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
  "slug": "integral-coe-re-add-coe-im--312be965f4e5763149ec0820",
  "source": {
    "blob": "634ddd0ebbe50b0c4660c4105e20bdbbe27f6259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 166,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:312be965f4e5763149ec082047f387db2710fef9f07b318ac341d78f2a813f54",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0fadbf8-39d0-6d87-202e-da5e7cb5254d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_coe_re_add_coe_im {f : X → 𝕜} (hf : Integrable f μ) :
    ∫ x, (re (f x) : 𝕜) ∂μ + (∫ x, (im (f x) : 𝕜) ∂μ) * RCLike.I = ∫ x, f x ∂μ := by
  rw [mul_comm, ← smul_eq_mul, ← integral_smul, ← integral_add]
  · congr
    ext1 x
    rw [smul_eq_mul, mul_comm, RCLike.re_add_im]
  · exact hf.re.ofReal
  · exact hf.im.ofReal.smul (𝕜 := 𝕜) (β := 𝕜) RCLike.I

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variante6653fbc50d616ec93ad5f61d6840f7323cb0b467b5fc2f96b4a357c70f10626.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `634ddd0ebbe50b0c4660c4105e20bdbbe27f6259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
