# coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33274abb206c79ff02b10fb1de621746d672b6760dc93b801a9ce5b531581a56",
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
  "slug": "coefficient--24431f7cb13df2eabbe52223",
  "source": {
    "blob": "6ab50acdb550c186aabacf0aea3ecd4032280111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 126,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24431f7cb13df2eabbe52223867b67a6e1328eb74167bdd429b4bf8b0d2b5b08",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33274abb206c79ff02b10fb1de621746d672b6760dc93b801a9ce5b531581a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficient : Fin 14 → ℂ := ![⟨(-16673829 / 1048576), (381054109 / 16777216)⟩, ⟨(254162107 / 16777216), (-14436595 / 4194304)⟩, ⟨(-27895449 / 4194304), (8204603 / 16777216)⟩, ⟨(35821011 / 16777216), (1078139 / 4194304)⟩, ⟨(-2161323 / 4194304), (-765549 / 4194304)⟩, ⟨(406097 / 4194304), (1077981 / 16777216)⟩, ⟨(-236255 / 16777216), (-135215 / 8388608)⟩, ⟨(24665 / 16777216), (3329 / 1048576)⟩, ⟨(-5735 / 16777216), (39149 / 8388608)⟩, ⟨(915 / 8388608), (415 / 16777216)⟩, ⟨(5 / 16777216), (-31 / 16777216)⟩, ⟨(-1 / 16777216), 0⟩, ⟨0, 0⟩, ⟨0, 0⟩]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ab50acdb550c186aabacf0aea3ecd4032280111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
