# FiniteSubcomplex.incidentFaces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4881217bb94a27d1284a62400b9ca41eedd1c1971d73a4f44b6c93a18e48fa0",
  "kind": "def",
  "lexical_name": "FiniteSubcomplex.incidentFaces",
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
  "slug": "finitesubcomplex-incidentfaces--7d35e55951db92e58197b087",
  "source": {
    "blob": "a5dea29babee5da1beb4af2489f27ff218cf3926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 155,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d35e55951db92e58197b087b8d2127372ab5f57bcac60a203ba6e0c14da5f42",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4881217bb94a27d1284a62400b9ca41eedd1c1971d73a4f44b6c93a18e48fa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiniteSubcomplex.incidentFaces {complex : FiniteGradedCarrier3}
    (subcomplex : FiniteSubcomplex complex) (edge : complex.Cell) :
    Finset complex.Cell :=
  subcomplex.cells.filter fun face ↦
    (complex.dimension face).1 = 2 ∧ edge ∈ complex.faces face

/-- Adjacency in the combinatorial link of `vertex`: two incident edges are
adjacent when they occur in a common incident two-cell. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variantbc18b1967da6382e1cfc7c6ca96355d4d05732cd0e4f3d133f50fd2c0ccb90b0.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5dea29babee5da1beb4af2489f27ff218cf3926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
