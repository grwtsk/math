# Cocone.ofCofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c060f39ca919f06bb85cea21c4ab8f8d92f89534d444cf724fd0c0343beff715",
  "kind": "def",
  "lexical_name": "Cocone.ofCofork",
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
  "slug": "cocone-ofcofork--e058437c30637a99be18e17e",
  "source": {
    "blob": "bdc80ab4d21063a15331c5173d20334ff7a8fd0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 621,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantde6548d2be06ed37ed1a29399d4cf37bf9598b6d4dbe8b07246af3c3091786f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e058437c30637a99be18e17e811c5a905ff8e66511acc1e1f36db83efe56fa80",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantde6548d2be06ed37ed1a29399d4cf37bf9598b6d4dbe8b07246af3c3091786f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c060f39ca919f06bb85cea21c4ab8f8d92f89534d444cf724fd0c0343beff715`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cocone.ofCofork {F : WalkingParallelPair ⥤ C} (t : Cofork (F.map left) (F.map right)) : Cocone F
    where
  pt := t.pt
  ι :=
    { app := fun X => eqToHom (by aesop) ≫ t.ι.app X
      naturality := by rintro _ _ (_|_|_) <;> {dsimp; simp [t.condition]}}
#align category_theory.limits.cocone.of_cofork CategoryTheory.Limits.Cocone.ofCofork

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantde6548d2be06ed37ed1a29399d4cf37bf9598b6d4dbe8b07246af3c3091786f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantde6548d2be06ed37ed1a29399d4cf37bf9598b6d4dbe8b07246af3c3091786f1.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdc80ab4d21063a15331c5173d20334ff7a8fd0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
