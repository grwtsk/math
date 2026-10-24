# gnsStarAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84caac24f9e86492f93e219e810792cac2da8da7fe14fcfd80a8b0a71e2f4839",
  "kind": "def",
  "lexical_name": "gnsStarAlgHom",
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
  "slug": "gnsstaralghom--4757ea8617bd01538f69183d",
  "source": {
    "blob": "f4eb326e23204bba9a86132fefb761c198fdc16f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 247,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4757ea8617bd01538f69183db893bca392a7d159897397b58937b89e970eb9d6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84caac24f9e86492f93e219e810792cac2da8da7fe14fcfd80a8b0a71e2f4839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def gnsStarAlgHom : A →⋆ₐ[ℂ] (f.GNS →L[ℂ] f.GNS) where
  __ := f.gnsNonUnitalStarAlgHom
  map_one' := by simp
  commutes' r := by simp [Algebra.algebraMap_eq_smul_one]

end Unital

end GNS

end PositiveLinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4eb326e23204bba9a86132fefb761c198fdc16f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
