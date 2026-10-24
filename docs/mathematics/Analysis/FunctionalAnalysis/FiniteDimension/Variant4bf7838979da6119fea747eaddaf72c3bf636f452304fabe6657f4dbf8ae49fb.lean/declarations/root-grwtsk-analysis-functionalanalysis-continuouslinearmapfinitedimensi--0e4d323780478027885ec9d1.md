# _root_.GRWTSK.Analysis.FunctionalAnalysis.ContinuousLinearMapFiniteDimensional.Variantaae1cf2eb90fc1b11375074ec2bb8eccc904e3221d1ee4bfa65b806d971d9367.ContinuousLinearMap.toLinearMap_eq_iff_eq_toContinuousLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42c5f6a5-3a3d-4e5d-65a5-cd712f5e2a47",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.FunctionalAnalysis.ContinuousLinearMapFiniteDimensional.Variantaae1cf2eb90fc1b11375074ec2bb8eccc904e3221d1ee4bfa65b806d971d9367.ContinuousLinearMap.toLinearMap_eq_iff_eq_toContinuousLinearMap",
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
  "slug": "root-grwtsk-analysis-functionalanalysis-continuouslinearmapfinitedimensi--0e4d323780478027885ec9d1",
  "source": {
    "blob": "b0a708f26fe323b4ebd668530a81a56735e0a4ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 362,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiniteDimension/Variant4bf7838979da6119fea747eaddaf72c3bf636f452304fabe6657f4dbf8ae49fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e4d323780478027885ec9d179482d9a93c1dc2a520ce45b9b7232053b194594",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiniteDimension/Variant4bf7838979da6119fea747eaddaf72c3bf636f452304fabe6657f4dbf8ae49fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42c5f6a5-3a3d-4e5d-65a5-cd712f5e2a47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.FunctionalAnalysis.ContinuousLinearMapFiniteDimensional.Variantaae1cf2eb90fc1b11375074ec2bb8eccc904e3221d1ee4bfa65b806d971d9367.ContinuousLinearMap.toLinearMap_eq_iff_eq_toContinuousLinearMap (g : E →L[𝕜] E)
    (f : E →ₗ[𝕜] E) : g.toLinearMap = f ↔ g = f.toContinuousLinearMap := by
  simp [ContinuousLinearMap.ext_iff, LinearMap.ext_iff]

end LinearMap

section

variable [T2Space E] [T2Space F] [FiniteDimensional 𝕜 E]

namespace LinearEquiv

/-- The continuous linear equivalence induced by a linear equivalence on a finite-dimensional
space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiniteDimension/Variant4bf7838979da6119fea747eaddaf72c3bf636f452304fabe6657f4dbf8ae49fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiniteDimension/Variant4bf7838979da6119fea747eaddaf72c3bf636f452304fabe6657f4dbf8ae49fb.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a708f26fe323b4ebd668530a81a56735e0a4ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
