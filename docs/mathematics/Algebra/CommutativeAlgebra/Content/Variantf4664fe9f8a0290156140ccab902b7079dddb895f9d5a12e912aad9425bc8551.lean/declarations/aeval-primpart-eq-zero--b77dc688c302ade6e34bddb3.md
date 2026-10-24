# aeval_primPart_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d185b3c2-00a1-c2f6-9b27-033e454a5752",
  "kind": "theorem",
  "lexical_name": "aeval_primPart_eq_zero",
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
  "slug": "aeval-primpart-eq-zero--b77dc688c302ade6e34bddb3",
  "source": {
    "blob": "a3a41ef09146c209c6a293e4a6c3c4c037547ac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 283,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b77dc688c302ade6e34bddb3700dd15c2dd23535e393db507fa5d3a595e3dfe0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d185b3c2-00a1-c2f6-9b27-033e454a5752`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_primPart_eq_zero {S : Type*} [Ring S] [IsDomain S] [Algebra R S]
    [NoZeroSMulDivisors R S] {p : R[X]} {s : S} (hpzero : p ≠ 0) (hp : aeval s p = 0) :
    aeval s p.primPart = 0 := by
  rw [eq_C_content_mul_primPart p, map_mul, aeval_C] at hp
  have hcont : p.content ≠ 0 := fun h => hpzero (content_eq_zero_iff.1 h)
  replace hcont := Function.Injective.ne (FaithfulSMul.algebraMap_injective R S) hcont
  rw [map_zero] at hcont
  exact eq_zero_of_ne_zero_of_mul_left_eq_zero hcont hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a41ef09146c209c6a293e4a6c3c4c037547ac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
