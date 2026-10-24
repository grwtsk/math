# spanFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf39b6c5d65c687d5b7b84753ae0ba1e99461862d212193e61777bedcb851246",
  "kind": "def",
  "lexical_name": "spanFunctor",
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
  "slug": "spanfunctor--ed04d1b658f2fe91b69e1cf5",
  "source": {
    "blob": "5d7bf4d8f6605259eeb0a8b72099922ba045358b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 215,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed04d1b658f2fe91b69e1cf54be1065b565ed48f5629a7af6d0b827a1472489e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf39b6c5d65c687d5b7b84753ae0ba1e99461862d212193e61777bedcb851246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def spanFunctor [∀ (s : Finset I) (i : I), Decidable (i ∈ s)] (hC : IsCompact C) :
    (Finset I)ᵒᵖ ⥤ Profinite.{u} where
  obj s := @Profinite.of (π C (· ∈ (unop s))) _
    (by rw [← isCompact_iff_compactSpace]; exact hC.image (continuous_proj _)) _ _
  map h := @CompHausLike.ofHom _ _ _ (_) (_) (_) (_) (_) (_) (_) (_)
    ⟨(ProjRestricts C (leOfHom h.unop)), continuous_projRestricts _ _⟩
  map_id J := by simp only [projRestricts_eq_id C (· ∈ (unop J))]; rfl
  map_comp _ _ := by rw [← CompHausLike.ofHom_comp]; congr; dsimp; rw [projRestricts_eq_comp]

/-- The limit cone on `spanFunctor` with point `C`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7bf4d8f6605259eeb0a8b72099922ba045358b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
