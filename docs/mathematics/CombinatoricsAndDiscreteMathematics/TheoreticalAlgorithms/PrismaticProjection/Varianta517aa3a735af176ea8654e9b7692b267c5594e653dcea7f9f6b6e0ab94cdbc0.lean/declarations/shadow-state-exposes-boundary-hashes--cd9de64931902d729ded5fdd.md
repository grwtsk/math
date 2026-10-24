# shadow_state_exposes_boundary_hashes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:443a3cee-ea65-0d69-9e6f-3d8a1e057df1",
  "kind": "theorem",
  "lexical_name": "shadow_state_exposes_boundary_hashes",
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
  "slug": "shadow-state-exposes-boundary-hashes--cd9de64931902d729ded5fdd",
  "source": {
    "blob": "641e877987f37acf1f15c6ca630b6e56c0f3ef36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 252,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Varianta517aa3a735af176ea8654e9b7692b267c5594e653dcea7f9f6b6e0ab94cdbc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd9de64931902d729ded5fdd5f0165117a34a0fbb1fa876c9e63e74039e9f71e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Varianta517aa3a735af176ea8654e9b7692b267c5594e653dcea7f9f6b6e0ab94cdbc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:443a3cee-ea65-0d69-9e6f-3d8a1e057df1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shadow_state_exposes_boundary_hashes
    (S : ToroidalShadowState) :
    S.boundaries.determinantBoundaryHash =
        S.boundaries.determinantBoundaryHash ∧
      S.boundaries.mobiusBoundaryReportHash =
        S.boundaries.mobiusBoundaryReportHash ∧
      S.boundaries.spectralBoundaryHash =
        S.boundaries.spectralBoundaryHash ∧
      S.boundaries.prismaticBoundaryHash =
        S.boundaries.prismaticBoundaryHash :=
  ⟨rfl, rfl, rfl, rfl⟩

/-- The shadow state carries the public dyadic scale and prismatic depth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Varianta517aa3a735af176ea8654e9b7692b267c5594e653dcea7f9f6b6e0ab94cdbc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Varianta517aa3a735af176ea8654e9b7692b267c5594e653dcea7f9f6b6e0ab94cdbc0.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `641e877987f37acf1f15c6ca630b6e56c0f3ef36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
