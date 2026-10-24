# gMulLHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc335a60f317efdef3a6c2008a445698a79c1621c0299b31830bae49d4b18a1f",
  "kind": "def",
  "lexical_name": "gMulLHom",
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
  "slug": "gmullhom--d1d940e979aa58a099ba814c",
  "source": {
    "blob": "707a183aad0ae39fbad7d2edd99411b6b0e091b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 145,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1d940e979aa58a099ba814c2bf49129674a525f2a3d86784e6c824f24e717a0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc335a60f317efdef3a6c2008a445698a79c1621c0299b31830bae49d4b18a1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gMulLHom {i j} : A i →ₗ[R] A j →ₗ[R] A (i + j) where
  toFun a :=
    { toFun := fun b => GradedMonoid.GMul.mul a b
      map_smul' := fun r x => by
        injection (smul_comm r (GradedMonoid.mk _ a) (GradedMonoid.mk _ x)).symm
      map_add' := GNonUnitalNonAssocSemiring.mul_add _ }
  map_smul' r x := LinearMap.ext fun y => by
    injection smul_assoc r (GradedMonoid.mk _ x) (GradedMonoid.mk _ y)
  map_add' _ _ := LinearMap.ext fun _ => GNonUnitalNonAssocSemiring.add_mul _ _ _

end DirectSum

/-! ### Concrete instances -/


/-- A direct sum of copies of an `Algebra` inherits the algebra structure. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `707a183aad0ae39fbad7d2edd99411b6b0e091b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
