# Types.monoOverEquivalenceSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a83585d0664f76c78d1b7dbfab7b4fe80b241971a3ed18339f1c0d61dd513a9c",
  "kind": "def",
  "lexical_name": "Types.monoOverEquivalenceSet",
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
  "slug": "types-monooverequivalenceset--e064a8dd291992f42b3b1471",
  "source": {
    "blob": "6243289fdfb386233e64c35a6405d8ca04abafcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 47,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e064a8dd291992f42b3b1471834bcb90a2981efe3d18c33e46b536a731016a8f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a83585d0664f76c78d1b7dbfab7b4fe80b241971a3ed18339f1c0d61dd513a9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Types.monoOverEquivalenceSet (α : Type u) : MonoOver α ≌ Set α where
  functor :=
    { obj := fun f => Set.range f.1.hom
      map := fun {f g} t =>
        homOfLE
          (by
            rintro a ⟨x, rfl⟩
            exact ⟨t.1 x, congr_fun t.w x⟩) }
  inverse :=
    { obj := fun s => MonoOver.mk' (Subtype.val : s → α)
      map := fun {s t} b => MonoOver.homMk (fun w => ⟨w.1, Set.mem_of_mem_of_subset w.2 b.le⟩) }
  unitIso :=
    NatIso.ofComponents fun f =>
      MonoOver.isoMk (Equiv.ofInjective f.1.hom ((mono_iff_injective _).mp f.2)).toIso
  counitIso := NatIso.ofComponents fun _ => eqToIso Subtype.range_val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6243289fdfb386233e64c35a6405d8ca04abafcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
