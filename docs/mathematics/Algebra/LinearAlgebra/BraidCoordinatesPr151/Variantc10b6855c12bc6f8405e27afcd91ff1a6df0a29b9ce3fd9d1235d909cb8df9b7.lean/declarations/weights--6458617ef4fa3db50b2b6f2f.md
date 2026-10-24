# Weights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d252c4b0b3a385cf0e0c416ea23e6c1c7689bccb853c56853c14629caeac2b8f",
  "kind": "structure",
  "lexical_name": "Weights",
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
  "slug": "weights--6458617ef4fa3db50b2b6f2f",
  "source": {
    "blob": "f9a9391b1121c9fed459a547145aaec7f2596abb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 26,
    "path": "GRWTSK/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variantc10b6855c12bc6f8405e27afcd91ff1a6df0a29b9ce3fd9d1235d909cb8df9b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6458617ef4fa3db50b2b6f2f904f29ffa69c3d1bcb024250eb222532897ff54c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variantc10b6855c12bc6f8405e27afcd91ff1a6df0a29b9ce3fd9d1235d909cb8df9b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d252c4b0b3a385cf0e0c416ea23e6c1c7689bccb853c56853c14629caeac2b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[ext] structure Weights where
  /-- First weight. -/
  a : ℝ
  /-- Middle weight. -/
  b : ℝ
  /-- Last weight. -/
  c : ℝ

/-- The open positive domain on which both factorizations are reversible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variantc10b6855c12bc6f8405e27afcd91ff1a6df0a29b9ce3fd9d1235d909cb8df9b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variantc10b6855c12bc6f8405e27afcd91ff1a6df0a29b9ce3fd9d1235d909cb8df9b7.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a9391b1121c9fed459a547145aaec7f2596abb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
