# isIso_homologyMap_of_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b29d5244fe7da6a7350b7748e32e0793ef58ee37aa21db99ba7472d8bcd56412",
  "kind": "instance",
  "lexical_name": "isIso_homologyMap_of_isIso",
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
  "slug": "isiso-homologymap-of-isiso--8901c432af59e9f430852748",
  "source": {
    "blob": "c2d6b9ae694201a90da61ea99e47d89a90589a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 839,
    "line": 829,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant2c7aa6a1c7d9bb8fa6ec3ac66e96043634f299a453585c77f99aa1aa0c795944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8901c432af59e9f4308527487253ccfde220c92fb458f9d0fa316dd369719363",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant2c7aa6a1c7d9bb8fa6ec3ac66e96043634f299a453585c77f99aa1aa0c795944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b29d5244fe7da6a7350b7748e32e0793ef58ee37aa21db99ba7472d8bcd56412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 829–839.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isIso_homologyMap_of_isIso (φ : S₁ ⟶ S₂) [S₁.HasHomology] [S₂.HasHomology] [IsIso φ] :
    IsIso (homologyMap φ) := by
  dsimp only [homologyMap, homologyMap']
  infer_instance

section

variable (S) {A : C}
variable [HasHomology S]

/-- The canonical morphism `S.cycles ⟶ S.homology` for a short complex `S` that has homology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant2c7aa6a1c7d9bb8fa6ec3ac66e96043634f299a453585c77f99aa1aa0c795944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant2c7aa6a1c7d9bb8fa6ec3ac66e96043634f299a453585c77f99aa1aa0c795944.lean#L829).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2d6b9ae694201a90da61ea99e47d89a90589a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
