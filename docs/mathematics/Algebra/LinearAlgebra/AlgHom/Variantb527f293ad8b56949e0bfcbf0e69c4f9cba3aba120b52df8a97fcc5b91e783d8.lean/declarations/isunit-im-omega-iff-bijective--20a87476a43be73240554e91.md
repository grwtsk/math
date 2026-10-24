# isUnit_im_omega_iff_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "679a75e41ade039ce62d7ab5cab354223dc11fc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05ace69d-9cbf-d89b-8449-1c6dae501db2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbcea848-47e0-dbf3-b405-2ef7b66fe74f",
  "kind": "theorem",
  "lexical_name": "isUnit_im_omega_iff_bijective",
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
  "slug": "isunit-im-omega-iff-bijective--20a87476a43be73240554e91",
  "source": {
    "blob": "679a75e41ade039ce62d7ab5cab354223dc11fc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20a87476a43be73240554e91eec4d96facc20fc5bcd6147054980f32f2d4a156",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbcea848-47e0-dbf3-b405-2ef7b66fe74f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_im_omega_iff_bijective :
    IsUnit (f ω).im ↔ Function.Bijective f := by
  suffices Function.Surjective f ↔ IsUnit (f ω).im by
    rw [Function.Bijective, ← isRegular_im_omega_iff_injective, this, iff_and_self]
    exact fun h ↦ IsUnit.isRegular h
  rw [← det_toMatrix_algHom, ← Matrix.isUnit_iff_isUnit_det, ← Matrix.mulVec_surjective_iff_isUnit,
    ← Function.Surjective.of_comp_iff' (basis a' b').equivFun.bijective,
    ← (basis a b).equivFun.surjective.of_comp_iff, mulVec_toMatrix_comp_eq]

/-- Any `R`-algebra isomorphism between quadratic algebras sends `ω` to an element
whose imaginary part is a unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679a75e41ade039ce62d7ab5cab354223dc11fc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
