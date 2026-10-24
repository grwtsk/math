# Algebra.directSumGAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c19048db7390f95417a0c2fcfa8ea99d538dfb6a8cbbcd3e430b2c4c0aa9287c",
  "kind": "instance",
  "lexical_name": "Algebra.directSumGAlgebra",
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
  "slug": "algebra-directsumgalgebra--a0b01de3f3705e1d3d5eca55",
  "source": {
    "blob": "707a183aad0ae39fbad7d2edd99411b6b0e091b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 162,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0b01de3f3705e1d3d5eca5597f3bae500763d3a1f7cfc5fba9c20735d257270",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c19048db7390f95417a0c2fcfa8ea99d538dfb6a8cbbcd3e430b2c4c0aa9287c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Algebra.directSumGAlgebra {R A : Type*} [AddMonoid ι] [CommSemiring R]
    [Semiring A] [Algebra R A] : DirectSum.GAlgebra R fun _ : ι => A where
  toFun := (algebraMap R A).toAddMonoidHom
  map_one := (algebraMap R A).map_one
  map_mul a b := Sigma.ext (zero_add _).symm (heq_of_eq <| (algebraMap R A).map_mul a b)
  commutes := fun _ ⟨_, _⟩ =>
    Sigma.ext ((zero_add _).trans (add_zero _).symm) (heq_of_eq <| Algebra.commutes _ _)
  smul_def := fun _ ⟨_, _⟩ => Sigma.ext (zero_add _).symm (heq_of_eq <| Algebra.smul_def _ _)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `707a183aad0ae39fbad7d2edd99411b6b0e091b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
