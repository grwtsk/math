# pairingDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:267f43d017850e40dfea53692a7e82e0c290d3d3558678b5acd86f4d2981b034",
  "kind": "def",
  "lexical_name": "pairingDual",
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
  "slug": "pairingdual--797fae554ba8bb5f6879d9fe",
  "source": {
    "blob": "d87c0381443149509c36efc2e0b3274908237441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:797fae554ba8bb5f6879d9fe7370cba40d9dae2c542009c56d5d61ac3b7be79b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:267f43d017850e40dfea53692a7e82e0c290d3d3558678b5acd86f4d2981b034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pairingDual :
    ⨂[R]^n (Module.Dual R M) →ₗ[R] (Module.Dual R (⨂[R]^n M)) :=
  PiTensorProduct.lift (multilinearMapToDual R M n)

variable {R M n} in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d87c0381443149509c36efc2e0b3274908237441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
