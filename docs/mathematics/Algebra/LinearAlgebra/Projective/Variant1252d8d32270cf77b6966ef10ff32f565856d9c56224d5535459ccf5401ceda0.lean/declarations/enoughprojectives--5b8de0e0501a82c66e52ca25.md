# enoughProjectives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:290f8cf77db095bd0f217d18bc3af61bc04f4c989a0103afd92263b7048c000b",
  "kind": "instance",
  "lexical_name": "enoughProjectives",
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
  "slug": "enoughprojectives--5b8de0e0501a82c66e52ca25",
  "source": {
    "blob": "d1bc840cd9f5738c63afdcc0d35041e9f77af08b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b8de0e0501a82c66e52ca25fe71cc872a2b3a451b7121e29fc80a5875f656e1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:290f8cf77db095bd0f217d18bc3af61bc04f4c989a0103afd92263b7048c000b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance enoughProjectives [Small.{v} R] : EnoughProjectives (ModuleCat.{v} R) where
  presentation M :=
    let e : Basis M R (M →₀ Shrink.{v} R) := ⟨Finsupp.mapRange.linearEquiv (Shrink.linearEquiv R R)⟩
    ⟨{p := ModuleCat.of R (M →₀ Shrink.{v} R)
      projective := projective_of_free e
      f := ofHom <| e.constr ℕ _root_.id
      epi := by
        rw [epi_iff_range_eq_top, range_eq_top]
        refine fun m ↦ ⟨Finsupp.single m 1, ?_⟩
        simp [e, Basis.constr_apply] }⟩

end ModuleCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variant1252d8d32270cf77b6966ef10ff32f565856d9c56224d5535459ccf5401ceda0.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1bc840cd9f5738c63afdcc0d35041e9f77af08b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
