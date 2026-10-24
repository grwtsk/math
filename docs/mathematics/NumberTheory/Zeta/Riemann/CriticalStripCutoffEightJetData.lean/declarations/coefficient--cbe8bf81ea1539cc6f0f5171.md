# coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:435203330df62baf566cba13cddd9c06c4cb47d8985996400831b978430a210c",
  "kind": "def",
  "lexical_name": "coefficient",
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
  "slug": "coefficient--cbe8bf81ea1539cc6f0f5171",
  "source": {
    "blob": "2c75c5598790548212086143fa75022d8daafb3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 208,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbe8bf81ea1539cc6f0f5171d5c5b2beb8a63c22030c8a55f87509a7d722f0ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:435203330df62baf566cba13cddd9c06c4cb47d8985996400831b978430a210c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficient : Fin 14 → ℂ := ![⟨(74928083 / 16777216), (36570491 / 8388608)⟩, ⟨(-36947747 / 8388608), (50346027 / 8388608)⟩, ⟨(1491667 / 524288), (-914043 / 524288)⟩, ⟨(-15829093 / 16777216), (945243 / 4194304)⟩, ⟨(3723599 / 16777216), (386033 / 16777216)⟩, ⟨(-324779 / 8388608), (-321057 / 16777216)⟩, ⟨(82647 / 16777216), (90251 / 16777216)⟩, ⟨(-1621 / 4194304), (-2161 / 2097152)⟩, ⟨(-545 / 16777216), (43591 / 8388608)⟩, ⟨(401 / 4194304), (301 / 16777216)⟩, ⟨(1 / 8388608), (-23 / 16777216)⟩, ⟨(-1 / 16777216), 0⟩, ⟨0, 0⟩, ⟨0, 0⟩]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c75c5598790548212086143fa75022d8daafb3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
