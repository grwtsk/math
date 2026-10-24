# ofFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7edddda37324e603602d48b634c65d4248c65b2ac180906250abe40622242d23",
  "kind": "def",
  "lexical_name": "ofFaithful",
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
  "slug": "offaithful--c44db4e2efba5654af51bb3c",
  "source": {
    "blob": "53308164f8dce20b12c5fc860eefaef8a9f9c7c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 401,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Varianta0c3a5595cef9b0c42238d18d2347dce91a2f25c345d45c4e6430b837d9da74e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c44db4e2efba5654af51bb3cc81337ef9c657d48d4abf83f59e37ae9b701734e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Varianta0c3a5595cef9b0c42238d18d2347dce91a2f25c345d45c4e6430b837d9da74e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7edddda37324e603602d48b634c65d4248c65b2ac180906250abe40622242d23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofFaithful {t : Cone F} {D : Type u₄} [Category.{v₄} D] (G : C ⥤ D) [G.Faithful]
    (ht : IsLimit (mapCone G t)) (lift : ∀ s : Cone F, s.pt ⟶ t.pt)
    (h : ∀ s, G.map (lift s) = ht.lift (mapCone G s)) : IsLimit t :=
  { lift
    fac := fun s j => by apply G.map_injective; rw [G.map_comp, h]; apply ht.fac
    uniq := fun s m w => by
      apply G.map_injective; rw [h]
      refine ht.uniq (mapCone G s) _ fun j => ?_
      convert ← congrArg (fun f => G.map f) (w j)
      apply G.map_comp }

/-- If `F` and `G` are naturally isomorphic, then `F.mapCone c` being a limit implies
`G.mapCone c` is also a limit.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Varianta0c3a5595cef9b0c42238d18d2347dce91a2f25c345d45c4e6430b837d9da74e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Varianta0c3a5595cef9b0c42238d18d2347dce91a2f25c345d45c4e6430b837d9da74e.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53308164f8dce20b12c5fc860eefaef8a9f9c7c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
