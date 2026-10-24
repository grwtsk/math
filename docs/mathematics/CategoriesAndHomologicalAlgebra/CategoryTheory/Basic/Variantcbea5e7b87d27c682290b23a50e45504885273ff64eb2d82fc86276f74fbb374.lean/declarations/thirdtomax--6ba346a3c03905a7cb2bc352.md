# thirdToMax₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d08ea77b3e40d5ec9bd17ad400f55baa248dcb38f1de565ed00f5dfd81c803e5",
  "kind": "def",
  "lexical_name": "thirdToMax₃",
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
  "slug": "thirdtomax--6ba346a3c03905a7cb2bc352",
  "source": {
    "blob": "d5df8ea4f281ca6c7e16266ce95933206ddb0a0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 386,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbea5e7b87d27c682290b23a50e45504885273ff64eb2d82fc86276f74fbb374.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ba346a3c03905a7cb2bc3528587eb69158dc8dc67d7b44ad49a23422c97c4d8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbea5e7b87d27c682290b23a50e45504885273ff64eb2d82fc86276f74fbb374.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d08ea77b3e40d5ec9bd17ad400f55baa248dcb38f1de565ed00f5dfd81c803e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def thirdToMax₃ (j₁ j₂ j₃ : C) : j₃ ⟶ max₃ j₁ j₂ j₃ :=
  rightToMax (max j₁ j₂) j₃

/-- `coeq₃ f g h`, for morphisms `f g h : j₁ ⟶ j₂`, is an arbitrary choice of object
which admits a morphism `coeq₃Hom f g h : j₂ ⟶ coeq₃ f g h` such that
`coeq₃_condition₁`, `coeq₃_condition₂` and `coeq₃_condition₃` are satisfied.
Its existence is ensured by `IsFiltered`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbea5e7b87d27c682290b23a50e45504885273ff64eb2d82fc86276f74fbb374.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbea5e7b87d27c682290b23a50e45504885273ff64eb2d82fc86276f74fbb374.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5df8ea4f281ca6c7e16266ce95933206ddb0a0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
