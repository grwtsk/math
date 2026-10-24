# instCommSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50f79e90c4f18601bfd91dcda16640435b890f35bf62cdc6bdaa62c001472e0a",
  "kind": "instance",
  "lexical_name": "instCommSemiring",
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
  "slug": "instcommsemiring--81972da34df15a4bd356286e",
  "source": {
    "blob": "77259d7ee7507bbea94c2c31ed99bc2a02014fb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 551,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant94161574131a317ca750d9eb4e32942e2abcb1b2a7b39cc1e4f3810045ba0d21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81972da34df15a4bd356286e0c6b2631a5a574acadb1c8a012192f423a852e2a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant94161574131a317ca750d9eb4e32942e2abcb1b2a7b39cc1e4f3810045ba0d21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50f79e90c4f18601bfd91dcda16640435b890f35bf62cdc6bdaa62c001472e0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCommSemiring : CommSemiring (A ⊗[R] B) where
  toSemiring := inferInstance
  mul_comm x y := by
    refine TensorProduct.induction_on x ?_ ?_ ?_
    · simp
    · intro a₁ b₁
      refine TensorProduct.induction_on y ?_ ?_ ?_
      · simp
      · intro a₂ b₂
        simp [mul_comm]
      · intro a₂ b₂ ha hb
        simp [mul_add, add_mul, ha, hb]
    · intro x₁ x₂ h₁ h₂
      simp [mul_add, add_mul, h₁, h₂]

end CommSemiring

section Ring
variable [CommRing R]
variable [Ring A] [Algebra R A]
variable [Ring B] [Algebra R B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant94161574131a317ca750d9eb4e32942e2abcb1b2a7b39cc1e4f3810045ba0d21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant94161574131a317ca750d9eb4e32942e2abcb1b2a7b39cc1e4f3810045ba0d21.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77259d7ee7507bbea94c2c31ed99bc2a02014fb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
