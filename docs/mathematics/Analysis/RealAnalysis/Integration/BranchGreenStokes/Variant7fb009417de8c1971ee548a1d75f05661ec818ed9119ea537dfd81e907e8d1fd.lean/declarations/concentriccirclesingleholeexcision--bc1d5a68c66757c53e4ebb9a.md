# concentricCircleSingleHoleExcision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ad00229494990e5bba8ef222ea218f7cb03f88e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:711562db-dc53-1d92-fb05-6d6286124505",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ffbd8d0-c12f-0d10-df10-5d6ad4a6c171",
  "kind": "theorem",
  "lexical_name": "concentricCircleSingleHoleExcision",
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
  "slug": "concentriccirclesingleholeexcision--bc1d5a68c66757c53e4ebb9a",
  "source": {
    "blob": "7ad00229494990e5bba8ef222ea218f7cb03f88e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc1d5a68c66757c53e4ebb9a9dca6fae9497410b4cc6ff3bbf9d1a9ab147956e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ffbd8d0-c12f-0d10-df10-5d6ad4a6c171`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concentricCircleSingleHoleExcision
    {E : Type u} [NormedAddCommGroup E] [NormedSpace ℂ E]
    {f : ℂ → E} {center : ℂ} {inner outer : ℝ}
    (hinner : 0 < inner) (hio : inner ≤ outer)
    (hcontinuous : ContinuousOn f
      (closedBall center outer \ ball center inner))
    (hdiff : DifferentiableOn ℂ f
      (ball center outer \ closedBall center inner)) :
    circleIntegral f center outer = circleIntegral f center inner := by
  exact Complex.circleIntegral_eq_of_differentiable_on_annulus_off_countable
    hinner hio Set.countable_empty hcontinuous
      (fun z hz ↦ hdiff.differentiableAt
        ((isOpen_ball.sdiff isClosed_closedBall).mem_nhds hz.1))

/-- Reversing both corner coordinates preserves the raw rectangular
orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ad00229494990e5bba8ef222ea218f7cb03f88e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
