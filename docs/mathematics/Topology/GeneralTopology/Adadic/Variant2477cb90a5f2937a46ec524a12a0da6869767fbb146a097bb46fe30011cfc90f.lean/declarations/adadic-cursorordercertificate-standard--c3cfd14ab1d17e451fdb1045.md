# Adadic.CursorOrderCertificate.standard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc4a6ff05f1315d1d088d3dd715c8376b157b9f0d02587a960ce9d7221cdf508",
  "kind": "def",
  "lexical_name": "Adadic.CursorOrderCertificate.standard",
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
  "slug": "adadic-cursorordercertificate-standard--c3cfd14ab1d17e451fdb1045",
  "source": {
    "blob": "465ed420fe290c7ee432921afd00994bc36e0b4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3cfd14ab1d17e451fdb1045815232f6ffe51d78efd74ef385124f2ba56288ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc4a6ff05f1315d1d088d3dd715c8376b157b9f0d02587a960ce9d7221cdf508`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Adadic.CursorOrderCertificate.standard :
    Adadic.CursorOrderCertificate Adadic.Cursor.standard where
  coverOpen_lt_coverBoundary := by decide
  coverBoundary_lt_arithmeticCore := by decide
  arithmeticCore_lt_arithmeticResidue := by decide
  arithmeticResidue_lt_controlFlow := by decide
  controlFlow_lt_kernelAdmission := by decide
  kernelAdmission_lt_handshake := by decide

/-- Standard Handshake certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465ed420fe290c7ee432921afd00994bc36e0b4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
