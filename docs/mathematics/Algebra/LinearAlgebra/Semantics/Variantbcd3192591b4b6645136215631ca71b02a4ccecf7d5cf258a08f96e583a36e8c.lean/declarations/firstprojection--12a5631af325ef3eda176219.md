# firstProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5489b72eab004dda8cd5ccfe98895e6520d3fa5dcdc9c6ae4071d1564b4c394",
  "kind": "def",
  "lexical_name": "firstProjection",
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
  "slug": "firstprojection--12a5631af325ef3eda176219",
  "source": {
    "blob": "96a1958e3fd91d98ca665ff27ed48cd2fd9c6d23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 135,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12a5631af325ef3eda1762192f093e8ad7a29e9f35d4be1c390d616bce8c4be6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5489b72eab004dda8cd5ccfe98895e6520d3fa5dcdc9c6ae4071d1564b4c394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def firstProjection {Point : Type*} : CarrierProduct Point → Point :=
  Prod.fst

/-- Embed one carrier point on the diagonal of the doubled carrier.

This is a section `p ↦ (p, p)` of `firstProjection`.  It must not be confused
with the JavaScript operation named `reflectDiagonal`: that runtime operation
is coordinate reflection `(x, y) ↦ (y, x)`, has a different type, and has no
runtime-correspondence theorem asserted by this module.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semantics/Variantbcd3192591b4b6645136215631ca71b02a4ccecf7d5cf258a08f96e583a36e8c.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96a1958e3fd91d98ca665ff27ed48cd2fd9c6d23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
