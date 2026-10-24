# IsInvariantSubfield.toMulSemiringAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5908a526c1531a4084a0cc3129d2bee84e70b8d3e0fdfffe881fdd7057beb25",
  "kind": "instance",
  "lexical_name": "IsInvariantSubfield.toMulSemiringAction",
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
  "slug": "isinvariantsubfield-tomulsemiringaction--1f50de65d30c7c0953357973",
  "source": {
    "blob": "65bb441b54a7c277a532f352a73d9847cab8426c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f50de65d30c7c095335797339a2fdddbf5b4ade17bc73e38bee9a7e3d149463",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5908a526c1531a4084a0cc3129d2bee84e70b8d3e0fdfffe881fdd7057beb25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsInvariantSubfield.toMulSemiringAction [IsInvariantSubfield M S] :
    MulSemiringAction M S where
  smul m x := ⟨m • x.1, IsInvariantSubfield.smul_mem m x.2⟩
  one_smul s := Subtype.eq <| one_smul M s.1
  mul_smul m₁ m₂ s := Subtype.eq <| mul_smul m₁ m₂ s.1
  smul_add m s₁ s₂ := Subtype.eq <| smul_add m s₁.1 s₂.1
  smul_zero m := Subtype.eq <| smul_zero m
  smul_one m := Subtype.eq <| smul_one m
  smul_mul m s₁ s₂ := Subtype.eq <| smul_mul' m s₁.1 s₂.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65bb441b54a7c277a532f352a73d9847cab8426c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
