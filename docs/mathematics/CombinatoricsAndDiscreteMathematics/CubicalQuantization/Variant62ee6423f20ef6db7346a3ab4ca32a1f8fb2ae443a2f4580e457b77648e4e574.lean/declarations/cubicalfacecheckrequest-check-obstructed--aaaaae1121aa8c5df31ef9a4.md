# CubicalFaceCheckRequest.check_obstructed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3039933a-11ae-8cf9-0228-435aeb729992",
  "kind": "theorem",
  "lexical_name": "CubicalFaceCheckRequest.check_obstructed",
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
  "slug": "cubicalfacecheckrequest-check-obstructed--aaaaae1121aa8c5df31ef9a4",
  "source": {
    "blob": "4afece44ab7f009fc4cffc5626cd357dddf94ab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 718,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaaaae1121aa8c5df31ef9a4bc9292cfe8c3257fd171b71c76eeb4d4b9937911",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3039933a-11ae-8cf9-0228-435aeb729992`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CubicalFaceCheckRequest.check_obstructed
    (comparison : DecidableQuantizationFaceComparison)
    (obligation : QuantizationFaceObligation)
    (failure : ¬ comparison.compatibilityPredicate) :
    (CubicalFaceCheckRequest.mk (some comparison) obligation).check =
      .obstructed (comparison.obstructedResult failure) := by
  simp only [CubicalFaceCheckRequest.check]
  letI := comparison.decision
  exact dif_neg failure

/-- Face checking cannot erase an incompatibility or a missing comparison. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4afece44ab7f009fc4cffc5626cd357dddf94ab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
