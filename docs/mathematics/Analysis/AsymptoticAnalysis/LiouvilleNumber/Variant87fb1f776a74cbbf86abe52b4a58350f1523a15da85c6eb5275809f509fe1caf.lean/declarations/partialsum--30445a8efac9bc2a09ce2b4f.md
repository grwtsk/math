# partialSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28caa5703221c9a9e4540089922c997f59ebeab1c67d5f894f68aff44cb691d5",
  "kind": "def",
  "lexical_name": "partialSum",
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
  "slug": "partialsum--30445a8efac9bc2a09ce2b4f",
  "source": {
    "blob": "7b0e5b698a59e2998385bb2a74a24b2d34b2070c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30445a8efac9bc2a09ce2b4ff471f27cb89e6cd0985655537217a3307a3aba31",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28caa5703221c9a9e4540089922c997f59ebeab1c67d5f894f68aff44cb691d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def partialSum (m : ℝ) (k : ℕ) : ℝ :=
  ∑ i in range (k + 1), 1 / m ^ i !
#align liouville_number.partial_sum LiouvilleNumber.partialSum

/-- `LiouvilleNumber.remainder` is the sum of the series of the terms in `liouvilleNumber m`
starting from `k+1`, i.e
$$
\sum_{i=k+1}^\infty\frac{1}{m^{i!}}.
$$
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b0e5b698a59e2998385bb2a74a24b2d34b2070c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
