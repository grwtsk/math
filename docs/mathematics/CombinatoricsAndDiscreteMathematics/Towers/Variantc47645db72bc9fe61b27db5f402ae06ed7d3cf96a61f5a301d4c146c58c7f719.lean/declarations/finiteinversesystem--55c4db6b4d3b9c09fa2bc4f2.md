# FiniteInverseSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:daf6c69a0dde39a3a5b264400954b513ba17e577de496e2edf5d6022602000f5",
  "kind": "structure",
  "lexical_name": "FiniteInverseSystem",
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
  "slug": "finiteinversesystem--55c4db6b4d3b9c09fa2bc4f2",
  "source": {
    "blob": "3c2a7409ebcad12a36bdb19ad6243787c0bdcb91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55c4db6b4d3b9c09fa2bc4f2a2608be1e210e0fcd8c28897b8ef1e45070762ab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:daf6c69a0dde39a3a5b264400954b513ba17e577de496e2edf5d6022602000f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteInverseSystem (N : ℕ) where
  /-- Group at each admitted finite stage. -/
  Stage : Fin (N + 1) → Type
  /-- Actual group law at each stage. -/
  group : ∀ i, Group (Stage i)
  /-- Every stage has an explicit finite inventory. -/
  finite : ∀ i, Fintype (Stage i)
  /-- Backward map for each proved index relation. -/
  restrict : ∀ i j, i ≤ j → @MonoidHom (Stage j) (Stage i) (group j).toMulOne (group i).toMulOne
  /-- Restriction to the same stage is the identity function. -/
  restrict_self : ∀ i (x : Stage i), restrict i i le_rfl x = x
  /-- Restriction through an intermediate stage is compatible with direct restriction. -/
  restrict_comp : ∀ i j k (hij : i ≤ j) (hjk : j ≤ k) (x : Stage k),
    restrict i j hij (restrict j k hjk x) = restrict i k (hij.trans hjk) x

/-- A compatible finite observation is a section satisfying every declared restriction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c2a7409ebcad12a36bdb19ad6243787c0bdcb91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
