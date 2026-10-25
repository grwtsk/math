# FiniteTerminalCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:678c828606286d9af181a5f81e731c33499bd4fbd2ac56595a42e3273e406316",
  "kind": "structure",
  "lexical_name": "FiniteTerminalCertificate",
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
  "slug": "finiteterminalcertificate--a39b5d1c1249ffe8d63f20a8",
  "source": {
    "blob": "50769296831728cfc96440003a343b9c46196a22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a39b5d1c1249ffe8d63f20a870f02ecabefe971001d4065afa3b4733b5b0365b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:678c828606286d9af181a5f81e731c33499bd4fbd2ac56595a42e3273e406316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteTerminalCertificate (state : State) where
  active_card_le_one : state.correlation.activeAtoms.card ≤ 1
  terminalCost : ℝ
  terminalCost_nonneg : 0 ≤ terminalCost
  directCoefficientBound : state.correlation.maxPotential ≤ terminalCost

/-- Explicit topological recognition and cut adapter for a surgical neck.

`SphericalLinkCandidate` alone is only an incidence/Euler candidate.  A
binary surgery node therefore also carries a separately proved topological
sphere-recognition proposition and a proposition identifying the algebraic
children with the recognized cut.  These are assumptions at this interface,
not consequences of the candidate fields. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50769296831728cfc96440003a343b9c46196a22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
