# HasFPowerSeriesOnBall.isBigO_image_sub_image_sub_deriv_principal

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
      "line": 1167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdc60ce4-ecb9-36b7-b2e2-2393ba445fad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ea48b84-712b-ec25-2791-887ea1bd8425",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesOnBall.isBigO_image_sub_image_sub_deriv_principal",
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
  "slug": "hasfpowerseriesonball-isbigo-image-sub-image-sub-deriv-principal--81f9f945fe8cabe86f5551e1",
  "source": {
    "blob": "00a0625bc4196339213abf6c9cb87b79515aa3af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1176,
    "line": 1167,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81f9f945fe8cabe86f5551e1182cf88e05fcc2d557205a04fb2a8fbc25d15e87",
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

Occurrence: `result:6ea48b84-712b-ec25-2791-887ea1bd8425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1167–1176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesOnBall.isBigO_image_sub_image_sub_deriv_principal
    (hf : HasFPowerSeriesOnBall f p x r) (hr : r' < r) :
    (fun y : E × E => f y.1 - f y.2 - p 1 fun _ => y.1 - y.2)
      =O[𝓟 (EMetric.ball (x, x) r')] fun y => ‖y - (x, x)‖ * ‖y.1 - y.2‖ := by
  rw [← hasFPowerSeriesWithinOnBall_univ] at hf
  simpa using hf.isBigO_image_sub_image_sub_deriv_principal hr

/-- If `f` has formal power series `∑ n, pₙ` within a set, on a ball of radius `r`, then for `y, z`
in any smaller ball, the norm of the difference `f y - f z - p 1 (fun _ ↦ y - z)` is bounded above
by `C * (max ‖y - x‖ ‖z - x‖) * ‖y - z‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4055960ff800598b0057f4de7e9bb7e2203974ed90f5c01e8ea91a91fcb2de19.lean#L1167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00a0625bc4196339213abf6c9cb87b79515aa3af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
