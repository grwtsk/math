# coe_map_of_ker_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43dc62fd-726a-ba31-0ecb-9f0fbf1db767",
  "kind": "theorem",
  "lexical_name": "coe_map_of_ker_le",
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
  "slug": "coe-map-of-ker-le--6fccd7bd6f40250fb2195ea7",
  "source": {
    "blob": "7b78b94465766f7d17191c3b12d7529917164c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 420,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3689132b081813567d38d107518964c2d2f973301719f84f32e3acfab3da288c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fccd7bd6f40250fb2195ea77acc124385dace5951b30a7817abe1953975e940",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3689132b081813567d38d107518964c2d2f973301719f84f32e3acfab3da288c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43dc62fd-726a-ba31-0ecb-9f0fbf1db767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_map_of_ker_le (r : Setoid α) (f : α → β) (hf : ker f ≤ r) :
    ⇑(map r f) = Relation.Map r f f ⊔ (· = ·) := by
  refine le_antisymm ?_ (sup_le Relation.EqvGen.rel (by rintro _ _ rfl; exact .refl _))
  rintro _ _ hxy
  induction hxy with
  | rel _ _ hab => exact .inl hab
  | refl _ => exact .inr rfl
  | symm _ _ _ ih => exact ih.imp (Std.Symm.symm _ _) (Std.Symm.symm _ _)
  | trans _ _ _ _ _ ih1 ih2 =>
    rcases ih1 with ih1 | rfl
    · rcases ih2 with ih2 | rfl
      · exact .inl <| r.iseqv.isTrans.map hf |>.trans _ _ _ ih1 ih2
      · exact .inl ih1
    · exact ih2

/-- Given a surjective function f whose kernel is contained in an equivalence relation r, the
equivalence relation on f's codomain defined by x ≈ y ↔ the elements of f⁻¹(x) are related to
the elements of f⁻¹(y) by r. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3689132b081813567d38d107518964c2d2f973301719f84f32e3acfab3da288c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3689132b081813567d38d107518964c2d2f973301719f84f32e3acfab3da288c.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b78b94465766f7d17191c3b12d7529917164c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
