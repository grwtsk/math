# cocycles1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17a6f6a3a27760d4f212be0aa180431a2cf1449bdee4404a0f49ed38549c66df",
  "kind": "def",
  "lexical_name": "cocycles1",
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
  "slug": "cocycles1--ad94ebbfcfe5cd0d48378d51",
  "source": {
    "blob": "5f2b538f8d05d4afae3782be4fb9f8d2654cf30e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cech/Variant64de5ebc3d0c11f51636bafe81c48e9a7fcce10ccaf73cfb3c3c461cbbe88847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad94ebbfcfe5cd0d48378d51e087dd9a15247dbee1f790687b9ce30a31e07ab9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cech/Variant64de5ebc3d0c11f51636bafe81c48e9a7fcce10ccaf73cfb3c3c461cbbe88847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17a6f6a3a27760d4f212be0aa180431a2cf1449bdee4404a0f49ed38549c66df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cocycles1 (complex : FiniteCechComplex) : Finset complex.C1 :=
  by
    letI : Fintype complex.C1 := complex.c1Fintype
    letI : DecidableEq complex.C1 := complex.c1DecidableEq
    letI : DecidableEq complex.C2 := complex.c2DecidableEq
    exact Finset.univ.filter fun cochain => complex.d1 cochain = 0

/-- Exact finite enumeration of degree-one coboundaries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cech/Variant64de5ebc3d0c11f51636bafe81c48e9a7fcce10ccaf73cfb3c3c461cbbe88847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cech/Variant64de5ebc3d0c11f51636bafe81c48e9a7fcce10ccaf73cfb3c3c461cbbe88847.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f2b538f8d05d4afae3782be4fb9f8d2654cf30e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
