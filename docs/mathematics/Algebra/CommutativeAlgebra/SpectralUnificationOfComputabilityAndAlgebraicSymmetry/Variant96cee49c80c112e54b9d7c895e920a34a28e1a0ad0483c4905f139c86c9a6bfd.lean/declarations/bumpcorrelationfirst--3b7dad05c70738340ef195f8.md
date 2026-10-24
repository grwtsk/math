# bumpCorrelationFirst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04615393f2041b154b948ac7daa0f6d73d90843959719ed6a6301c267c24af93",
  "kind": "def",
  "lexical_name": "bumpCorrelationFirst",
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
  "slug": "bumpcorrelationfirst--3b7dad05c70738340ef195f8",
  "source": {
    "blob": "06df97e6f1c69fe6799fdede8d2acbf8cd8db8b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 138,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b7dad05c70738340ef195f83fba78e0f98aa2762d0321d9606be963a0f6647e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04615393f2041b154b948ac7daa0f6d73d90843959719ed6a6301c267c24af93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bumpCorrelationFirst (v : ℝ) : ℝ :=
  (2 - v)^8 * (-7 * v^8 - 112 * v^7 - 768 * v^6 - 2880 * v^5 - 6144 * v^4 - 6912 * v^3 - 4096 *
    v^2 - 1024 * v) / 90090

/-- The order-2 polynomial in the unit displacement variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06df97e6f1c69fe6799fdede8d2acbf8cd8db8b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
