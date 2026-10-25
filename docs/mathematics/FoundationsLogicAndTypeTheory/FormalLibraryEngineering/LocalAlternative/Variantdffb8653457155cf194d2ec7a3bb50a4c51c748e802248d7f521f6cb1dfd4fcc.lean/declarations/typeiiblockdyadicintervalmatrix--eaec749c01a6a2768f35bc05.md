# typeIIBlockDyadicIntervalMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f94828bd102ef01be0a084ac8ec49d98d5ecd1a3007f1f89b0eb06420d1f024",
  "kind": "def",
  "lexical_name": "typeIIBlockDyadicIntervalMatrix",
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
  "slug": "typeiiblockdyadicintervalmatrix--eaec749c01a6a2768f35bc05",
  "source": {
    "blob": "bfe12479ecb760b99639c9a175ad45c6bf5c6c57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantdffb8653457155cf194d2ec7a3bb50a4c51c748e802248d7f521f6cb1dfd4fcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaec749c01a6a2768f35bc05a70d6cf5a5348700343a609069a81792a8f4920d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantdffb8653457155cf194d2ec7a3bb50a4c51c748e802248d7f521f6cb1dfd4fcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f94828bd102ef01be0a084ac8ec49d98d5ecd1a3007f1f89b0eb06420d1f024`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def typeIIBlockDyadicIntervalMatrix {N : ℕ} (B : TypeIIDyadicBlock N)
    (interval : TypeIIDyadicInterval N) : Matrix B.Left B.Right ℂ :=
  productDyadicIntervalMatrix (fun left : B.Left ↦ left.1.1)
    (fun right : B.Right ↦ right.1.1) interval

/-- Diffuse--diffuse part of the fixed arithmetic interval pairing. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantdffb8653457155cf194d2ec7a3bb50a4c51c748e802248d7f521f6cb1dfd4fcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalAlternative/Variantdffb8653457155cf194d2ec7a3bb50a4c51c748e802248d7f521f6cb1dfd4fcc.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfe12479ecb760b99639c9a175ad45c6bf5c6c57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
