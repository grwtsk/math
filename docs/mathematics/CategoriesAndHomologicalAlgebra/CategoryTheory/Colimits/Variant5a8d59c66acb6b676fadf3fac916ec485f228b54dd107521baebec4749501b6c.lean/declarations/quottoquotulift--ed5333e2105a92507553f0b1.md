# quotToQuotUlift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c72cb6d5045c578d906f0e8f6f0abc228ad3fd30d1a9c3f487d57b0bec5fa012",
  "kind": "def",
  "lexical_name": "quotToQuotUlift",
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
  "slug": "quottoquotulift--ed5333e2105a92507553f0b1",
  "source": {
    "blob": "8e872975c3cf21ed8f6318c8999bacd445f4859b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed5333e2105a92507553f0b17a7d4f11364203ebd9cccd02d161a347e78997d3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c72cb6d5045c578d906f0e8f6f0abc228ad3fd30d1a9c3f487d57b0bec5fa012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotToQuotUlift (F : J ⥤ Type u) : Quot F → Quot (F ⋙ uliftFunctor.{u'}) := by
  refine Quot.lift (fun ⟨j, x⟩ ↦ Quot.ι _ j (ULift.up x)) ?_
  intro ⟨j, x⟩ ⟨j', y⟩ ⟨(f : j ⟶ j'), (eq : y = F.map f x)⟩
  dsimp
  have eq : ULift.up y = (F ⋙ uliftFunctor.{u'}).map f (ULift.up x) := by
    rw [eq]
    dsimp
  rw [eq, Quot.map_ι]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e872975c3cf21ed8f6318c8999bacd445f4859b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
