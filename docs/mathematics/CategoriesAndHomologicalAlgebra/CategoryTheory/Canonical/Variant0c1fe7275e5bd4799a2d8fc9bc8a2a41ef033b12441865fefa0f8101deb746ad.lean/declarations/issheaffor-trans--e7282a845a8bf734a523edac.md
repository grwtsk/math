# isSheafFor_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7565623f-426f-43ee-f497-f01312052cad",
  "kind": "theorem",
  "lexical_name": "isSheafFor_trans",
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
  "slug": "issheaffor-trans--e7282a845a8bf734a523edac",
  "source": {
    "blob": "662d7704698468f11564511370e234f5d02cac62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 123,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7282a845a8bf734a523edac9fca291fc07fb7909f58318d0af893e447caf75b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7565623f-426f-43ee-f497-f01312052cad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheafFor_trans (P : Cᵒᵖ ⥤ Type v) (R S : Sieve X)
    (hR : Presieve.IsSheafFor P (R : Presieve X))
    (hR' : ∀ ⦃Y⦄ ⦃f : Y ⟶ X⦄ (_ : S f), Presieve.IsSeparatedFor P (R.pullback f : Presieve Y))
    (hS : ∀ ⦃Y⦄ ⦃f : Y ⟶ X⦄ (_ : R f), Presieve.IsSheafFor P (S.pullback f : Presieve Y)) :
    Presieve.IsSheafFor P (S : Presieve X) := by
  have : (bind R fun Y f _ => S.pullback f : Presieve X) ≤ S := by
    rintro Z f ⟨W, f, g, hg, hf : S _, rfl⟩
    apply hf
  apply Presieve.isSheafFor_subsieve_aux P this
  · apply isSheafFor_bind _ _ _ hR hS
    intro Y f hf Z g
    rw [← pullback_comp]
    apply (hS (R.downward_closed hf _)).isSeparatedFor
  · intro Y f hf
    have : Sieve.pullback f (bind R fun T (k : T ⟶ X) (_ : R k) => pullback k S) =
        R.pullback f := by
      ext Z g
      constructor
      · rintro ⟨W, k, l, hl, _, comm⟩
        rw [pullback_apply, ← comm]
        simp [hl]
      · intro a
        refine ⟨Z, 𝟙 Z, _, a, ?_⟩
        simp [hf]
    rw [this]
    apply hR' hf

/-- Construct the finest (largest) Grothendieck topology for which the given presheaf is a sheaf. -/
@[stacks 00Z9 "This is a special case of the Stacks entry, but following a different
proof (see the Stacks comments)."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant0c1fe7275e5bd4799a2d8fc9bc8a2a41ef033b12441865fefa0f8101deb746ad.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662d7704698468f11564511370e234f5d02cac62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
