# wittMulN

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c18c8214ddbd4d22346c1edb9e8cdce1249e8ddd96a4a173f664da1c1173ddf",
  "kind": "def",
  "lexical_name": "wittMulN",
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
  "slug": "wittmuln--f9d55fe5d93a0f1a6527fd22",
  "source": {
    "blob": "f239ad00aabdcc2ef2aae1902c5dc1b9395e9eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 48,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9d55fe5d93a0f1a6527fd22dd2f29b4f49d3ed7cd8cc262016b59f865edf61c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c18c8214ddbd4d22346c1edb9e8cdce1249e8ddd96a4a173f664da1c1173ddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def wittMulN : ℕ → ℕ → MvPolynomial ℕ ℤ
  | 0 => 0
  | n + 1 => fun k => bind₁ (Function.uncurry <| ![wittMulN n, X]) (wittAdd p k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f239ad00aabdcc2ef2aae1902c5dc1b9395e9eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
