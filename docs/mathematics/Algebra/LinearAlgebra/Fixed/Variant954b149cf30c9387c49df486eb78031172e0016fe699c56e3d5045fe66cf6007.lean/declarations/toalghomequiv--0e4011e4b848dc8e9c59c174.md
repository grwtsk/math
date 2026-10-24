# toAlgHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6765307cf044e2d78d680a3ff0a8934e9af26ee9799148446e51fa2dc733a5ef",
  "kind": "def",
  "lexical_name": "toAlgHomEquiv",
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
  "slug": "toalghomequiv--0e4011e4b848dc8e9c59c174",
  "source": {
    "blob": "65bb441b54a7c277a532f352a73d9847cab8426c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 348,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e4011e4b848dc8e9c59c174420b11dd2165fc1e16837f10d4036cc901c1d977",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6765307cf044e2d78d680a3ff0a8934e9af26ee9799148446e51fa2dc733a5ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toAlgHomEquiv [Finite G] [FaithfulSMul G F] : G ≃ (F →ₐ[FixedPoints.subfield G F] F) :=
  Equiv.ofBijective _ (toAlgHom_bijective G F)

/-- `MulSemiringAction.toAlgAut` is bijective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fixed/Variant954b149cf30c9387c49df486eb78031172e0016fe699c56e3d5045fe66cf6007.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65bb441b54a7c277a532f352a73d9847cab8426c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
