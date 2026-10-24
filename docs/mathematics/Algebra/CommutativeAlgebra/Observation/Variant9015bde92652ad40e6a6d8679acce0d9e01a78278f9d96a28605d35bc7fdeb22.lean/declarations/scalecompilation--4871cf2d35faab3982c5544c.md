# scaleCompilation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42f63d5483034f9be28e32f540a358f1d68f7fde9140da71f3d146e9fd539dd7",
  "kind": "def",
  "lexical_name": "scaleCompilation",
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
  "slug": "scalecompilation--4871cf2d35faab3982c5544c",
  "source": {
    "blob": "0f84448f2ebe8c84419a7bc3d17b7a3aabd898b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 40,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4871cf2d35faab3982c5544cf662bc2eacdefdc73871a2e443db1e03181c9235",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42f63d5483034f9be28e32f540a358f1d68f7fde9140da71f3d146e9fd539dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def scaleCompilation (source : PolynomialSource) (c : ℤ) (hc : c ≠ 0) :
    RootPreservingCompilation source where
  compiler := "integer-nonzero-scale-v1"
  output := C c * source.polynomial
  preserves x := by simp [hc]

/-- Executing this compiler never changes the declared integer-root predicate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f84448f2ebe8c84419a7bc3d17b7a3aabd898b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
