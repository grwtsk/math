# rank_self_mul_transpose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f791cb8-9792-7330-7e56-1c9197f20888",
  "kind": "theorem",
  "lexical_name": "rank_self_mul_transpose",
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
  "slug": "rank-self-mul-transpose--8dbf9f8e7835ccdf9d532315",
  "source": {
    "blob": "d5acbd5f7b8f25078c403b18cb5616273c22d3a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 569,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dbf9f8e7835ccdf9d5323156981bd3affb72d5987be38b1fd8e51adfaa7a999",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f791cb8-9792-7330-7e56-1c9197f20888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_self_mul_transpose [Field R] [LinearOrder R] [IsStrictOrderedRing R]
    [Fintype m] (A : Matrix m n R) :
    (A * Aᵀ).rank = A.rank := by
  simpa only [rank_transpose, transpose_transpose] using rank_transpose_mul_self Aᵀ

/-- The rank of a matrix is the rank of the space spanned by its rows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5acbd5f7b8f25078c403b18cb5616273c22d3a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
