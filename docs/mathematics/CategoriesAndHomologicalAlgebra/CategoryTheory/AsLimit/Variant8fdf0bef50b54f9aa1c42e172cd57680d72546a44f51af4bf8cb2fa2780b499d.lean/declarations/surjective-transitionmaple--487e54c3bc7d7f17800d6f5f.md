# surjective_transitionMapLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d24ff7e-c53a-96fb-184e-6c7612bf0412",
  "kind": "lemma",
  "lexical_name": "surjective_transitionMapLE",
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
  "slug": "surjective-transitionmaple--487e54c3bc7d7f17800d6f5f",
  "source": {
    "blob": "22f11f13c91060599ffaee1709a50b1d5db30283",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant8fdf0bef50b54f9aa1c42e172cd57680d72546a44f51af4bf8cb2fa2780b499d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:487e54c3bc7d7f17800d6f5f2910d58d2f71e387c5153316213942a84dd6a08c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant8fdf0bef50b54f9aa1c42e172cd57680d72546a44f51af4bf8cb2fa2780b499d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d24ff7e-c53a-96fb-184e-6c7612bf0412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjective_transitionMapLE {n m : ℕ} (h : n ≤ m) :
    Function.Surjective (S.transitionMapLE h) := by
  apply Function.Surjective.of_comp (g := S.proj m)
  simpa only [proj_comp_transitionMapLE'] using S.proj_surjective n

end LightProfinite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant8fdf0bef50b54f9aa1c42e172cd57680d72546a44f51af4bf8cb2fa2780b499d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant8fdf0bef50b54f9aa1c42e172cd57680d72546a44f51af4bf8cb2fa2780b499d.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22f11f13c91060599ffaee1709a50b1d5db30283` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
