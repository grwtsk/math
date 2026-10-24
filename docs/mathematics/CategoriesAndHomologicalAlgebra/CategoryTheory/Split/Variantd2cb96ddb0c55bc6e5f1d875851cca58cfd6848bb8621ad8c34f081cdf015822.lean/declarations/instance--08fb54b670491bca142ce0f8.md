# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54326ec7f298a16c7e6e739e18bfe3f5dba3d86e4cf41e35bc48c3bc096b12c5",
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
  "slug": "instance--08fb54b670491bca142ce0f8",
  "source": {
    "blob": "e14441dff1d9ba3435a5302829aa4dbe9a3c9e85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 371,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantd2cb96ddb0c55bc6e5f1d875851cca58cfd6848bb8621ad8c34f081cdf015822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08fb54b670491bca142ce0f890366ce86b4306dfff9fb7e8e5b6d47a94d430ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantd2cb96ddb0c55bc6e5f1d875851cca58cfd6848bb8621ad8c34f081cdf015822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54326ec7f298a16c7e6e739e18bfe3f5dba3d86e4cf41e35bc48c3bc096b12c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Category (Split C) where
  Hom := Split.Hom
  id S :=
    { F := 𝟙 _
      f := fun _ => 𝟙 _ }
  comp Φ₁₂ Φ₂₃ :=
    { F := Φ₁₂.F ≫ Φ₂₃.F
      f := fun n => Φ₁₂.f n ≫ Φ₂₃.f n
      comm := fun n => by
        dsimp
        simp only [assoc, Split.Hom.comm_assoc, Split.Hom.comm] }

variable {C}

namespace Split

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantd2cb96ddb0c55bc6e5f1d875851cca58cfd6848bb8621ad8c34f081cdf015822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantd2cb96ddb0c55bc6e5f1d875851cca58cfd6848bb8621ad8c34f081cdf015822.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e14441dff1d9ba3435a5302829aa4dbe9a3c9e85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
