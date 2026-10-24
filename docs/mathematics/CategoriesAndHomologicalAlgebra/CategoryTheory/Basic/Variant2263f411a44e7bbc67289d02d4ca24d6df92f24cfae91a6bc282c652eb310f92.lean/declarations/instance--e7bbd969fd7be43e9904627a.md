# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6d75a4434d07f49640e2489b19fcf9f6285daa9779aa6c31cc5a7d96c337ac3",
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
  "slug": "instance--e7bbd969fd7be43e9904627a",
  "source": {
    "blob": "f85cba3b43a9b73edadb9465b808bf9c812a2fe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2263f411a44e7bbc67289d02d4ca24d6df92f24cfae91a6bc282c652eb310f92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7bbd969fd7be43e9904627a9c07939163b4be5da182bdb615f97918d0626757",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2263f411a44e7bbc67289d02d4ca24d6df92f24cfae91a6bc282c652eb310f92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6d75a4434d07f49640e2489b19fcf9f6285daa9779aa6c31cc5a7d96c337ac3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {E : Type u₃} [Category.{v₃} E] (F : C ⥤ D) (G : D ⥤ E) [IsAccessible.{w} F]
    [IsAccessible.{w} G] : IsAccessible.{w} (F ⋙ G) := by
  obtain ⟨κF, _, _⟩ := IsAccessible.exists_cardinal (F := F)
  obtain ⟨κG, _, _⟩ := IsAccessible.exists_cardinal (F := G)
  have : Fact (κF ⊔ κG).IsRegular := ⟨iteInduction (fun _ ↦ Fact.out) (fun _ ↦ Fact.out)⟩
  have := isCardinalAccessible_of_le F (by simp : κF ≤ κF ⊔ κG)
  have := isCardinalAccessible_of_le G (by simp : κG ≤ κF ⊔ κG)
  exact isAccessible_of_isCardinalAccessible (F ⋙ G) (κF ⊔ κG)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2263f411a44e7bbc67289d02d4ca24d6df92f24cfae91a6bc282c652eb310f92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2263f411a44e7bbc67289d02d4ca24d6df92f24cfae91a6bc282c652eb310f92.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f85cba3b43a9b73edadb9465b808bf9c812a2fe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
