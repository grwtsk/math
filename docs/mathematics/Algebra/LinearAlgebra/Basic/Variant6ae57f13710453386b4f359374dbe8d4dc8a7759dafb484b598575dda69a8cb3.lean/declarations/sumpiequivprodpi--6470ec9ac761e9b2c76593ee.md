# sumPiEquivProdPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b4aa0a03c94f1613b127d95ea6be829b3fa1d1420a8bf47f8a4faf53d10b6b9",
  "kind": "def",
  "lexical_name": "sumPiEquivProdPi",
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
  "slug": "sumpiequivprodpi--6470ec9ac761e9b2c76593ee",
  "source": {
    "blob": "4211499574f67bd72e2d428fb8ee9c1ad6a4d9eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 908,
    "line": 896,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6470ec9ac761e9b2c76593ee956a910662edb0c8eed3819e5f15e90dd9c631d2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b4aa0a03c94f1613b127d95ea6be829b3fa1d1420a8bf47f8a4faf53d10b6b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 896–908.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumPiEquivProdPi (R : Type*) [Semiring R] (S T : Type*) (A : S ⊕ T → Type*)
    [∀ st, AddCommMonoid (A st)] [∀ st, Module R (A st)] :
    (Π (st : S ⊕ T), A st) ≃ₗ[R] (Π (s : S), A (.inl s)) × (Π (t : T), A (.inr t)) where
  __ := Equiv.sumPiEquivProdPi _
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

/-- The product `Π t : α, f t` of a family of modules is linearly isomorphic to the module
`f ⬝` when `α` only contains `⬝`.

This is `Equiv.piUnique` as a `LinearEquiv`.
-/
@[simps -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean#L896).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4211499574f67bd72e2d428fb8ee9c1ad6a4d9eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
