# NeckOrTransversalityResearchStatement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cf7865ef5c9e53c6e86873e4771699521ff3775a41afa3603c7c444db00ec15",
  "kind": "def",
  "lexical_name": "NeckOrTransversalityResearchStatement",
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
  "slug": "neckortransversalityresearchstatement--a3d824b665a048bb3d14d23d",
  "source": {
    "blob": "e2099e3deacd09a3c9a0fe1ef93e4def56f41d7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 603,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3d824b665a048bb3d14d23d1546dd7905d489e2de76c94cd2d36ab76ce08f32",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cf7865ef5c9e53c6e86873e4771699521ff3775a41afa3603c7c444db00ec15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NeckOrTransversalityResearchStatement
    (N : ℕ) (A : Type*) [CommRing A]
    (base : CubicFrobeniusRewriteBase N A) : Prop :=
  ∀ state : TypeIISurgeryState N A base,
    ¬ IsDiffuse state → NeckOrTransversalityAt state

/-! ## Move obligations and authority/falsification boundaries -/

/-- Local proof obligation selected by each procedural move.  These are
premises to be discharged, not constructors of a global program theorem. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2099e3deacd09a3c9a0fe1ef93e4def56f41d7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
