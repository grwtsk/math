# toTensorAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8889a3030692f8ac5a8b787b9da12f6c3fe9b58388748ad37b0f73282a19bc91",
  "kind": "def",
  "lexical_name": "toTensorAlgebra",
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
  "slug": "totensoralgebra--ee8277925487a5eb54ed886b",
  "source": {
    "blob": "64051b67ab79d96a68efd4fbb63feafb2bf2d574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee8277925487a5eb54ed886b57cffdc59391526b09fc017c2c5c6a8becabf0d3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8889a3030692f8ac5a8b787b9da12f6c3fe9b58388748ad37b0f73282a19bc91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toTensorAlgebra {n} : ⨂[R]^n M →ₗ[R] TensorAlgebra R M :=
  PiTensorProduct.lift (TensorAlgebra.tprod R M n)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64051b67ab79d96a68efd4fbb63feafb2bf2d574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
