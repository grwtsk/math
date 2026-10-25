# PolarizedSection.transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6b97a9fe8b7033dcd3d3674b22e47e4096e1275d3aee92339b7cee1a18b51db",
  "kind": "def",
  "lexical_name": "PolarizedSection.transport",
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
  "slug": "polarizedsection-transport--c8007e88dca1109266d48cdc",
  "source": {
    "blob": "cf7c89ba7c8faf3a960881a014b214b030cf61ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PolarizedSheaf/Variant90834d92c9106dd2fc159beedc722247b814156425146908fa48d20e79ca82e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8007e88dca1109266d48cdc0bdd52aba5500b706f8acdfe1ed9f53cc595a986",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PolarizedSheaf/Variant90834d92c9106dd2fc159beedc722247b814156425146908fa48d20e79ca82e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6b97a9fe8b7033dcd3d3674b22e47e4096e1275d3aee92339b7cee1a18b51db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PolarizedSection.transport
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    (transport : PolarizedTransport cut)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (polarizedSection : PolarizedSection) :
    PolarizedSection where
  amplitude :=
    polarizedSection.amplitude.transport
      transport.amplitude path
  phaseResidue :=
    path.transportResidue
      transport.phase.phase
      polarizedSection.phaseResidue
  phaseSafe :=
    path.transportResidue_safe
      transport.phase.phase
      polarizedSection.phaseSafe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PolarizedSheaf/Variant90834d92c9106dd2fc159beedc722247b814156425146908fa48d20e79ca82e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PolarizedSheaf/Variant90834d92c9106dd2fc159beedc722247b814156425146908fa48d20e79ca82e3.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf7c89ba7c8faf3a960881a014b214b030cf61ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
