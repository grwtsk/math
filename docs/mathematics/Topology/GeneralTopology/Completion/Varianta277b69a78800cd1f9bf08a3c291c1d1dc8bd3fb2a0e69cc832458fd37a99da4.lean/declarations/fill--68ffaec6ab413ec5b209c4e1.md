# Fill

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a718a9f0642b72c686e1a2138205c406df7b025e12bd91a64c8e97ba50a73a1",
  "kind": "abbrev",
  "lexical_name": "Fill",
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
  "slug": "fill--68ffaec6ab413ec5b209c4e1",
  "source": {
    "blob": "a81eab007c4c8e644dd52c27ea08f8c87381fc42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/Completion/Varianta277b69a78800cd1f9bf08a3c291c1d1dc8bd3fb2a0e69cc832458fd37a99da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68ffaec6ab413ec5b209c4e187eacf5d4861501d37c833ae6f3d16cf7a1fc67a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Completion/Varianta277b69a78800cd1f9bf08a3c291c1d1dc8bd3fb2a0e69cc832458fd37a99da4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a718a9f0642b72c686e1a2138205c406df7b025e12bd91a64c8e97ba50a73a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Fill (α : Type*) [LinearOrder α] : Type _ :=
  {x : α ×ₗ ℚ //
    (IsSuccPrelimit (ofLex x).1 → 0 ≤ (ofLex x).2) ∧
    (IsPredPrelimit (ofLex x).1 → (ofLex x).2 ≤ 0) }

namespace Fill

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Completion/Varianta277b69a78800cd1f9bf08a3c291c1d1dc8bd3fb2a0e69cc832458fd37a99da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Completion/Varianta277b69a78800cd1f9bf08a3c291c1d1dc8bd3fb2a0e69cc832458fd37a99da4.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a81eab007c4c8e644dd52c27ea08f8c87381fc42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
