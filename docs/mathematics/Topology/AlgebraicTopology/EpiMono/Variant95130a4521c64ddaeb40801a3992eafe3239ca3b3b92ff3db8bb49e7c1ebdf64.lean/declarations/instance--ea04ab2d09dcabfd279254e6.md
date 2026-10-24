# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a52200dcde5eb9bc1ee53166efcb3b5f06cf5f023ce2dbb38276edfb15e9082",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ea04ab2d09dcabfd279254e6",
  "source": {
    "blob": "4cd525b5a635abdde91199d56354a1d531e8e7d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 198,
    "path": "GRWTSK/Topology/AlgebraicTopology/EpiMono/Variant95130a4521c64ddaeb40801a3992eafe3239ca3b3b92ff3db8bb49e7c1ebdf64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea04ab2d09dcabfd279254e69c7a001f0cf0516ff8b43a7ebabf3ee18e6893ed",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/EpiMono/Variant95130a4521c64ddaeb40801a3992eafe3239ca3b3b92ff3db8bb49e7c1ebdf64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a52200dcde5eb9bc1ee53166efcb3b5f06cf5f023ce2dbb38276edfb15e9082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MorphismProperty.HasFactorization P_σ P_δ where
  nonempty_mapFactorizationData f := by
    obtain ⟨z, e , m, he, hm, fac⟩ := exists_P_σ_P_δ_factorization f
    exact ⟨⟨z, e , m, fac.symm, he, hm⟩⟩

end ExistenceOfFactorizations

end SimplexCategoryGenRel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/EpiMono/Variant95130a4521c64ddaeb40801a3992eafe3239ca3b3b92ff3db8bb49e7c1ebdf64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/EpiMono/Variant95130a4521c64ddaeb40801a3992eafe3239ca3b3b92ff3db8bb49e7c1ebdf64.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd525b5a635abdde91199d56354a1d531e8e7d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
