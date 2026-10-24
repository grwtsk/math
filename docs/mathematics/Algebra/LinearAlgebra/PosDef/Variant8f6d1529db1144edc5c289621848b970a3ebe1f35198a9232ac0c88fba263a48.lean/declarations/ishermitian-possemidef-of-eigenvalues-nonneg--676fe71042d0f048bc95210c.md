# IsHermitian.posSemidef_of_eigenvalues_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c526d989-bbb6-2cde-d4f6-782da00e82d8",
  "kind": "lemma",
  "lexical_name": "IsHermitian.posSemidef_of_eigenvalues_nonneg",
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
  "slug": "ishermitian-possemidef-of-eigenvalues-nonneg--676fe71042d0f048bc95210c",
  "source": {
    "blob": "8a073a067a25a3cba971bb00baffda86dafe8e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 348,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:676fe71042d0f048bc95210c05fabcfb885f009a50086f313a151a9291f8d00c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c526d989-bbb6-2cde-d4f6-782da00e82d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsHermitian.posSemidef_of_eigenvalues_nonneg [DecidableEq n] {A : Matrix n n 𝕜}
    (hA : IsHermitian A) (h : ∀ i : n, 0 ≤ hA.eigenvalues i) : PosSemidef A := by
  rw [hA.spectral_theorem]
  refine (posSemidef_diagonal_iff.mpr ?_).mul_mul_conjTranspose_same _
  simpa using h

/-- For `A` positive semidefinite, we have `x⋆ A x = 0` iff `A x = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a073a067a25a3cba971bb00baffda86dafe8e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
