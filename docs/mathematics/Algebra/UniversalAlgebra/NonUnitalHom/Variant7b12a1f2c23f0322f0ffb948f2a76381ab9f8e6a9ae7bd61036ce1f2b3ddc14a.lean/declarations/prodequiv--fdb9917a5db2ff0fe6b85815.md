# prodEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7eda175fea7a5565bb6be66c684005c9867e0802170943ccbdbd0d42242a97e7",
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
  "slug": "prodequiv--fdb9917a5db2ff0fe6b85815",
  "source": {
    "blob": "f004fe1477dcc303033fce14dbdf8e62931aa61a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 409,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NonUnitalHom/Variant7b12a1f2c23f0322f0ffb948f2a76381ab9f8e6a9ae7bd61036ce1f2b3ddc14a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdb9917a5db2ff0fe6b858154274654bd484303c667642c8bc6b828775863f74",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NonUnitalHom/Variant7b12a1f2c23f0322f0ffb948f2a76381ab9f8e6a9ae7bd61036ce1f2b3ddc14a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7eda175fea7a5565bb6be66c684005c9867e0802170943ccbdbd0d42242a97e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodEquiv : (A →ₙₐ[R] B) × (A →ₙₐ[R] C) ≃ (A →ₙₐ[R] B × C) where
  toFun f := f.1.prod f.2
  invFun f := ((fst _ _ _).comp f, (snd _ _ _).comp f)

variable (R A B)

/-- The left injection into a product is a non-unital algebra homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NonUnitalHom/Variant7b12a1f2c23f0322f0ffb948f2a76381ab9f8e6a9ae7bd61036ce1f2b3ddc14a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NonUnitalHom/Variant7b12a1f2c23f0322f0ffb948f2a76381ab9f8e6a9ae7bd61036ce1f2b3ddc14a.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f004fe1477dcc303033fce14dbdf8e62931aa61a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
