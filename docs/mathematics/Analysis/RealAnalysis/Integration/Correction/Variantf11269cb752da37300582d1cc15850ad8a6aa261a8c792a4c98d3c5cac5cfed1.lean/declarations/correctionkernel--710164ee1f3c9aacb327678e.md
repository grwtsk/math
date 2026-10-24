# correctionKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96b240be24396ede988ba8e604f6958125d7c497a0be616b3de05b3eb1cd04b1",
  "kind": "def",
  "lexical_name": "correctionKernel",
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
  "slug": "correctionkernel--710164ee1f3c9aacb327678e",
  "source": {
    "blob": "55e48916634355d4dd3f164851a04c2c15cd6049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:710164ee1f3c9aacb327678e81af3a4c00c4891a74933bc60f2c714539f29970",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96b240be24396ede988ba8e604f6958125d7c497a0be616b3de05b3eb1cd04b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def correctionKernel (s : ℂ) : ℂ :=
  (65536 / 109395 : ℂ) / 16 * J 17 s +
    (131072 / 45045 : ℂ) / 2 * J 15 s +
    (196608 / 5005 : ℂ) * J 13 s

/-- The weighted correction splits into the three exact polynomial-exponential
kernel integrands. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e48916634355d4dd3f164851a04c2c15cd6049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
