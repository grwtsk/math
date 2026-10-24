# native_difference_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02358f5e-31df-9439-5f27-81637e866368",
  "kind": "theorem",
  "lexical_name": "native_difference_bijective",
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
  "slug": "native-difference-bijective--6d901128a90ae048be98d5fe",
  "source": {
    "blob": "cc90d18817332a51c049ad34bea192fe2be4cb9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 145,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d901128a90ae048be98d5feb0e0e7960f53e4a3aaf851ad7ef349dbbd9f004e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02358f5e-31df-9439-5f27-81637e866368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_difference_bijective : Function.Bijective primeTwoDifference := by
  constructor
  · exact (show Function.LeftInverse inverse primeTwoDifference from
      inverse_of_difference).injective
  · intro f
    exact ⟨inverse f, difference_of_inverse f⟩

end FormalResearch.RiemannHypothesis.Conversation.BranchNativeTranslationGap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchNativeTranslationGap/Variant2f5f90c9b8dd10dea357445d91a3e4579d270c4b572469dc9831e8574b09459a.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc90d18817332a51c049ad34bea192fe2be4cb9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
