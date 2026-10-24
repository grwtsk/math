# higherPowerCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8127c45296a13859d7b608cd887536842dc62cd6598c69cceaf48f42d9f691d7",
  "kind": "def",
  "lexical_name": "higherPowerCoefficient",
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
  "slug": "higherpowercoefficient--0829fd2dd071541bfe01d60b",
  "source": {
    "blob": "5910af69a72a3114d884d41b135dc1dd410b97a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 103,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0829fd2dd071541bfe01d60b35e4853eaad45fb82f32fb3483931b8faff22a58",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8127c45296a13859d7b608cd887536842dc62cd6598c69cceaf48f42d9f691d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def higherPowerCoefficient (pk : Nat.Primes × ℕ) : ℝ :=
  Real.log (pk.1 : ℝ) / (Real.sqrt (pk.1 : ℝ)) ^ (pk.2 + 3)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1f57b9252eac1d33e1c7371ce19274c17f45a16d158a9349e96336f2fa3acf92.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5910af69a72a3114d884d41b135dc1dd410b97a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
