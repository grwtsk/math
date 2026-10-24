# Matrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e95d711457857bed65c73ec6e67878d0179d841e0ed7d8fb4fd44c83402155b7",
  "kind": "abbrev",
  "lexical_name": "Matrix",
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
  "slug": "matrix--a63dab5a3819dd8ba2c497b0",
  "source": {
    "blob": "9c7c94d55c7f9f7433207d53bb8fb7d2cbaae48c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 17,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a63dab5a3819dd8ba2c497b0c73b9b6a01ac2b203d5a7bee118b4fd868bf608f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e95d711457857bed65c73ec6e67878d0179d841e0ed7d8fb4fd44c83402155b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Matrix (rows cols : Nat) :=
  Fin rows → Fin cols → Bool

/-- Read the entry in row `i` and column `j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c7c94d55c7f9f7433207d53bb8fb7d2cbaae48c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
