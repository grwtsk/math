# PairingCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ecda87a58343f72c6f167e197f6cd5ba8c9c104387c09aebdf5ddd743fe0a27",
  "kind": "structure",
  "lexical_name": "PairingCore",
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
  "slug": "pairingcore--35ceb08a92dfeb4cd6dea183",
  "source": {
    "blob": "34e85a707a447b069957a12af4ebf3bb603bf98e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 40,
    "path": "GRWTSK/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35ceb08a92dfeb4cd6dea183a44da65cf42d14912787c60492ca6ed3a3ca2670",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ecda87a58343f72c6f167e197f6cd5ba8c9c104387c09aebdf5ddd743fe0a27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PairingCore where
  /-- the index type -/
  ι : Type v
  /-- the dimension of each type (II) simplex -/
  dim (s : ι) : ℕ
  /-- the family of type (I) simplices -/
  simplex (s : ι) : X _⦋dim s + 1⦌
  /-- the corresponding type (II) simplex is the `1`-codimensional
    face given by this index -/
  index (s : ι) : Fin (dim s + 2)
  nonDegenerate₁ (s : ι) : simplex s ∈ X.nonDegenerate _
  nonDegenerate₂ (s : ι) : X.δ (index s) (simplex s) ∈ X.nonDegenerate _
  notMem₁ (s : ι) : simplex s ∉ A.obj _
  notMem₂ (s : ι) : X.δ (index s) (simplex s) ∉ A.obj _
  injective_type₁' {s t : ι} (h : S.mk (simplex s) = S.mk (simplex t)) : s = t
  injective_type₂' {s t : ι}
    (h : S.mk (X.δ (index s) (simplex s)) = S.mk (X.δ (index t) (simplex t))) : s = t
  type₁_ne_type₂' (s t : ι) : S.mk (simplex s) ≠ S.mk (X.δ (index t) (simplex t))
  surjective' (x : A.N) :
    ∃ (s : ι), x.toS = S.mk (simplex s) ∨ x.toS = S.mk (X.δ (index s) (simplex s))

variable {A}

/-- The `PairingCore` structure induced by a pairing. The opposite construction
is `PairingCore.pairing`. -/
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e85a707a447b069957a12af4ebf3bb603bf98e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
