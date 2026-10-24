# _root_.GRWTSK.Algebra.Cotangent.Variantda3f52cab4dbe568aebf46f7a3535aa9b2b58712bc5dea75f3f6c0696bf61eb8.AlgHom.kerSquareLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e5a350643a46881013657de0596afb5850272efebbd41c105f8e1e0f5bb4793",
  "kind": "abbrev",
  "lexical_name": "_root_.GRWTSK.Algebra.Cotangent.Variantda3f52cab4dbe568aebf46f7a3535aa9b2b58712bc5dea75f3f6c0696bf61eb8.AlgHom.kerSquareLift",
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
  "slug": "root-grwtsk-algebra-cotangent-variantda3f52cab4dbe568aebf46f7a3535aa9b2b--67ecf7875b27c3ecc42c21b6",
  "source": {
    "blob": "d0761331c051277a84db00556545645181178064",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 182,
    "path": "GRWTSK/Algebra/Cotangent/Variant64a346603de60e8056093a59db96e3bf0b97a08e38ab72fcc79d7aceb0432ee7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67ecf7875b27c3ecc42c21b66d7d853eb0450a5cf03a3dfbdc3cd0cc7e9872db",
  "verification": {
    "reference": "docs/verification/Algebra/Cotangent/Variant64a346603de60e8056093a59db96e3bf0b97a08e38ab72fcc79d7aceb0432ee7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e5a350643a46881013657de0596afb5850272efebbd41c105f8e1e0f5bb4793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev _root_.GRWTSK.Algebra.Cotangent.Variantda3f52cab4dbe568aebf46f7a3535aa9b2b58712bc5dea75f3f6c0696bf61eb8.AlgHom.kerSquareLift (f : A →ₐ[R] B) : A ⧸ RingHom.ker f.toRingHom ^ 2 →ₐ[R] B :=
  Ideal.Quotient.liftₐ _ f (pow_le_self two_ne_zero)

-- Can't be `simp`, because `RingHom.ker f.toRingHom` in the definition of `AlgHom.kerSquareLift`
-- is not simp NF. Will be fixed by removing `RingHomClass` in the definition of `RingHom.ker`.
-- (#25138)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Cotangent/Variant64a346603de60e8056093a59db96e3bf0b97a08e38ab72fcc79d7aceb0432ee7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Cotangent/Variant64a346603de60e8056093a59db96e3bf0b97a08e38ab72fcc79d7aceb0432ee7.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0761331c051277a84db00556545645181178064` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
