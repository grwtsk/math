# Command

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bae71f612cc12ad7a6e7a393214d0944f83dc7112b70a4a48c395c5f542a681c",
  "kind": "structure",
  "lexical_name": "Command",
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
  "slug": "command--9ceca6557882a5e7b5213ad8",
  "source": {
    "blob": "5579ab4a77c6a36d2665c8ed3a2ba2fe85a1b44e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 32,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Command/Variant44270b85fd9b1ddadb8d58ca1fe97737fc6ee3700e9b0c4a6017e83b7fc5a3c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ceca6557882a5e7b5213ad82300da69671c2a0271feb9a192fb73118b21a2a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Command/Variant44270b85fd9b1ddadb8d58ca1fe97737fc6ee3700e9b0c4a6017e83b7fc5a3c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bae71f612cc12ad7a6e7a393214d0944f83dc7112b70a4a48c395c5f542a681c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Command
    (C : Type u) [Category.{v} C] where
  source : Sheaf.Presheaf.{u, v, w} C
  target : Sheaf.Presheaf.{u, v, w} C
  domain : Folder.Category.Subobject source.F
  map :
    ∀ U : C,
      {s : source.F.obj (op U) // domain.contains U s} →
        target.F.obj (op U)
  map_natural :
    ∀ {U V : C} (f : U ⟶ V)
      (s : {s : source.F.obj (op V) // domain.contains V s}),
      Sheaf.Presheaf.restrict target f (map V s) =
        map U ⟨Sheaf.Presheaf.restrict source f s.1,
          domain.restrict f s.2⟩
  domainPredicate : ∀ U : C, source.F.obj (op U) → Prop
  domainPredicate_iff :
    ∀ U s, domainPredicate U s ↔ domain.contains U s
  run :
    ∀ U : C,
      (s : source.F.obj (op U)) →
        domainPredicate U s →
          target.F.obj (op U)
  run_eq_map :
    ∀ U (s : source.F.obj (op U)) (h : domainPredicate U s),
      run U s h =
        map U ⟨s, (domainPredicate_iff U s).mp h⟩
  run_natural :
    ∀ {U V : C} (f : U ⟶ V)
      (s : source.F.obj (op V))
      (h : domainPredicate V s),
      Sheaf.Presheaf.restrict target f (run V s h) =
        run U (Sheaf.Presheaf.restrict source f s)
          ((domainPredicate_iff U
            (Sheaf.Presheaf.restrict source f s)).mpr
              (domain.restrict f ((domainPredicate_iff V s).mp h)))

namespace Command

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Command/Variant44270b85fd9b1ddadb8d58ca1fe97737fc6ee3700e9b0c4a6017e83b7fc5a3c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Command/Variant44270b85fd9b1ddadb8d58ca1fe97737fc6ee3700e9b0c4a6017e83b7fc5a3c9.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5579ab4a77c6a36d2665c8ed3a2ba2fe85a1b44e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
