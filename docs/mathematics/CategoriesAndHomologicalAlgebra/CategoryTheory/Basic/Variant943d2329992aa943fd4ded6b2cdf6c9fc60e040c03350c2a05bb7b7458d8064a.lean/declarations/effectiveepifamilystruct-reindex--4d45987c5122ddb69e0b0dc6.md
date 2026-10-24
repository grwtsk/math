# EffectiveEpiFamilyStruct.reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37441305ce5600275d496330349213316492aa227cb8a97436a880782e3cde60",
  "kind": "def",
  "lexical_name": "EffectiveEpiFamilyStruct.reindex",
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
  "slug": "effectiveepifamilystruct-reindex--4d45987c5122ddb69e0b0dc6",
  "source": {
    "blob": "e162650695ba5d5e54d0917c8eb6ec8f4097c6fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 261,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant943d2329992aa943fd4ded6b2cdf6c9fc60e040c03350c2a05bb7b7458d8064a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d45987c5122ddb69e0b0dc6a9628148a62350ba998b1bce725d11db50e6f355",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant943d2329992aa943fd4ded6b2cdf6c9fc60e040c03350c2a05bb7b7458d8064a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37441305ce5600275d496330349213316492aa227cb8a97436a880782e3cde60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EffectiveEpiFamilyStruct.reindex
    {B : C} {α α' : Type*}
    (X : α → C)
    (π : (a : α) → (X a ⟶ B))
    (e : α' ≃ α)
    (P : EffectiveEpiFamilyStruct (fun a => X (e a)) (fun a => π (e a))) :
    EffectiveEpiFamilyStruct X π where
  desc := fun f h => P.desc (fun _ => f _) (fun _ _ => h _ _)
  fac _ _ a := by
    obtain ⟨a, rfl⟩ := e.surjective a
    apply P.fac
  uniq _ _ _ hm := P.uniq _ _ _ fun _ => hm _

/--
Reindex the indexing type of an effective epi family.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant943d2329992aa943fd4ded6b2cdf6c9fc60e040c03350c2a05bb7b7458d8064a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant943d2329992aa943fd4ded6b2cdf6c9fc60e040c03350c2a05bb7b7458d8064a.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e162650695ba5d5e54d0917c8eb6ec8f4097c6fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
