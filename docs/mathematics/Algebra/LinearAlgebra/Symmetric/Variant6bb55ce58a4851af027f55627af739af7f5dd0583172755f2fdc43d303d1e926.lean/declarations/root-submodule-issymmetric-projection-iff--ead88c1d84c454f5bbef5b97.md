# _root_.Submodule.isSymmetric_projection_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "118489b6d70ecc11a1232adfc18bc46d5e4494b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f91b10f-525d-03ab-a25d-28fd4ecb942b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00ceb05c-3467-3304-4db1-da8aa0a1b954",
  "kind": "theorem",
  "lexical_name": "_root_.Submodule.isSymmetric_projection_iff",
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
  "slug": "root-submodule-issymmetric-projection-iff--ead88c1d84c454f5bbef5b97",
  "source": {
    "blob": "118489b6d70ecc11a1232adfc18bc46d5e4494b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 291,
    "path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ead88c1d84c454f5bbef5b97e2dd2c9c43c30755ae8f92a2e1d0c8e753d9fcf2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00ceb05c-3467-3304-4db1-da8aa0a1b954`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Submodule.isSymmetric_projection_iff
    {U V : Submodule 𝕜 E} (hUV : IsCompl U V) :
    (U.projection V hUV).IsSymmetric ↔ U ⟂ V := by
  rw [projection]
  refine ⟨fun h u hu v hv => ?_, fun h x y => ?_⟩
  · rw [← Subtype.coe_mk u hu, ← Subtype.coe_mk v hv,
      ← Submodule.projectionOnto_apply_left hUV ⟨u, hu⟩, ← U.subtype_apply, ← comp_apply,
      ← h, comp_apply, Submodule.projectionOnto_apply_right hUV ⟨v, hv⟩,
      map_zero, inner_zero_left]
  · nth_rw 2 [← projection_add_projection_eq_self hUV x]
    nth_rw 1 [← projection_add_projection_eq_self hUV y]
    rw [isOrtho_iff_inner_eq] at h
    simp [inner_add_right, inner_add_left, h, inner_eq_zero_symm]

@[deprecated (since := "2026-05-05")] alias _root_.Submodule.IsCompl.projection_isSymmetric_iff :=
  _root_.Submodule.isSymmetric_projection_iff

open Submodule in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `118489b6d70ecc11a1232adfc18bc46d5e4494b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
