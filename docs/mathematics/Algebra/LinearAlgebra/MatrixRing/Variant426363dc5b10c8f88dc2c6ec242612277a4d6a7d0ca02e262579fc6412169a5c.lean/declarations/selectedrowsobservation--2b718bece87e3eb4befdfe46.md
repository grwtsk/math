# selectedRowsObservation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee4166670757604b451407ec930a3a263eb04768998dc3348d30800784bdafe7",
  "kind": "def",
  "lexical_name": "selectedRowsObservation",
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
  "slug": "selectedrowsobservation--2b718bece87e3eb4befdfe46",
  "source": {
    "blob": "1ecaf3671a3d66db5b51c1ea944728f596ba750e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 19,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixRing/Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b718bece87e3eb4befdfe46c6ca0df7b5b4a052e0707c2bfb14061720b3d41e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixRing/Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee4166670757604b451407ec930a3a263eb04768998dc3348d30800784bdafe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selectedRowsObservation
    (select : Fin outRows → Fin rows)
    (state : FixedMatrixRingState capacity rows cols) :
    Fin capacity → BitMatrix outRows cols :=
  fun slot i j => state.slots slot (select i) j

/-- Observe selected columns in every matrix-valued slot. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixRing/Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixRing/Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ecaf3671a3d66db5b51c1ea944728f596ba750e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
