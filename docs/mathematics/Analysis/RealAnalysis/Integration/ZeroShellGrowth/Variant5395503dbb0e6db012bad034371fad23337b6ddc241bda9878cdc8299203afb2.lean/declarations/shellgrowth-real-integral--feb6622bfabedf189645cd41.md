# shellGrowth_real_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "248fa7a39462de76ad3c0d98605b4803b2ebb954",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ac5dca0-4f03-e8fb-c0f1-eff2af08ba66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:748b25d9-8bbc-43e2-b673-6332b94365d3",
  "kind": "lemma",
  "lexical_name": "shellGrowth_real_integral",
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
  "slug": "shellgrowth-real-integral--feb6622bfabedf189645cd41",
  "source": {
    "blob": "248fa7a39462de76ad3c0d98605b4803b2ebb954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 213,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feb6622bfabedf189645cd414d1a6ad50b7a4a973df50f174e13731ae632d322",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:748b25d9-8bbc-43e2-b673-6332b94365d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shellGrowth_real_integral (a : ℝ) :
    (completedRiemannZeta₀ a).re =
      (∫ t : ℝ in Ioi 0, t ^ (a / 2 - 1) *
        ((hurwitzEvenFEPair 0).f_modif t).re) / 2 := by
  rw [shellGrowth_lambda_integral, Complex.div_ofNat_re]
  congr 1
  change Complex.reCLM _ = _
  rw [← Complex.reCLM.integral_comp_comm (shellGrowth_mellin_integrable a)]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro t ht
  dsimp only
  rw [shellGrowth_real_integrand a ht]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `248fa7a39462de76ad3c0d98605b4803b2ebb954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
