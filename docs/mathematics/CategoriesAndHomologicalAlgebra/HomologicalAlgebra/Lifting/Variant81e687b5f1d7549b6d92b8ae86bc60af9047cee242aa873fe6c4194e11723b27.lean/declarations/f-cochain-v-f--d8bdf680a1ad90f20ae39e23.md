# π_f_cochain₁_v_ι_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:010d202b-7301-252a-16bc-f433f240abb3",
  "kind": "lemma",
  "lexical_name": "π_f_cochain₁_v_ι_f",
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
  "slug": "f-cochain-v-f--d8bdf680a1ad90f20ae39e23",
  "source": {
    "blob": "0faaaefb83a901103fe13d8770d7578ed25948ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 105,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Lifting/Variant81e687b5f1d7549b6d92b8ae86bc60af9047cee242aa873fe6c4194e11723b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8bdf680a1ad90f20ae39e23cda88808d2c8d0ba34917218db2a5fd999714f7f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Lifting/Variant81e687b5f1d7549b6d92b8ae86bc60af9047cee242aa873fe6c4194e11723b27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:010d202b-7301-252a-16bc-f433f240abb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma π_f_cochain₁_v_ι_f (n m : ℤ) (hnm : n + 1 = m) :
    π.f n ≫ (cochain₁ sq hsq hQ hK).v n m hnm ≫ ι.f m = (cocycle₁' sq hsq).1.v n m hnm :=
  (exists_hom sq hsq hQ hK n m hnm).choose_spec

/-- A `1`-cocycle from a cokernel `Q` of `i : A ⟶ B` to a kernel `K` of
`p : X ⟶ Y`. If this is a coboundary, then the square in `CochainComplex C ℤ`
has a lifting, see the lemma `hasLift` below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Lifting/Variant81e687b5f1d7549b6d92b8ae86bc60af9047cee242aa873fe6c4194e11723b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Lifting/Variant81e687b5f1d7549b6d92b8ae86bc60af9047cee242aa873fe6c4194e11723b27.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0faaaefb83a901103fe13d8770d7578ed25948ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
