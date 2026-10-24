# rationalSourceCap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a93ca696e95ae8a32bccc8b0c0e32682173b50269c5099008dda520da51d3b67",
  "kind": "def",
  "lexical_name": "rationalSourceCap",
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
  "slug": "rationalsourcecap--0b2dcff9686c517e8324b1d7",
  "source": {
    "blob": "c5648ffc42bbaa45949357b5e54fa2b5e5287671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 20,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeFiniteTailBudget/Variant18a00297b23b9ac3ff418ab26a14b799ec67107003a0070f21749bbddd207b69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b2dcff9686c517e8324b1d75467eef92975f8fcc0d0b7024e9b4e87fbbc27e7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiveModeFiniteTailBudget/Variant18a00297b23b9ac3ff418ab26a14b799ec67107003a0070f21749bbddd207b69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a93ca696e95ae8a32bccc8b0c0e32682173b50269c5099008dda520da51d3b67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rationalSourceCap : ℝ :=
  max (6 : ℝ) (((2719/1000 : ℝ)^160+3)/160^9) *
    385^2 * (17/16)^2 / (4096/109395)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiveModeFiniteTailBudget/Variant18a00297b23b9ac3ff418ab26a14b799ec67107003a0070f21749bbddd207b69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiveModeFiniteTailBudget/Variant18a00297b23b9ac3ff418ab26a14b799ec67107003a0070f21749bbddd207b69.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5648ffc42bbaa45949357b5e54fa2b5e5287671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
