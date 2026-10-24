# stalkPushforward_iso_of_isInducing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf28906a-f97d-5af0-b816-7a3f84dda708",
  "kind": "theorem",
  "lexical_name": "stalkPushforward_iso_of_isInducing",
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
  "slug": "stalkpushforward-iso-of-isinducing--74c15325e8925b5364c086d9",
  "source": {
    "blob": "ccd349bd1003876841689780e0fe453c4ff911a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 210,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74c15325e8925b5364c086d9e7f6fdec1a5c536358f78b2499b1e057c2af7794",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf28906a-f97d-5af0-b816-7a3f84dda708`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stalkPushforward_iso_of_isInducing {f : X ⟶ Y} (hf : IsInducing f)
    (F : X.Presheaf C) (x : X) : IsIso (F.stalkPushforward _ f x) := by
  haveI := Functor.initial_of_adjunction (hf.adjunctionNhds x)
  convert (Functor.Final.colimitIso (OpenNhds.map f x).op ((OpenNhds.inclusion x).op ⋙ F)).isIso_hom
  refine stalk_hom_ext _ fun U hU ↦ (stalkPushforward_germ _ f F _ x hU).trans ?_
  symm
  exact colimit.ι_pre ((OpenNhds.inclusion x).op ⋙ F) (OpenNhds.map f x).op _

@[deprecated (since := "2024-10-27")]
alias stalkPushforward_iso_of_isOpenEmbedding := stalkPushforward_iso_of_isInducing
end stalkPushforward

section stalkPullback

/-- The morphism `ℱ_{f x} ⟶ (f⁻¹ℱ)ₓ` that factors through `(f_*f⁻¹ℱ)_{f x}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccd349bd1003876841689780e0fe453c4ff911a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
