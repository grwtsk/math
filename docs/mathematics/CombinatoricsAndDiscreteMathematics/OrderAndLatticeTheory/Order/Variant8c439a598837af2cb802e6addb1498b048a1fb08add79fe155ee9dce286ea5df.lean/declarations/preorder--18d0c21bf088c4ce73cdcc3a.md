# preorder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71ba36c0e551e955e478a861a42c82c8b49c4415d1eb2df3104567c86c5b9aa5",
  "kind": "instance",
  "lexical_name": "preorder",
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
  "slug": "preorder--18d0c21bf088c4ce73cdcc3a",
  "source": {
    "blob": "a9c5a509f8b49788a812ba25a577b72703f99642",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 348,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant8c439a598837af2cb802e6addb1498b048a1fb08add79fe155ee9dce286ea5df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18d0c21bf088c4ce73cdcc3a3315eb8155c2f9919352443fd4f970dce0c13bfe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant8c439a598837af2cb802e6addb1498b048a1fb08add79fe155ee9dce286ea5df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71ba36c0e551e955e478a861a42c82c8b49c4415d1eb2df3104567c86c5b9aa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preorder : Preorder (α ⊕ₗ β) :=
  { Lex.LE, Lex.LT with
    le_refl := refl_of (Lex (· ≤ ·) (· ≤ ·)),
    le_trans := fun _ _ _ => trans_of (Lex (· ≤ ·) (· ≤ ·)),
    lt_iff_le_not_le := fun a b => by
      refine ⟨fun hab => ⟨hab.mono (fun _ _ => le_of_lt) fun _ _ => le_of_lt, ?_⟩, ?_⟩
      · rintro (⟨hba⟩ | ⟨hba⟩ | ⟨b, a⟩)
        · exact hba.not_lt (inl_lt_inl_iff.1 hab)
        · exact hba.not_lt (inr_lt_inr_iff.1 hab)
        · exact not_inr_lt_inl hab
      · rintro ⟨⟨hab⟩ | ⟨hab⟩ | ⟨a, b⟩, hba⟩
        · exact Lex.inl (hab.lt_of_not_le fun h => hba <| Lex.inl h)
        · exact Lex.inr (hab.lt_of_not_le fun h => hba <| Lex.inr h)
        · exact Lex.sep _ _ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant8c439a598837af2cb802e6addb1498b048a1fb08add79fe155ee9dce286ea5df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant8c439a598837af2cb802e6addb1498b048a1fb08add79fe155ee9dce286ea5df.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c5a509f8b49788a812ba25a577b72703f99642` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
