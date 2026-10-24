# charFun_map_cast_poissonMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0c85e101a7ed87f0db7dd9138ac26966ba93d1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d391335-9c8f-aa82-7095-f765b2ed0464",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39036378-38a5-b89e-c991-e8b5183d2c69",
  "kind": "lemma",
  "lexical_name": "charFun_map_cast_poissonMeasure",
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
  "slug": "charfun-map-cast-poissonmeasure--9e1bd917e69444f9911f140a",
  "source": {
    "blob": "c0c85e101a7ed87f0db7dd9138ac26966ba93d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e1bd917e69444f9911f140a9ea6c73b212aa81761267d3a50354b2e8565c1e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39036378-38a5-b89e-c991-e8b5183d2c69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charFun_map_cast_poissonMeasure (r : ℝ≥0) (t : ℝ) :
    charFun Po(ℝ, r) t = cexp (r * (cexp (t * I) - 1)) := by
  rw [charFun_apply, integral_map .of_discrete (by fun_prop), integral_poissonMeasure r]
  simp_rw [Real.inner_apply]
  calc ∑' a, (rexp (-r) * r ^ a / a ! : ℝ) * cexp ((a * t : ℝ) * I)
  _ = ∑' a, (rexp (-r)) * ((r * cexp (t * I)) ^ a / a !) := by
      congr with a
      push_cast
      rw [mul_pow, ← Complex.exp_nat_mul]
      ring_nf
  _ = (rexp (-r)) * ∑' a, ((r * cexp (t * I)) ^ a / a !) := tsum_mul_left
  _ = (rexp (-r)) * cexp (r * cexp (t * I)) := by
      rw [(NormedSpace.expSeries_div_hasSum_exp (r * cexp (t * I))).tsum_eq, exp_eq_exp_ℂ]
  _ = cexp (r * (cexp (t * I) - 1)) := by
      rw [ofReal_exp, ← Complex.exp_add]
      push_cast
      ring_nf

end CharFun

/-! ### Convolution of Poisson measures -/

section Convolution

variable {R : Type*} [AddMonoidWithOne R] {mR : MeasurableSpace R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0c85e101a7ed87f0db7dd9138ac26966ba93d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
