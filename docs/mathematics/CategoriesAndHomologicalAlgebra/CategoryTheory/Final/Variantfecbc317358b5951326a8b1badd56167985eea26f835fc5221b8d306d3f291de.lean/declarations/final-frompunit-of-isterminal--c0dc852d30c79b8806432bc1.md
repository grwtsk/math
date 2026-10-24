# final_fromPUnit_of_isTerminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b79e9fb-d4ca-ae07-5e65-9443c65db0bd",
  "kind": "lemma",
  "lexical_name": "final_fromPUnit_of_isTerminal",
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
  "slug": "final-frompunit-of-isterminal--c0dc852d30c79b8806432bc1",
  "source": {
    "blob": "363482bad4919be7a541753ea8f6e3d0ea174957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 912,
    "line": 906,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfecbc317358b5951326a8b1badd56167985eea26f835fc5221b8d306d3f291de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0dc852d30c79b8806432bc14f7618a804a38aa7711fbf1b05a246da947d5339",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfecbc317358b5951326a8b1badd56167985eea26f835fc5221b8d306d3f291de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b79e9fb-d4ca-ae07-5e65-9443c65db0bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 906–912.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma final_fromPUnit_of_isTerminal (hc : Limits.IsTerminal c) : (fromPUnit c).Final where
  out c' := by
    letI : Inhabited (StructuredArrow c' (fromPUnit c)) := ⟨.mk (Y := default) (hc.from c')⟩
    letI : Subsingleton (StructuredArrow c' (fromPUnit c)) :=
      ⟨fun i j ↦ StructuredArrow.obj_ext _ _ (by aesop_cat) (hc.hom_ext _ _)⟩
    infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfecbc317358b5951326a8b1badd56167985eea26f835fc5221b8d306d3f291de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfecbc317358b5951326a8b1badd56167985eea26f835fc5221b8d306d3f291de.lean#L906).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `363482bad4919be7a541753ea8f6e3d0ea174957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
