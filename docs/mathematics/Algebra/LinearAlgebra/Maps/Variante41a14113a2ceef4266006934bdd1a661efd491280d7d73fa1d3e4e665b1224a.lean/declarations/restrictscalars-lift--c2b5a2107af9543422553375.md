# restrictScalars_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4172dc16-0e67-1752-9d81-0f3ad021bbb2",
  "kind": "theorem",
  "lexical_name": "restrictScalars_lift",
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
  "slug": "restrictscalars-lift--c2b5a2107af9543422553375",
  "source": {
    "blob": "eed6bc25275c7805e3ef5654effd7c12536fb4bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 234,
    "path": "GRWTSK/Algebra/LinearAlgebra/Maps/Variante41a14113a2ceef4266006934bdd1a661efd491280d7d73fa1d3e4e665b1224a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2b5a2107af9543422553375a4aa160101eaf1a49740722e170b7d40121def92",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Maps/Variante41a14113a2ceef4266006934bdd1a661efd491280d7d73fa1d3e4e665b1224a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4172dc16-0e67-1752-9d81-0f3ad021bbb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictScalars_lift [CommSemiring R'] [Algebra R R'] [Algebra R' S]
    [Algebra R' A] [IsScalarTower R R' A] [IsScalarTower R' S A]
    [Algebra R' C] [IsScalarTower R R' C] [IsScalarTower R' S C]
    (f : A →ₐ[S] C) (g : B →ₐ[R] C) (hfg : ∀ (x : A) (y : B), Commute (f x) (g y)) :
    (Algebra.TensorProduct.lift f g hfg).restrictScalars R' =
      Algebra.TensorProduct.lift (f.restrictScalars R') g hfg :=
  rfl

end lift

end

variable [CommSemiring R] [CommSemiring S] [Algebra R S]
variable [Semiring A] [Algebra R A] [Algebra S A] [IsScalarTower R S A]
variable [Semiring B] [Algebra R B]
variable [Semiring C] [Algebra R C] [Algebra S C] [IsScalarTower R S C]
variable [Semiring D] [Algebra R D]
variable [Semiring E] [Algebra R E] [Algebra S E] [IsScalarTower R S E]
variable [Semiring F] [Algebra R F]

section

variable (R A)

/-- The base ring is a left identity for the tensor product of algebra, up to algebra isomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Maps/Variante41a14113a2ceef4266006934bdd1a661efd491280d7d73fa1d3e4e665b1224a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Maps/Variante41a14113a2ceef4266006934bdd1a661efd491280d7d73fa1d3e4e665b1224a.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eed6bc25275c7805e3ef5654effd7c12536fb4bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
