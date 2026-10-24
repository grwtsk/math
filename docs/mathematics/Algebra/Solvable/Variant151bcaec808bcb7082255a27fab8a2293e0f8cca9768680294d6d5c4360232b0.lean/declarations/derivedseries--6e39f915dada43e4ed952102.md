# derivedSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71dad763adc7157fd77db99e623baea8c6c93af449cc7a65ad28fb0ea1b190c9",
  "kind": "abbrev",
  "lexical_name": "derivedSeries",
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
  "slug": "derivedseries--6e39f915dada43e4ed952102",
  "source": {
    "blob": "1cae02262568d84e33787eef50e909c5e51929a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 67,
    "path": "GRWTSK/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e39f915dada43e4ed95210293599dddd6e2c72cab8ec20b071bdd7fc70787b9",
  "verification": {
    "reference": "docs/verification/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71dad763adc7157fd77db99e623baea8c6c93af449cc7a65ad28fb0ea1b190c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev derivedSeries (k : ℕ) : LieIdeal R L :=
  derivedSeriesOfIdeal R L k ⊤

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cae02262568d84e33787eef50e909c5e51929a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
