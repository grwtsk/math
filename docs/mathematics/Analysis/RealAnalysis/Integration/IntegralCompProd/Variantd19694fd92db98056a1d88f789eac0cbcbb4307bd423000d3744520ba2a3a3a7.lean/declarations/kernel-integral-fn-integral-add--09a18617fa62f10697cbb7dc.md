# kernel.integral_fn_integral_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "845cde5da7be1b51128dce9d04ced95a10817718",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a153e1cb-b4cd-5300-5b42-3c1e33c127e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75600881-4ef8-1596-a1ff-f188339c4c91",
  "kind": "theorem",
  "lexical_name": "kernel.integral_fn_integral_add",
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
  "slug": "kernel-integral-fn-integral-add--09a18617fa62f10697cbb7dc",
  "source": {
    "blob": "845cde5da7be1b51128dce9d04ced95a10817718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09a18617fa62f10697cbb7dc959198dba9b94b4487750eea65aaed7f0432b883",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75600881-4ef8-1596-a1ff-f188339c4c91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel.integral_fn_integral_add ⦃f g : β × γ → E⦄ (F : E → E')
    (hf : Integrable f ((κ ⊗ₖ η) a)) (hg : Integrable g ((κ ⊗ₖ η) a)) :
    ∫ x, F (∫ y, f (x, y) + g (x, y) ∂η (a, x)) ∂κ a =
      ∫ x, F (∫ y, f (x, y) ∂η (a, x) + ∫ y, g (x, y) ∂η (a, x)) ∂κ a := by
  refine' integral_congr_ae _
  filter_upwards [hf.compProd_mk_left_ae, hg.compProd_mk_left_ae] with _ h2f h2g
  simp [integral_add h2f h2g]
#align probability_theory.kernel.integral_fn_integral_add ProbabilityTheory.kernel.integral_fn_integral_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantd19694fd92db98056a1d88f789eac0cbcbb4307bd423000d3744520ba2a3a3a7.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `845cde5da7be1b51128dce9d04ced95a10817718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
