# small_proj_preimage_of_locallySmall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d5f57a404e117cfe6fe0cb64cdfca2bc31802f3fdbee532fdac883ffa59b328",
  "kind": "instance",
  "lexical_name": "small_proj_preimage_of_locallySmall",
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
  "slug": "small-proj-preimage-of-locallysmall--c3addfeb6afe7b9418e35fb0",
  "source": {
    "blob": "76b0f69bfd09e391aa264ae557e621af8c50f06f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant1ff30765485ec01019f3f9e9fa35706ecacbf2b7c2253a9393419894899104ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3addfeb6afe7b9418e35fb00771a3e3911a408015b3d1b9b892504712af102c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant1ff30765485ec01019f3f9e9fa35706ecacbf2b7c2253a9393419894899104ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d5f57a404e117cfe6fe0cb64cdfca2bc31802f3fdbee532fdac883ffa59b328`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance small_proj_preimage_of_locallySmall {𝒢 : Set C} [Small.{v₁} 𝒢] [LocallySmall.{v₁} D] :
    Small.{v₁} ((proj S T).obj ⁻¹' 𝒢) := by
  suffices (proj S T).obj ⁻¹' 𝒢 = Set.range fun f : ΣG : 𝒢, S ⟶ T.obj G => mk f.2 by
    rw [this]
    infer_instance
  exact Set.ext fun X => ⟨fun h => ⟨⟨⟨_, h⟩, X.hom⟩, (eq_mk _).symm⟩, by aesop_cat⟩

end StructuredArrow

namespace CostructuredArrow

variable {S : C ⥤ D} {T : D}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant1ff30765485ec01019f3f9e9fa35706ecacbf2b7c2253a9393419894899104ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant1ff30765485ec01019f3f9e9fa35706ecacbf2b7c2253a9393419894899104ef.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76b0f69bfd09e391aa264ae557e621af8c50f06f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
