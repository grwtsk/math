# prodEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9d315738b240f12c6a5a16a74813fb84f859025c38c12bffc857a595d17db02",
  "kind": "def",
  "lexical_name": "prodEquiv",
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
  "slug": "prodequiv--cffe6cf4c8ad04d53d1688d4",
  "source": {
    "blob": "902cf38c0c4f339377ad4cad47fcff4af6f0fd5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 403,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NonUnitalHom/Variantd03fe3ea0375f24de00e3bfb6b80dbca22e00de77017d59b3c9c27706e2fd367.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cffe6cf4c8ad04d53d1688d4349b766bc8440b8595aa78e06433afcb68b4544f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NonUnitalHom/Variantd03fe3ea0375f24de00e3bfb6b80dbca22e00de77017d59b3c9c27706e2fd367.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9d315738b240f12c6a5a16a74813fb84f859025c38c12bffc857a595d17db02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodEquiv : (A →ₙₐ[R] B) × (A →ₙₐ[R] C) ≃ (A →ₙₐ[R] B × C) where
  toFun f := f.1.prod f.2
  invFun f := ((fst _ _ _).comp f, (snd _ _ _).comp f)
  left_inv _ := rfl
  right_inv _ := rfl

variable (R A B)

/-- The left injection into a product is a non-unital algebra homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NonUnitalHom/Variantd03fe3ea0375f24de00e3bfb6b80dbca22e00de77017d59b3c9c27706e2fd367.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NonUnitalHom/Variantd03fe3ea0375f24de00e3bfb6b80dbca22e00de77017d59b3c9c27706e2fd367.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `902cf38c0c4f339377ad4cad47fcff4af6f0fd5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
