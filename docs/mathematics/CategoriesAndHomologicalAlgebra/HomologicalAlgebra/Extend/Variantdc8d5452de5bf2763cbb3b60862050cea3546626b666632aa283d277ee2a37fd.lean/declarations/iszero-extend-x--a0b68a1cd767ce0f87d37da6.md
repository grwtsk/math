# isZero_extend_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f60f8ff-28b1-c6c8-6862-de28be198052",
  "kind": "lemma",
  "lexical_name": "isZero_extend_X",
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
  "slug": "iszero-extend-x--a0b68a1cd767ce0f87d37da6",
  "source": {
    "blob": "f7324babd79b38d233a0ce9562c0f65a95bec0d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0b68a1cd767ce0f87d37da665656dbb105db1575fa317f55a8e24f893515829",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f60f8ff-28b1-c6c8-6862-de28be198052`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isZero_extend_X (i' : ι') (hi' : ∀ i, e.f i ≠ i') :
    IsZero ((K.extend e).X i') :=
  K.isZero_extend_X' e i' (by
    obtain hi'|⟨i, hi⟩ := (e.r i').eq_none_or_eq_some
    · exact hi'
    · exfalso
      exact hi' _ (e.f_eq_of_r_eq_some hi))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7324babd79b38d233a0ce9562c0f65a95bec0d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
