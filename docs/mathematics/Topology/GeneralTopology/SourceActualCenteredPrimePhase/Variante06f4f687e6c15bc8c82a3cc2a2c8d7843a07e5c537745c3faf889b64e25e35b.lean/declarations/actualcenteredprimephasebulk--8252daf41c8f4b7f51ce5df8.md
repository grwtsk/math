# actualCenteredPrimePhaseBulk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4b97b4064adbfb6e10d9c9133f5bdfcf92379ae91bd144a1beca0a98b020b7a",
  "kind": "def",
  "lexical_name": "actualCenteredPrimePhaseBulk",
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
  "slug": "actualcenteredprimephasebulk--8252daf41c8f4b7f51ce5df8",
  "source": {
    "blob": "766ce6ecd1b6a26dd15efc8688d25101c34a0c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variante06f4f687e6c15bc8c82a3cc2a2c8d7843a07e5c537745c3faf889b64e25e35b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8252daf41c8f4b7f51ce5df869d4df91a5c79770ea7225bb840b2219cd2e722e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variante06f4f687e6c15bc8c82a3cc2a2c8d7843a07e5c537745c3faf889b64e25e35b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4b97b4064adbfb6e10d9c9133f5bdfcf92379ae91bd144a1beca0a98b020b7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualCenteredPrimePhaseBulk (A c T : ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * ∫ t in -T..T,
    (actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I)).im *
        actualClosedPrimeSineComponent A c t -
      (actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I)).re *
        actualClosedPrimeCosineDeficit A c t

/-- The real cosine deficit has its actual nonnegative coefficients at every real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variante06f4f687e6c15bc8c82a3cc2a2c8d7843a07e5c537745c3faf889b64e25e35b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variante06f4f687e6c15bc8c82a3cc2a2c8d7843a07e5c537745c3faf889b64e25e35b.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `766ce6ecd1b6a26dd15efc8688d25101c34a0c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
