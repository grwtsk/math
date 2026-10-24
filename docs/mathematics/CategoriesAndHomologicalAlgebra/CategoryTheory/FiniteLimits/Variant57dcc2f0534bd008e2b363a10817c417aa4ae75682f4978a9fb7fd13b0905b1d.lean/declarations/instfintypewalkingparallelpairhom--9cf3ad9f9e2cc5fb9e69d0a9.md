# instFintypeWalkingParallelPairHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e06d573da39bf53d0c3983020d2afc1a2f6a922dfa6c542c683b717d30ba4583",
  "kind": "instance",
  "lexical_name": "instFintypeWalkingParallelPairHom",
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
  "slug": "instfintypewalkingparallelpairhom--9cf3ad9f9e2cc5fb9e69d0a9",
  "source": {
    "blob": "a477c367cc1fae77d64751b7957e78e01e7d7cf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cf3ad9f9e2cc5fb9e69d0a9821737d95899ddedaf6dbb19fa2925c54b85efb8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e06d573da39bf53d0c3983020d2afc1a2f6a922dfa6c542c683b717d30ba4583`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instFintypeWalkingParallelPairHom (j j' : WalkingParallelPair) :
    Fintype (WalkingParallelPairHom j j') where
  elems :=
    WalkingParallelPair.recOn j
      (WalkingParallelPair.recOn j' [WalkingParallelPairHom.id zero].toFinset
        [left, right].toFinset)
      (WalkingParallelPair.recOn j' ∅ [WalkingParallelPairHom.id one].toFinset)
  complete := by
    rintro (_|_) <;> simp
    cases j <;> simp
end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant57dcc2f0534bd008e2b363a10817c417aa4ae75682f4978a9fb7fd13b0905b1d.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a477c367cc1fae77d64751b7957e78e01e7d7cf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
