# charPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a6bdf30e989812db5cd6352f70178e6edc0ef670110d8599120a1aa3e2c5026",
  "kind": "def",
  "lexical_name": "charPoly",
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
  "slug": "charpoly--d2e737fe6aa3ca6bfb79d670",
  "source": {
    "blob": "f570caaf7b0fefbb63bd3e911dc15d73f35df2b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 219,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2e737fe6aa3ca6bfb79d6703dd5da648a2c51c45b0635cca727f7f1c21b903b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a6bdf30e989812db5cd6352f70178e6edc0ef670110d8599120a1aa3e2c5026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def charPoly : α[X] :=
  Polynomial.monomial E.order 1 - ∑ i : Fin E.order, Polynomial.monomial i (E.coeffs i)
#align linear_recurrence.char_poly LinearRecurrence.charPoly

/-- The geometric sequence `q^n` is a solution of `E` iff
  `q` is a root of `E`'s characteristic polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f570caaf7b0fefbb63bd3e911dc15d73f35df2b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
