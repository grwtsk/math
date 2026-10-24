# NonUnitalNonAssocSemiring.nat_isScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87570782d35f072cd894cbfaee8ff73c6048804c3fe7806f4dc3b8f66f72e585",
  "kind": "instance",
  "lexical_name": "NonUnitalNonAssocSemiring.nat_isScalarTower",
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
  "slug": "nonunitalnonassocsemiring-nat-isscalartower--5b7a84a3874bac40e25f8c9f",
  "source": {
    "blob": "1470c95185adc648256f085b887a0f3721b2dc44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 523,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variantb3628fe8613db19bdedfe8f8fa276e672c01539ee1a1e5bd7a018be506c1727b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b7a84a3874bac40e25f8c9f045ada6ebf829bc097c796070fb9250495f13e07",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variantb3628fe8613db19bdedfe8f8fa276e672c01539ee1a1e5bd7a018be506c1727b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87570782d35f072cd894cbfaee8ff73c6048804c3fe7806f4dc3b8f66f72e585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NonUnitalNonAssocSemiring.nat_isScalarTower [NonUnitalNonAssocSemiring R] :
    IsScalarTower ℕ R R :=
  ⟨fun n x y => by
    induction' n with n ih
    · simp [zero_nsmul]
    · simp_rw [succ_nsmul, ← ih, smul_eq_mul, add_mul]⟩
#align non_unital_non_assoc_semiring.nat_is_scalar_tower NonUnitalNonAssocSemiring.nat_isScalarTower

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variantb3628fe8613db19bdedfe8f8fa276e672c01539ee1a1e5bd7a018be506c1727b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variantb3628fe8613db19bdedfe8f8fa276e672c01539ee1a1e5bd7a018be506c1727b.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1470c95185adc648256f085b887a0f3721b2dc44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
