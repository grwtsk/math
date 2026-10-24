# IsLyapunovStable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a12627d40ae84d96b00ece1b8f8bfc1905afd7783b4abe1b952e5fc90d526b5",
  "kind": "def",
  "lexical_name": "IsLyapunovStable",
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
  "slug": "islyapunovstable--57fb5a846ebce36b15d2221d",
  "source": {
    "blob": "8f380ce56eb30221e1611877e13231a451e1ed8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 22,
    "path": "GRWTSK/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57fb5a846ebce36b15d2221d85098dfcd5edde583cddcf1348c8d778e4c53ba1",
  "verification": {
    "reference": "docs/verification/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a12627d40ae84d96b00ece1b8f8bfc1905afd7783b4abe1b952e5fc90d526b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsLyapunovStable
    [PseudoMetricSpace State]
    (operator : VersionedOperator State)
    (fixedPoint : CertifiedFixedPoint operator) : Prop :=
  ∀ ε > 0,
    ∃ δ > 0,
      ∀ state : operator.domain,
        dist state fixedPoint.point < δ →
        ∀ iteration : Nat,
          dist ((operator.step^[iteration]) state)
              fixedPoint.point < ε

/-- Every state in some metric neighborhood converges to the fixed point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f380ce56eb30221e1611877e13231a451e1ed8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
