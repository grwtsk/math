# canonicalRectangleEdgeNode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc24ccbd73dfa9cfe20c3e9abc00bcc43051a8ab5b26318220444efed66c0b38",
  "kind": "def",
  "lexical_name": "canonicalRectangleEdgeNode",
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
  "slug": "canonicalrectangleedgenode--56fa78d7a9742b7c271be68a",
  "source": {
    "blob": "5ef55c875af63e14cf27997b5a1af638da547453",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryEntries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56fa78d7a9742b7c271be68ab2fbd02b0670361e1873fc99cf79376e73d1a815",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryEntries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc24ccbd73dfa9cfe20c3e9abc00bcc43051a8ab5b26318220444efed66c0b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalRectangleEdgeNode : WitnessNode where
  id := .canonicalRectangleEdge
  kind := .witness
  scope := .finiteHeightZeta
  availability := .localImport
  source := some (sourceRef 345
    "research/135-positive-height-count-deficit-v01"
    "9356655ba5ce3a8473b718b41a525d19bdaf21bb"
    "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean"
    "CanonicalRectangleEdgeWitness"
    "Exact finite contour-edge enclosure and count-isolation witness.")
  evidence := [.sourceDraft]
  consumer := some (consumer
    "CanonicalRectangleEdgeWitness.rhThrough"
    "Finite-height RH conclusion after an independently aligned critical-line family and strict deficit.")
  summary := "A complete half-unit contour-edge report whose corrected interval isolates one positive-height zero count."

/-- The local route atlas from PR #447. It names conditional routes but supplies
no route inhabitant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryEntries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryEntries.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ef55c875af63e14cf27997b5a1af638da547453` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
