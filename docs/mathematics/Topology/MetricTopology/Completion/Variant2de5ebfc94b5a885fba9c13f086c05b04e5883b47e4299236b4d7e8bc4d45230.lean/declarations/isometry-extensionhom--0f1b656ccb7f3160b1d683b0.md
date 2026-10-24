# Isometry.extensionHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aab4f20b224bd05dd5e5bf720b8de683edc0d421b4f3e5602027f4918c5762a0",
  "kind": "def",
  "lexical_name": "Isometry.extensionHom",
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
  "slug": "isometry-extensionhom--0f1b656ccb7f3160b1d683b0",
  "source": {
    "blob": "293d0fcb7bf25db2093bba50ce8263382d3821ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 212,
    "path": "GRWTSK/Topology/MetricTopology/Completion/Variant2de5ebfc94b5a885fba9c13f086c05b04e5883b47e4299236b4d7e8bc4d45230.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f1b656ccb7f3160b1d683b0b308d659a8fb652a2af7d845cdde5c93e8c6d92a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Completion/Variant2de5ebfc94b5a885fba9c13f086c05b04e5883b47e4299236b4d7e8bc4d45230.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aab4f20b224bd05dd5e5bf720b8de683edc0d421b4f3e5602027f4918c5762a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Isometry.extensionHom [CompleteSpace β] [T0Space β] {f : α →+* β} (h : Isometry f) :
    Completion α →+* β := Completion.extensionHom f h.continuous

@[deprecated Completion.extensionHom_coe (since := "2026-08-11")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Completion/Variant2de5ebfc94b5a885fba9c13f086c05b04e5883b47e4299236b4d7e8bc4d45230.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Completion/Variant2de5ebfc94b5a885fba9c13f086c05b04e5883b47e4299236b4d7e8bc4d45230.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `293d0fcb7bf25db2093bba50ce8263382d3821ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
