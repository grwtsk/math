# higherAtomShift_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10eea953-734b-269e-7adb-fff8d634927b",
  "kind": "theorem",
  "lexical_name": "higherAtomShift_pos",
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
  "slug": "higheratomshift-pos--fb326d0f2137a4570e7652d1",
  "source": {
    "blob": "b1d0db60cee1cde860963917818e06d8b5d6bd9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 102,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CoefficientsV1Prebytes/Variant3d93ceb5672636eb5e9911ffcc60d881e88aee36957017e1d17a509381aec720.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb326d0f2137a4570e7652d1f5aa3d218c22ae704bb9e26dcbe5c8744b55ff32",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CoefficientsV1Prebytes/Variant3d93ceb5672636eb5e9911ffcc60d881e88aee36957017e1d17a509381aec720.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10eea953-734b-269e-7adb-fff8d634927b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherAtomShift_pos (i : HigherPrimePowerIndex) : 0 < higherAtomShift i := by
  have hp1 : (1 : ℝ) < (i.1 : ℕ) := by exact_mod_cast i.1.property.one_lt
  exact mul_pos (by exact_mod_cast (show 0 < higherAtomExponent i by
    have := higherAtomExponent_ge_three i; omega)) (Real.log_pos hp1)

/-- Direct coefficient transport never cancels a correlation that may vanish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CoefficientsV1Prebytes/Variant3d93ceb5672636eb5e9911ffcc60d881e88aee36957017e1d17a509381aec720.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CoefficientsV1Prebytes/Variant3d93ceb5672636eb5e9911ffcc60d881e88aee36957017e1d17a509381aec720.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1d0db60cee1cde860963917818e06d8b5d6bd9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
