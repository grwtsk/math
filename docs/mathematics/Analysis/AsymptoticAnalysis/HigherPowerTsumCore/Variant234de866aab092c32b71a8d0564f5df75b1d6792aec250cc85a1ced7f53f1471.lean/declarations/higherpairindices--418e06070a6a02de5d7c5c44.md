# higherPairIndices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bfab0c20d2f9aae0286ae83a39dfb8f03e8b1b88ea4a54da070063b24478d5b",
  "kind": "def",
  "lexical_name": "higherPairIndices",
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
  "slug": "higherpairindices--418e06070a6a02de5d7c5c44",
  "source": {
    "blob": "156e08e0593496c0f67d017cf4a3ca42ea97eff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 35,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variant234de866aab092c32b71a8d0564f5df75b1d6792aec250cc85a1ced7f53f1471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:418e06070a6a02de5d7c5c440efabd4ee49137ce0ac1f20b1c540896b62a98cd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variant234de866aab092c32b71a8d0564f5df75b1d6792aec250cc85a1ced7f53f1471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bfab0c20d2f9aae0286ae83a39dfb8f03e8b1b88ea4a54da070063b24478d5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def higherPairIndices (A : ℝ) : Finset HigherPowerIndex :=
  (higherPrimePowerIndices A).preimage powerIndex powerIndex_injective.injOn

/-- The exact original normalized correlation term in product coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variant234de866aab092c32b71a8d0564f5df75b1d6792aec250cc85a1ced7f53f1471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variant234de866aab092c32b71a8d0564f5df75b1d6792aec250cc85a1ced7f53f1471.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `156e08e0593496c0f67d017cf4a3ca42ea97eff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
