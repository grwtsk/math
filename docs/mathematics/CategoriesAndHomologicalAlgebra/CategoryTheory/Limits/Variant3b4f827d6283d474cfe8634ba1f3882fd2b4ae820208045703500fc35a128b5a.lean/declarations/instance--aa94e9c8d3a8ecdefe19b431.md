# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d291619095df61c15328265f63f80176afa9df8ceccc45eaad12a6eed01c8ef4",
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
  "slug": "instance--aa94e9c8d3a8ecdefe19b431",
  "source": {
    "blob": "d5a32f56cae9847081509805998b7a7e1bc13b5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa94e9c8d3a8ecdefe19b431c70d07b7bccfa2ab3632786bca28e734bbf0ba07",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d291619095df61c15328265f63f80176afa9df8ceccc45eaad12a6eed01c8ef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance (priority := 100)
    _root_.CategoryTheory.Functor.createsLimitsOfIsEquivalence (H : D ⥤ C) [H.IsEquivalence] :
    CreatesLimitsOfSize.{v, u} H where
  CreatesLimitsOfShape :=
    { CreatesLimit :=
        { lifts := fun c _ =>
            { liftedCone := mapConeInv H c
              validLift := mapConeMapConeInv H c } } }

@[deprecated (since := "2024-11-18")] alias isEquivalenceCreatesLimits :=
  Functor.createsLimitsOfIsEquivalence

-- verify the preserve_limits instance works as expected:
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a32f56cae9847081509805998b7a7e1bc13b5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
